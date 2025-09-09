import 'dart:async';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';
import 'location_service.dart';

enum TripState {
  idle,
  moving,
  stopped,
}

class TripEvent {
  final String id;
  final DateTime timestamp;
  final Position position;
  final TripEventType type;
  final Map<String, dynamic> metadata;

  TripEvent({
    required this.id,
    required this.timestamp,
    required this.position,
    required this.type,
    this.metadata = const {},
  });
}

enum TripEventType {
  tripStarted,
  tripEnded,
  significantLocationChange,
  speedChange,
}

class DetectedTrip {
  final String id;
  final DateTime startTime;
  final DateTime? endTime;
  final Position startPosition;
  final Position? endPosition;
  final List<Position> route;
  final double totalDistance;
  final Duration duration;
  final double averageSpeed;
  final double maxSpeed;
  final TripState state;

  DetectedTrip({
    required this.id,
    required this.startTime,
    this.endTime,
    required this.startPosition,
    this.endPosition,
    required this.route,
    required this.totalDistance,
    required this.duration,
    required this.averageSpeed,
    required this.maxSpeed,
    required this.state,
  });

  DetectedTrip copyWith({
    String? id,
    DateTime? startTime,
    DateTime? endTime,
    Position? startPosition,
    Position? endPosition,
    List<Position>? route,
    double? totalDistance,
    Duration? duration,
    double? averageSpeed,
    double? maxSpeed,
    TripState? state,
  }) {
    return DetectedTrip(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      startPosition: startPosition ?? this.startPosition,
      endPosition: endPosition ?? this.endPosition,
      route: route ?? this.route,
      totalDistance: totalDistance ?? this.totalDistance,
      duration: duration ?? this.duration,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      maxSpeed: maxSpeed ?? this.maxSpeed,
      state: state ?? this.state,
    );
  }
}

@singleton
class TripDetectionService {
  final LocationService _locationService;
  final Logger _logger = Logger();

  // Configuration
  static const double _movementThreshold = 10.0; // meters
  static const double _speedThreshold = 1.0; // m/s (3.6 km/h)
  static const Duration _stopDuration = Duration(minutes: 3);
  static const Duration _movementDuration = Duration(seconds: 30);
  static const int _maxRoutePoints = 1000;

  // State
  TripState _currentState = TripState.idle;
  DetectedTrip? _currentTrip;
  Position? _lastSignificantPosition;
  DateTime? _lastMovementTime;
  DateTime? _lastStopTime;
  List<Position> _recentPositions = [];
  StreamSubscription<Position>? _locationSubscription;

  // Stream controllers
  final StreamController<TripEvent> _tripEventController = StreamController<TripEvent>.broadcast();
  final StreamController<DetectedTrip> _tripController = StreamController<DetectedTrip>.broadcast();

  // Getters
  Stream<TripEvent> get tripEventStream => _tripEventController.stream;
  Stream<DetectedTrip> get tripStream => _tripController.stream;
  TripState get currentState => _currentState;
  DetectedTrip? get currentTrip => _currentTrip;
  bool get isDetecting => _locationSubscription != null;

  TripDetectionService(this._locationService);

  /// Start trip detection
  Future<Either<Failure, void>> startTripDetection() async {
    try {
      if (_locationSubscription != null) {
        _logger.w('Trip detection is already running');
        return const Right(null);
      }

      _logger.i('Starting trip detection');
      
      // Start location tracking if not already started
      if (!_locationService.isTracking) {
        final result = await _locationService.startLocationTracking();
        if (result.isLeft()) {
          return result;
        }
      }

      // Subscribe to location updates
      _locationSubscription = _locationService.locationStream.listen(
        _processLocationUpdate,
        onError: (error) {
          _logger.e('Trip detection error: $error');
          _tripEventController.addError(error);
        },
      );

      _logger.i('Trip detection started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting trip detection: $e');
      return Left(GeneralFailure(message: 'Failed to start trip detection: $e'));
    }
  }

  /// Stop trip detection
  Future<void> stopTripDetection() async {
    try {
      _logger.i('Stopping trip detection');
      
      await _locationSubscription?.cancel();
      _locationSubscription = null;
      
      // End current trip if active
      if (_currentTrip != null && _currentTrip!.state != TripState.idle) {
        await _endCurrentTrip();
      }
      
      _resetState();
      _logger.i('Trip detection stopped');
    } catch (e) {
      _logger.e('Error stopping trip detection: $e');
    }
  }

  /// Process location update for trip detection
  Future<void> _processLocationUpdate(Position position) async {
    try {
      _recentPositions.add(position);
      
      // Keep only recent positions
      if (_recentPositions.length > 10) {
        _recentPositions.removeAt(0);
      }

      final now = DateTime.now();
      final isMoving = _isSignificantMovement(position);
      final speed = position.speed;

      _logger.d('Processing location: lat=${position.latitude}, lng=${position.longitude}, speed=${speed}m/s, moving=$isMoving');

      switch (_currentState) {
        case TripState.idle:
          if (isMoving && speed > _speedThreshold) {
            _startTrip(position, now);
          }
          break;

        case TripState.moving:
          if (_currentTrip != null) {
            _updateCurrentTrip(position, now);
            
            if (!isMoving || speed < _speedThreshold) {
              _lastStopTime = now;
              _currentState = TripState.stopped;
              _logger.d('Trip state changed to stopped');
            } else {
              _lastMovementTime = now;
            }
          }
          break;

        case TripState.stopped:
          if (_currentTrip != null) {
            if (isMoving && speed > _speedThreshold) {
              _currentState = TripState.moving;
              _lastMovementTime = now;
              _lastStopTime = null;
              _logger.d('Trip state changed back to moving');
            } else if (_lastStopTime != null && 
                      now.difference(_lastStopTime!) > _stopDuration) {
              await _endCurrentTrip();
            }
            
            if (_currentTrip != null) {
              _updateCurrentTrip(position, now);
            }
          }
          break;
      }

      _lastSignificantPosition = position;
    } catch (e) {
      _logger.e('Error processing location update: $e');
    }
  }

  /// Check if there's significant movement
  bool _isSignificantMovement(Position position) {
    if (_lastSignificantPosition == null) return true;
    
    final distance = Geolocator.distanceBetween(
      _lastSignificantPosition!.latitude,
      _lastSignificantPosition!.longitude,
      position.latitude,
      position.longitude,
    );
    
    return distance > _movementThreshold;
  }

  /// Start a new trip
  void _startTrip(Position startPosition, DateTime startTime) {
    final tripId = 'trip_${startTime.millisecondsSinceEpoch}';
    
    _currentTrip = DetectedTrip(
      id: tripId,
      startTime: startTime,
      startPosition: startPosition,
      route: [startPosition],
      totalDistance: 0.0,
      duration: Duration.zero,
      averageSpeed: 0.0,
      maxSpeed: startPosition.speed,
      state: TripState.moving,
    );
    
    _currentState = TripState.moving;
    _lastMovementTime = startTime;
    _lastStopTime = null;
    
    _logger.i('Trip started: $tripId');
    
    // Emit trip started event
    _tripEventController.add(TripEvent(
      id: tripId,
      timestamp: startTime,
      position: startPosition,
      type: TripEventType.tripStarted,
      metadata: {'speed': startPosition.speed},
    ));
    
    _tripController.add(_currentTrip!);
  }

  /// Update current trip with new position
  void _updateCurrentTrip(Position position, DateTime timestamp) {
    if (_currentTrip == null) return;
    
    final route = List<Position>.from(_currentTrip!.route);
    route.add(position);
    
    // Limit route points to prevent memory issues
    if (route.length > _maxRoutePoints) {
      route.removeAt(0);
    }
    
    // Calculate total distance
    double totalDistance = 0.0;
    for (int i = 1; i < route.length; i++) {
      totalDistance += Geolocator.distanceBetween(
        route[i - 1].latitude,
        route[i - 1].longitude,
        route[i].latitude,
        route[i].longitude,
      );
    }
    
    // Calculate duration and speeds
    final duration = timestamp.difference(_currentTrip!.startTime);
    final averageSpeed = duration.inSeconds > 0 ? totalDistance / duration.inSeconds : 0.0;
    final maxSpeed = max(_currentTrip!.maxSpeed, position.speed);
    
    _currentTrip = _currentTrip!.copyWith(
      route: route,
      totalDistance: totalDistance,
      duration: duration,
      averageSpeed: averageSpeed,
      maxSpeed: maxSpeed,
      state: _currentState,
    );
    
    // Emit significant location change event
    if (_isSignificantMovement(position)) {
      _tripEventController.add(TripEvent(
        id: _currentTrip!.id,
        timestamp: timestamp,
        position: position,
        type: TripEventType.significantLocationChange,
        metadata: {
          'distance': totalDistance,
          'duration': duration.inSeconds,
          'speed': position.speed,
        },
      ));
    }
    
    _tripController.add(_currentTrip!);
  }

  /// End current trip
  Future<void> _endCurrentTrip() async {
    if (_currentTrip == null) return;
    
    final endTime = DateTime.now();
    final endPosition = _currentTrip!.route.isNotEmpty ? _currentTrip!.route.last : _currentTrip!.startPosition;
    
    _currentTrip = _currentTrip!.copyWith(
      endTime: endTime,
      endPosition: endPosition,
      state: TripState.idle,
    );
    
    _logger.i('Trip ended: ${_currentTrip!.id}, distance: ${_currentTrip!.totalDistance.toStringAsFixed(2)}m, duration: ${_currentTrip!.duration.inMinutes}min');
    
    // Emit trip ended event
    _tripEventController.add(TripEvent(
      id: _currentTrip!.id,
      timestamp: endTime,
      position: endPosition,
      type: TripEventType.tripEnded,
      metadata: {
        'totalDistance': _currentTrip!.totalDistance,
        'duration': _currentTrip!.duration.inSeconds,
        'averageSpeed': _currentTrip!.averageSpeed,
        'maxSpeed': _currentTrip!.maxSpeed,
      },
    ));
    
    _tripController.add(_currentTrip!);
    
    // Reset state
    _currentTrip = null;
    _currentState = TripState.idle;
    _lastMovementTime = null;
    _lastStopTime = null;
  }

  /// Reset internal state
  void _resetState() {
    _currentState = TripState.idle;
    _currentTrip = null;
    _lastSignificantPosition = null;
    _lastMovementTime = null;
    _lastStopTime = null;
    _recentPositions.clear();
  }

  /// Get trip statistics
  Map<String, dynamic> getTripStatistics() {
    if (_currentTrip == null) {
      return {
        'isActive': false,
        'totalDistance': 0.0,
        'duration': 0,
        'averageSpeed': 0.0,
        'maxSpeed': 0.0,
      };
    }
    
    return {
      'isActive': true,
      'tripId': _currentTrip!.id,
      'totalDistance': _currentTrip!.totalDistance,
      'duration': _currentTrip!.duration.inSeconds,
      'averageSpeed': _currentTrip!.averageSpeed,
      'maxSpeed': _currentTrip!.maxSpeed,
      'routePoints': _currentTrip!.route.length,
      'state': _currentState.toString(),
    };
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing TripDetectionService');
    stopTripDetection();
    _tripEventController.close();
    _tripController.close();
  }
}