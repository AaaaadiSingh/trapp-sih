import 'dart:async';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';
import 'enhanced_location_service.dart';
import 'motion_detection_service.dart';
import 'notification_service.dart';
import 'performance_logging_service.dart';

/// Enhanced trip detection with machine learning and adaptive algorithms
@singleton
class EnhancedTripDetectionService {
  final EnhancedLocationService _locationService;
  final MotionDetectionService _motionService;
  final NotificationService _notificationService;
  final PerformanceLoggingService _performanceLogger;
  final Logger _logger = Logger();

  // Adaptive thresholds
  double _movementThreshold = 10.0; // meters
  double _speedThreshold = 0.5; // m/s
  Duration _stopDuration = const Duration(minutes: 10);
  Duration _movementDuration = const Duration(seconds: 30);

  // Machine learning parameters
  static const int _featureWindowSize = 20;
  static const double _confidenceThreshold = 0.7;
  
  // State
  TripState _currentState = TripState.idle;
  EnhancedDetectedTrip? _currentTrip;
  Position? _lastSignificantPosition;
  DateTime? _lastMovementTime;
  DateTime? _lastStopTime;
  List<LocationFeature> _locationFeatures = [];
  List<MotionFeature> _motionFeatures = [];
  StreamSubscription<EnhancedLocationData>? _locationSubscription;
  StreamSubscription<MotionData>? _motionSubscription;
  int _tripCounter = 0;
  TripClassificationModel _classificationModel = TripClassificationModel();

  // Stream controllers
  final StreamController<EnhancedTripEvent> _tripEventController =
      StreamController<EnhancedTripEvent>.broadcast();
  final StreamController<EnhancedDetectedTrip> _tripController =
      StreamController<EnhancedDetectedTrip>.broadcast();
  final StreamController<TripPrediction> _predictionController =
      StreamController<TripPrediction>.broadcast();

  // Getters
  Stream<EnhancedTripEvent> get tripEventStream => _tripEventController.stream;
  Stream<EnhancedDetectedTrip> get tripStream => _tripController.stream;
  Stream<TripPrediction> get predictionStream => _predictionController.stream;
  TripState get currentState => _currentState;
  EnhancedDetectedTrip? get currentTrip => _currentTrip;
  bool get isDetecting => _locationSubscription != null;
  int get totalTrips => _tripCounter;

  EnhancedTripDetectionService(
    this._locationService,
    this._motionService,
    this._notificationService,
    this._performanceLogger,
  );

  /// Start enhanced trip detection
  Future<Either<Failure, void>> startEnhancedTripDetection() async {
    try {
      if (_locationSubscription != null) {
        _logger.w('Enhanced trip detection is already running');
        return const Right(null);
      }

      _logger.i('Starting enhanced trip detection');
      
      // Start enhanced location tracking
      if (!_locationService.isTracking) {
        final result = await _locationService.startEnhancedTracking();
        if (result.isLeft()) {
          return result;
        }
      }

      // Start motion detection
      if (!_motionService.isDetecting) {
        final result = await _motionService.startMotionDetection();
        if (result.isLeft()) {
          return result;
        }
      }

      // Subscribe to enhanced location updates
      _locationSubscription = _locationService.locationStream.listen(
        _processEnhancedLocationUpdate,
        onError: (error) => _handleDetectionError(error),
      );

      // Subscribe to motion updates
      _motionSubscription = _motionService.motionStream.listen(
        _processMotionUpdate,
        onError: (error) => _handleDetectionError(error),
      );

      _logger.i('Enhanced trip detection started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting enhanced trip detection: $e');
      return Left(GeneralFailure(message: 'Failed to start enhanced trip detection: $e'));
    }
  }

  /// Process enhanced location updates with machine learning
  void _processEnhancedLocationUpdate(EnhancedLocationData locationData) {
    final position = locationData.position;
    final timestamp = locationData.timestamp;

    // Extract location features
    final locationFeature = _extractLocationFeature(locationData);
    _locationFeatures.add(locationFeature);

    // Maintain feature window
    if (_locationFeatures.length > _featureWindowSize) {
      _locationFeatures.removeAt(0);
    }

    // Perform trip state analysis
    _analyzeLocationForTripState(position, timestamp, locationData);

    // Log performance metrics
    _performanceLogger.logLocationUpdate(locationData);
  }

  /// Process motion updates for enhanced detection
  void _processMotionUpdate(MotionData motionData) {
    // Extract motion features
    final motionFeature = _extractMotionFeature(motionData);
    _motionFeatures.add(motionFeature);

    // Maintain feature window
    if (_motionFeatures.length > _featureWindowSize) {
      _motionFeatures.removeAt(0);
    }

    // Update adaptive thresholds based on motion patterns
    _updateAdaptiveThresholds(motionData);

    // Perform trip prediction
    _performTripPrediction();
  }

  /// Extract location features for machine learning
  LocationFeature _extractLocationFeature(EnhancedLocationData locationData) {
    final position = locationData.position;
    
    double distanceFromLast = 0.0;
    double speedChange = 0.0;
    double headingChange = 0.0;

    if (_lastSignificantPosition != null) {
      distanceFromLast = Geolocator.distanceBetween(
        _lastSignificantPosition!.latitude,
        _lastSignificantPosition!.longitude,
        position.latitude,
        position.longitude,
      );

      speedChange = (position.speed - _lastSignificantPosition!.speed).abs();
      headingChange = _calculateHeadingChange(
        _lastSignificantPosition!.heading,
        position.heading,
      );
    }

    return LocationFeature(
      latitude: position.latitude,
      longitude: position.longitude,
      speed: position.speed,
      accuracy: position.accuracy,
      heading: position.heading,
      distanceFromLast: distanceFromLast,
      speedChange: speedChange,
      headingChange: headingChange,
      confidence: locationData.confidence,
      timestamp: locationData.timestamp,
    );
  }

  /// Extract motion features for machine learning
  MotionFeature _extractMotionFeature(MotionData motionData) {
    return MotionFeature(
      acceleration: motionData.acceleration,
      speed: motionData.speed,
      pattern: motionData.pattern,
      confidence: motionData.confidence,
      isMoving: motionData.isMoving,
      timestamp: motionData.timestamp,
    );
  }

  /// Analyze location data for trip state changes
  void _analyzeLocationForTripState(
    Position position,
    DateTime timestamp,
    EnhancedLocationData locationData,
  ) {
    // Use machine learning model to classify trip state
    final prediction = _classificationModel.predictTripState(
      _locationFeatures,
      _motionFeatures,
    );

    // Apply confidence threshold
    if (prediction.confidence < _confidenceThreshold) {
      _logger.d('Low confidence prediction: ${prediction.confidence}');
      return;
    }

    // Handle state transitions based on ML prediction
    _handleStateTransition(prediction.predictedState, position, timestamp, locationData);
  }

  /// Handle trip state transitions
  void _handleStateTransition(
    TripState newState,
    Position position,
    DateTime timestamp,
    EnhancedLocationData locationData,
  ) {
    if (newState == _currentState) return;

    final previousState = _currentState;
    _currentState = newState;

    _logger.i('Trip state transition: $previousState -> $newState');

    switch (newState) {
      case TripState.idle:
        _handleIdleState(position, timestamp);
        break;
      case TripState.moving:
        _handleMovingState(position, timestamp, locationData);
        break;
      case TripState.stopped:
        _handleStoppedState(position, timestamp);
        break;
    }
  }

  /// Handle idle state
  void _handleIdleState(Position position, DateTime timestamp) {
    if (_currentTrip != null) {
      _completeTrip(position, timestamp);
    }
  }

  /// Handle moving state
  void _handleMovingState(
    Position position,
    DateTime timestamp,
    EnhancedLocationData locationData,
  ) {
    if (_currentTrip == null) {
      _startTrip(position, timestamp, locationData);
    } else {
      _updateTrip(position, timestamp, locationData);
    }
    
    _lastMovementTime = timestamp;
    _lastSignificantPosition = position;
  }

  /// Handle stopped state
  void _handleStoppedState(Position position, DateTime timestamp) {
    _lastStopTime = timestamp;
    
    if (_currentTrip != null) {
      _updateTrip(position, timestamp, null);
    }
  }

  /// Start a new trip
  void _startTrip(
    Position position,
    DateTime timestamp,
    EnhancedLocationData locationData,
  ) {
    _tripCounter++;
    
    final tripId = 'enhanced_trip_${timestamp.millisecondsSinceEpoch}';
    final tripLabel = 'Enhanced Trip $_tripCounter';

    _currentTrip = EnhancedDetectedTrip(
      id: tripId,
      label: tripLabel,
      startTime: timestamp,
      startPosition: position,
      route: [position],
      totalDistance: 0.0,
      duration: Duration.zero,
      averageSpeed: 0.0,
      maxSpeed: position.speed,
      state: _currentState,
      confidence: locationData.confidence,
      transportMode: _predictTransportMode(),
      qualityScore: _calculateTripQualityScore(locationData),
    );

    // Emit trip started event
    final event = EnhancedTripEvent(
      id: '${tripId}_started',
      timestamp: timestamp,
      position: position,
      type: TripEventType.tripStarted,
      confidence: locationData.confidence,
      metadata: {
        'tripNumber': _tripCounter,
        'tripLabel': tripLabel,
        'transportMode': _currentTrip!.transportMode.toString(),
        'qualityScore': _currentTrip!.qualityScore,
      },
    );

    _tripEventController.add(event);
    _tripController.add(_currentTrip!);

    // Send notification
    _notificationService.showTripCompletionNotification(
      tripNumber: _tripCounter,
      tripLabel: tripLabel,
    );

    _logger.i('Enhanced trip started: $tripLabel');
    _performanceLogger.logTripEvent(event);
  }

  /// Update current trip
  void _updateTrip(
    Position position,
    DateTime timestamp,
    EnhancedLocationData? locationData,
  ) {
    if (_currentTrip == null) return;

    final route = List<Position>.from(_currentTrip!.route);
    route.add(position);

    // Calculate incremental distance
    double newDistance = 0.0;
    if (route.length >= 2) {
      final lastPos = route[route.length - 2];
      newDistance = Geolocator.distanceBetween(
        lastPos.latitude,
        lastPos.longitude,
        position.latitude,
        position.longitude,
      );
    }

    final totalDistance = _currentTrip!.totalDistance + newDistance;
    final duration = timestamp.difference(_currentTrip!.startTime);
    final averageSpeed = duration.inSeconds > 0 ? totalDistance / duration.inSeconds : 0.0;
    final maxSpeed = max(_currentTrip!.maxSpeed, position.speed);

    // Update transport mode prediction
    final transportMode = _predictTransportMode();

    // Update quality score
    final qualityScore = locationData != null 
        ? _calculateTripQualityScore(locationData)
        : _currentTrip!.qualityScore;

    _currentTrip = _currentTrip!.copyWith(
      route: route,
      totalDistance: totalDistance,
      duration: duration,
      averageSpeed: averageSpeed,
      maxSpeed: maxSpeed,
      state: _currentState,
      transportMode: transportMode,
      qualityScore: qualityScore,
    );

    _tripController.add(_currentTrip!);
    _performanceLogger.logTripUpdate(_currentTrip!);
  }

  /// Complete current trip
  void _completeTrip(Position position, DateTime timestamp) {
    if (_currentTrip == null) return;

    final completedTrip = _currentTrip!.copyWith(
      endTime: timestamp,
      endPosition: position,
      state: TripState.idle,
    );

    // Emit trip completed event
    final event = EnhancedTripEvent(
      id: '${completedTrip.id}_completed',
      timestamp: timestamp,
      position: position,
      type: TripEventType.tripCompleted,
      confidence: completedTrip.confidence,
      metadata: {
        'tripId': completedTrip.id,
        'duration': completedTrip.duration.inMinutes,
        'distance': completedTrip.totalDistance.round(),
        'averageSpeed': completedTrip.averageSpeed.toStringAsFixed(1),
        'transportMode': completedTrip.transportMode.toString(),
        'qualityScore': completedTrip.qualityScore,
      },
    );

    _tripEventController.add(event);

    // Send completion notification
    _notificationService.showTripCompletionNotification(
      tripNumber: _tripCounter,
      tripLabel: completedTrip.label,
    );

    _currentTrip = null;
    _logger.i('Enhanced trip completed: ${completedTrip.id}');
    _performanceLogger.logTripEvent(event);
  }

  /// Predict transport mode using machine learning
  TransportMode _predictTransportMode() {
    if (_locationFeatures.isEmpty || _motionFeatures.isEmpty) {
      return TransportMode.unknown;
    }

    // Simple rule-based classification (can be replaced with ML model)
    final avgSpeed = _locationFeatures
        .map((f) => f.speed)
        .reduce((a, b) => a + b) / _locationFeatures.length;

    final motionPattern = _motionFeatures.last.pattern;

    if (avgSpeed < 2.0) {
      return motionPattern == MovementPattern.walking 
          ? TransportMode.walking 
          : TransportMode.unknown;
    } else if (avgSpeed < 8.0) {
      return motionPattern == MovementPattern.cycling 
          ? TransportMode.cycling 
          : TransportMode.walking;
    } else {
      return TransportMode.vehicle;
    }
  }

  /// Calculate trip quality score
  double _calculateTripQualityScore(EnhancedLocationData locationData) {
    double score = 0.5; // Base score

    // Accuracy factor
    if (locationData.position.accuracy <= 10) {
      score += 0.3;
    } else if (locationData.position.accuracy <= 20) {
      score += 0.2;
    } else {
      score += 0.1;
    }

    // Confidence factor
    score += locationData.confidence * 0.2;

    return score.clamp(0.0, 1.0);
  }

  /// Update adaptive thresholds based on motion patterns
  void _updateAdaptiveThresholds(MotionData motionData) {
    // Adjust thresholds based on detected patterns
    switch (motionData.pattern) {
      case MovementPattern.walking:
        _movementThreshold = 5.0;
        _speedThreshold = 0.3;
        break;
      case MovementPattern.cycling:
        _movementThreshold = 8.0;
        _speedThreshold = 0.8;
        break;
      case MovementPattern.vehicle:
        _movementThreshold = 15.0;
        _speedThreshold = 1.5;
        break;
      case MovementPattern.stationary:
        _movementThreshold = 10.0;
        _speedThreshold = 0.5;
        break;
    }
  }

  /// Perform trip prediction using machine learning
  void _performTripPrediction() {
    if (_locationFeatures.length < 5 || _motionFeatures.length < 5) return;

    final prediction = _classificationModel.predictTripProbability(
      _locationFeatures,
      _motionFeatures,
    );

    _predictionController.add(prediction);
  }

  /// Calculate heading change between two headings
  double _calculateHeadingChange(double heading1, double heading2) {
    double diff = (heading2 - heading1).abs();
    if (diff > 180) {
      diff = 360 - diff;
    }
    return diff;
  }

  /// Handle detection errors
  void _handleDetectionError(dynamic error) {
    _logger.e('Enhanced trip detection error: $error');
    
    if (!error.toString().contains('TimeoutException')) {
      _tripEventController.addError(error);
    }
  }

  /// Stop enhanced trip detection
  Future<void> stopEnhancedTripDetection() async {
    try {
      _logger.i('Stopping enhanced trip detection');

      await _locationSubscription?.cancel();
      await _motionSubscription?.cancel();
      
      _locationSubscription = null;
      _motionSubscription = null;

      // Complete any active trip
      if (_currentTrip != null) {
        final lastPosition = _lastSignificantPosition ?? _currentTrip!.startPosition;
        _completeTrip(lastPosition, DateTime.now());
      }

      _logger.i('Enhanced trip detection stopped');
    } catch (e) {
      _logger.e('Error stopping enhanced trip detection: $e');
    }
  }

  /// Configure detection parameters
  void configureDetection({
    double? movementThreshold,
    double? speedThreshold,
    Duration? stopDuration,
    Duration? movementDuration,
  }) {
    if (movementThreshold != null) _movementThreshold = movementThreshold;
    if (speedThreshold != null) _speedThreshold = speedThreshold;
    if (stopDuration != null) _stopDuration = stopDuration;
    if (movementDuration != null) _movementDuration = movementDuration;

    _logger.i('Enhanced trip detection parameters updated');
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing EnhancedTripDetectionService');
    stopEnhancedTripDetection();
    _tripEventController.close();
    _tripController.close();
    _predictionController.close();
  }
}

/// Enhanced detected trip with additional metadata
class EnhancedDetectedTrip {
  final String id;
  final String label;
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
  final double confidence;
  final TransportMode transportMode;
  final double qualityScore;

  const EnhancedDetectedTrip({
    required this.id,
    required this.label,
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
    required this.confidence,
    required this.transportMode,
    required this.qualityScore,
  });

  EnhancedDetectedTrip copyWith({
    String? id,
    String? label,
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
    double? confidence,
    TransportMode? transportMode,
    double? qualityScore,
  }) {
    return EnhancedDetectedTrip(
      id: id ?? this.id,
      label: label ?? this.label,
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
      confidence: confidence ?? this.confidence,
      transportMode: transportMode ?? this.transportMode,
      qualityScore: qualityScore ?? this.qualityScore,
    );
  }
}

/// Enhanced trip event with confidence and metadata
class EnhancedTripEvent {
  final String id;
  final DateTime timestamp;
  final Position position;
  final TripEventType type;
  final double confidence;
  final Map<String, dynamic> metadata;

  const EnhancedTripEvent({
    required this.id,
    required this.timestamp,
    required this.position,
    required this.type,
    required this.confidence,
    this.metadata = const {},
  });
}

/// Location feature for machine learning
class LocationFeature {
  final double latitude;
  final double longitude;
  final double speed;
  final double accuracy;
  final double heading;
  final double distanceFromLast;
  final double speedChange;
  final double headingChange;
  final double confidence;
  final DateTime timestamp;

  const LocationFeature({
    required this.latitude,
    required this.longitude,
    required this.speed,
    required this.accuracy,
    required this.heading,
    required this.distanceFromLast,
    required this.speedChange,
    required this.headingChange,
    required this.confidence,
    required this.timestamp,
  });
}

/// Motion feature for machine learning
class MotionFeature {
  final double acceleration;
  final double speed;
  final MovementPattern pattern;
  final double confidence;
  final bool isMoving;
  final DateTime timestamp;

  const MotionFeature({
    required this.acceleration,
    required this.speed,
    required this.pattern,
    required this.confidence,
    required this.isMoving,
    required this.timestamp,
  });
}

/// Trip prediction result
class TripPrediction {
  final double tripProbability;
  final TripState predictedState;
  final TransportMode predictedMode;
  final double confidence;
  final DateTime timestamp;

  const TripPrediction({
    required this.tripProbability,
    required this.predictedState,
    required this.predictedMode,
    required this.confidence,
    required this.timestamp,
  });
}

/// Simple trip classification model (can be replaced with actual ML model)
class TripClassificationModel {
  /// Predict trip state based on features
  TripPrediction predictTripState(
    List<LocationFeature> locationFeatures,
    List<MotionFeature> motionFeatures,
  ) {
    if (locationFeatures.isEmpty || motionFeatures.isEmpty) {
      return TripPrediction(
        tripProbability: 0.0,
        predictedState: TripState.idle,
        predictedMode: TransportMode.unknown,
        confidence: 0.0,
        timestamp: DateTime.now(),
      );
    }

    // Simple rule-based classification
    final avgSpeed = locationFeatures
        .map((f) => f.speed)
        .reduce((a, b) => a + b) / locationFeatures.length;
    
    final isMoving = motionFeatures.last.isMoving;
    final motionPattern = motionFeatures.last.pattern;

    TripState predictedState;
    double confidence = 0.7;

    if (isMoving && avgSpeed > 0.5) {
      predictedState = TripState.moving;
      confidence = 0.8;
    } else if (!isMoving && avgSpeed < 0.3) {
      predictedState = TripState.idle;
      confidence = 0.9;
    } else {
      predictedState = TripState.stopped;
      confidence = 0.6;
    }

    final predictedMode = _predictTransportModeFromFeatures(locationFeatures, motionFeatures);

    return TripPrediction(
      tripProbability: isMoving ? 0.8 : 0.2,
      predictedState: predictedState,
      predictedMode: predictedMode,
      confidence: confidence,
      timestamp: DateTime.now(),
    );
  }

  /// Predict trip probability
  TripPrediction predictTripProbability(
    List<LocationFeature> locationFeatures,
    List<MotionFeature> motionFeatures,
  ) {
    return predictTripState(locationFeatures, motionFeatures);
  }

  /// Predict transport mode from features
  TransportMode _predictTransportModeFromFeatures(
    List<LocationFeature> locationFeatures,
    List<MotionFeature> motionFeatures,
  ) {
    final avgSpeed = locationFeatures
        .map((f) => f.speed)
        .reduce((a, b) => a + b) / locationFeatures.length;
    
    final motionPattern = motionFeatures.last.pattern;

    if (avgSpeed < 2.0) {
      return TransportMode.walking;
    } else if (avgSpeed < 8.0) {
      return motionPattern == MovementPattern.cycling 
          ? TransportMode.cycling 
          : TransportMode.walking;
    } else {
      return TransportMode.vehicle;
    }
  }
}

/// Transport mode enumeration
enum TransportMode {
  unknown,
  walking,
  cycling,
  vehicle,
}

/// Trip state enumeration (reusing from existing code)
enum TripState {
  idle,
  moving,
  stopped,
}

/// Trip event type enumeration (reusing from existing code)
enum TripEventType {
  tripStarted,
  tripCompleted,
  tripPaused,
  tripResumed,
}