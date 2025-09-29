import 'dart:async';
import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';
import 'motion_detection_service.dart';
import 'sensor_fusion_service.dart';

/// Enhanced location service with multiple positioning sources and sensor fusion
@singleton
class EnhancedLocationService {
  final Logger _logger = Logger();
  final MotionDetectionService _motionService;
  final SensorFusionService _sensorFusion;

  // Configuration
  static const Duration _highAccuracyInterval = Duration(seconds: 5);
  static const Duration _mediumAccuracyInterval = Duration(seconds: 15);
  static const Duration _lowAccuracyInterval = Duration(seconds: 30);
  static const Duration _batteryOptimizationDelay = Duration(minutes: 30);

  // State
  StreamSubscription<Position>? _gpsStream;
  StreamSubscription<Position>? _networkStream;
  StreamSubscription<MotionData>? _motionStream;
  Position? _lastKnownPosition;
  Position? _lastGpsPosition;
  Position? _lastNetworkPosition;
  bool _isTracking = false;
  bool _hasLocationConsent = false;
  LocationAccuracyMode _currentAccuracyMode = LocationAccuracyMode.high;
  DateTime? _lastMovementTime;
  bool _batteryOptimizationActive = false;

  // Stream controllers
  final StreamController<EnhancedLocationData> _locationController =
      StreamController<EnhancedLocationData>.broadcast();
  final StreamController<LocationQualityMetrics> _qualityController =
      StreamController<LocationQualityMetrics>.broadcast();

  // Getters
  Stream<EnhancedLocationData> get locationStream => _locationController.stream;
  Stream<LocationQualityMetrics> get qualityStream => _qualityController.stream;
  bool get isTracking => _isTracking;
  bool get hasLocationConsent => _hasLocationConsent;
  Position? get lastKnownPosition => _lastKnownPosition;
  LocationAccuracyMode get currentAccuracyMode => _currentAccuracyMode;

  EnhancedLocationService(this._motionService, this._sensorFusion);

  /// Request location permission with enhanced checks
  Future<Either<Failure, bool>> requestLocationPermission() async {
    try {
      _logger.i('Requesting enhanced location permissions');

      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _logger.w('Location services are disabled');
        return const Left(
          PermissionFailure(
            message: 'Location services are disabled. Please enable location services.',
          ),
        );
      }

      // Check current permission status
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          _logger.w('Location permission denied');
          return const Left(
            PermissionFailure(message: 'Location permission denied'),
          );
        }
      }

      if (permission == LocationPermission.deniedForever) {
        _logger.w('Location permission denied forever');
        return const Left(
          PermissionFailure(
            message: 'Location permissions are permanently denied. Please enable them in app settings.',
          ),
        );
      }

      _hasLocationConsent = true;
      _logger.i('Enhanced location permissions granted');
      return const Right(true);
    } catch (e) {
      _logger.e('Error requesting location permission: $e');
      return Left(
        GeneralFailure(message: 'Failed to request location permission: $e'),
      );
    }
  }

  /// Start enhanced location tracking with multiple sources
  Future<Either<Failure, void>> startEnhancedTracking() async {
    try {
      if (!_hasLocationConsent) {
        final permissionResult = await requestLocationPermission();
        if (permissionResult.isLeft()) {
          return permissionResult.fold(
            (failure) => Left(failure),
            (_) => const Left(
              PermissionFailure(message: 'Permission not granted'),
            ),
          );
        }
      }

      if (_isTracking) {
        _logger.w('Enhanced location tracking is already active');
        return const Right(null);
      }

      _logger.i('Starting enhanced location tracking');

      // Start motion detection for adaptive accuracy
      await _motionService.startMotionDetection();
      _motionStream = _motionService.motionStream.listen(_handleMotionUpdate);

      // Start GPS tracking
      await _startGpsTracking();

      // Start network-based location tracking
      await _startNetworkTracking();

      _isTracking = true;
      _logger.i('Enhanced location tracking started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting enhanced location tracking: $e');
      return Left(
        GeneralFailure(message: 'Failed to start enhanced location tracking: $e'),
      );
    }
  }

  /// Start GPS tracking with adaptive settings
  Future<void> _startGpsTracking() async {
    final settings = _getLocationSettings(LocationSource.gps);
    
    _gpsStream = Geolocator.getPositionStream(
      locationSettings: settings,
    ).listen(
      (position) => _handleGpsUpdate(position),
      onError: (error) => _handleLocationError(error, LocationSource.gps),
    );
  }

  /// Start network-based location tracking
  Future<void> _startNetworkTracking() async {
    final settings = _getLocationSettings(LocationSource.network);
    
    _networkStream = Geolocator.getPositionStream(
      locationSettings: settings,
    ).listen(
      (position) => _handleNetworkUpdate(position),
      onError: (error) => _handleLocationError(error, LocationSource.network),
    );
  }

  /// Get location settings based on source and current accuracy mode
  LocationSettings _getLocationSettings(LocationSource source) {
    LocationAccuracy accuracy;
    Duration interval;
    int distanceFilter;

    switch (_currentAccuracyMode) {
      case LocationAccuracyMode.high:
        accuracy = source == LocationSource.gps 
            ? LocationAccuracy.best 
            : LocationAccuracy.high;
        interval = _highAccuracyInterval;
        distanceFilter = 5;
        break;
      case LocationAccuracyMode.medium:
        accuracy = LocationAccuracy.high;
        interval = _mediumAccuracyInterval;
        distanceFilter = 10;
        break;
      case LocationAccuracyMode.low:
        accuracy = LocationAccuracy.medium;
        interval = _lowAccuracyInterval;
        distanceFilter = 20;
        break;
    }

    return LocationSettings(
      accuracy: accuracy,
      distanceFilter: distanceFilter,
      timeLimit: const Duration(minutes: 2),
    );
  }

  /// Handle GPS position updates
  void _handleGpsUpdate(Position position) {
    _lastGpsPosition = position;
    _processLocationUpdate(position, LocationSource.gps);
  }

  /// Handle network position updates
  void _handleNetworkUpdate(Position position) {
    _lastNetworkPosition = position;
    _processLocationUpdate(position, LocationSource.network);
  }

  /// Handle motion sensor updates for adaptive accuracy
  void _handleMotionUpdate(MotionData motionData) {
    _lastMovementTime = DateTime.now();
    
    // Adjust accuracy mode based on motion
    final newMode = _determineAccuracyMode(motionData);
    if (newMode != _currentAccuracyMode) {
      _updateAccuracyMode(newMode);
    }

    // Reset battery optimization if movement detected
    if (motionData.isMoving && _batteryOptimizationActive) {
      _batteryOptimizationActive = false;
      _updateAccuracyMode(LocationAccuracyMode.high);
      _logger.i('Movement detected - disabling battery optimization');
    }
  }

  /// Determine optimal accuracy mode based on motion data
  LocationAccuracyMode _determineAccuracyMode(MotionData motionData) {
    if (motionData.isMoving) {
      // High accuracy for moving objects
      if (motionData.speed > 5.0) { // Fast movement (>18 km/h)
        return LocationAccuracyMode.high;
      } else if (motionData.speed > 1.0) { // Moderate movement (>3.6 km/h)
        return LocationAccuracyMode.medium;
      }
    }
    
    // Check for prolonged inactivity
    if (_lastMovementTime != null) {
      final inactivityDuration = DateTime.now().difference(_lastMovementTime!);
      if (inactivityDuration > _batteryOptimizationDelay) {
        _batteryOptimizationActive = true;
        return LocationAccuracyMode.low;
      }
    }

    return LocationAccuracyMode.medium;
  }

  /// Update accuracy mode and restart tracking with new settings
  void _updateAccuracyMode(LocationAccuracyMode newMode) {
    if (newMode == _currentAccuracyMode) return;

    _currentAccuracyMode = newMode;
    _logger.i('Updating accuracy mode to: $newMode');

    // Restart tracking with new settings
    if (_isTracking) {
      _restartTracking();
    }
  }

  /// Restart tracking with updated settings
  Future<void> _restartTracking() async {
    await _gpsStream?.cancel();
    await _networkStream?.cancel();
    
    await _startGpsTracking();
    await _startNetworkTracking();
  }

  /// Process location update with sensor fusion
  void _processLocationUpdate(Position position, LocationSource source) {
    // Apply sensor fusion to improve accuracy
    final fusedPosition = _sensorFusion.fuseLocationData(
      gpsPosition: source == LocationSource.gps ? position : _lastGpsPosition,
      networkPosition: source == LocationSource.network ? position : _lastNetworkPosition,
      motionData: _motionService.currentMotionData,
    );

    _lastKnownPosition = fusedPosition;

    // Create enhanced location data
    final enhancedData = EnhancedLocationData(
      position: fusedPosition,
      source: source,
      accuracyMode: _currentAccuracyMode,
      timestamp: DateTime.now(),
      confidence: _calculateConfidence(fusedPosition, source),
      batteryOptimized: _batteryOptimizationActive,
    );

    // Emit location update
    _locationController.add(enhancedData);

    // Calculate and emit quality metrics
    final qualityMetrics = _calculateQualityMetrics(enhancedData);
    _qualityController.add(qualityMetrics);

    _logger.d(
      'Enhanced location update: ${fusedPosition.latitude}, ${fusedPosition.longitude} '
      '(source: $source, accuracy: ${fusedPosition.accuracy}m, confidence: ${enhancedData.confidence})',
    );
  }

  /// Calculate confidence score for location data
  double _calculateConfidence(Position position, LocationSource source) {
    double confidence = 0.5; // Base confidence

    // Accuracy factor (better accuracy = higher confidence)
    if (position.accuracy <= 5) {
      confidence += 0.4;
    } else if (position.accuracy <= 10) {
      confidence += 0.3;
    } else if (position.accuracy <= 20) {
      confidence += 0.2;
    } else {
      confidence += 0.1;
    }

    // Source factor
    if (source == LocationSource.gps) {
      confidence += 0.1;
    }

    return confidence.clamp(0.0, 1.0);
  }

  /// Calculate location quality metrics
  LocationQualityMetrics _calculateQualityMetrics(EnhancedLocationData data) {
    return LocationQualityMetrics(
      accuracy: data.position.accuracy,
      confidence: data.confidence,
      source: data.source,
      timestamp: data.timestamp,
      batteryOptimized: data.batteryOptimized,
      gpsAvailable: _lastGpsPosition != null,
      networkAvailable: _lastNetworkPosition != null,
    );
  }

  /// Handle location errors
  void _handleLocationError(dynamic error, LocationSource source) {
    _logger.e('Location error from $source: $error');
    
    if (error.toString().contains('TimeoutException')) {
      _logger.w('GPS timeout from $source - continuing with available data');
    } else {
      _locationController.addError(error);
    }
  }

  /// Set configurable accuracy mode
  void setAccuracyMode(LocationAccuracyMode mode) {
    _updateAccuracyMode(mode);
  }

  /// Stop enhanced location tracking
  Future<void> stopEnhancedTracking() async {
    try {
      _logger.i('Stopping enhanced location tracking');

      await _gpsStream?.cancel();
      await _networkStream?.cancel();
      await _motionStream?.cancel();
      
      _gpsStream = null;
      _networkStream = null;
      _motionStream = null;
      
      await _motionService.stopMotionDetection();
      
      _isTracking = false;
      _batteryOptimizationActive = false;

      _logger.i('Enhanced location tracking stopped');
    } catch (e) {
      _logger.e('Error stopping enhanced location tracking: $e');
    }
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing EnhancedLocationService');
    stopEnhancedTracking();
    _locationController.close();
    _qualityController.close();
  }
}

/// Enhanced location data with additional metadata
class EnhancedLocationData {
  final Position position;
  final LocationSource source;
  final LocationAccuracyMode accuracyMode;
  final DateTime timestamp;
  final double confidence;
  final bool batteryOptimized;

  const EnhancedLocationData({
    required this.position,
    required this.source,
    required this.accuracyMode,
    required this.timestamp,
    required this.confidence,
    required this.batteryOptimized,
  });
}

/// Location quality metrics for performance analysis
class LocationQualityMetrics {
  final double accuracy;
  final double confidence;
  final LocationSource source;
  final DateTime timestamp;
  final bool batteryOptimized;
  final bool gpsAvailable;
  final bool networkAvailable;

  const LocationQualityMetrics({
    required this.accuracy,
    required this.confidence,
    required this.source,
    required this.timestamp,
    required this.batteryOptimized,
    required this.gpsAvailable,
    required this.networkAvailable,
  });
}

/// Location source enumeration
enum LocationSource {
  gps,
  network,
  fused,
}

/// Location accuracy modes
enum LocationAccuracyMode {
  high,
  medium,
  low,
}