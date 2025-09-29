import 'dart:math';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'motion_detection_service.dart';

/// Sensor fusion service for combining multiple location sources
@singleton
class SensorFusionService {
  final Logger _logger = Logger();

  // Fusion weights (can be adjusted based on conditions)
  static const double _gpsWeight = 0.7;
  static const double _networkWeight = 0.3;
  static const double _motionInfluence = 0.2;

  // Kalman filter parameters
  double _processNoise = 0.1;
  double _measurementNoise = 1.0;
  double _estimationError = 1.0;
  double _kalmanGain = 0.0;

  // State variables for Kalman filtering
  double _lastLatitude = 0.0;
  double _lastLongitude = 0.0;
  double _lastVelocityLat = 0.0;
  double _lastVelocityLon = 0.0;
  DateTime? _lastUpdateTime;

  /// Fuse location data from multiple sources
  Position fuseLocationData({
    Position? gpsPosition,
    Position? networkPosition,
    MotionData? motionData,
  }) {
    _logger.d('Fusing location data from available sources');

    // If only one source is available, use it directly with filtering
    if (gpsPosition != null && networkPosition == null) {
      return _applyKalmanFilter(gpsPosition);
    }
    if (networkPosition != null && gpsPosition == null) {
      return _applyKalmanFilter(networkPosition);
    }

    // If both sources are available, perform weighted fusion
    if (gpsPosition != null && networkPosition != null) {
      return _performWeightedFusion(gpsPosition, networkPosition, motionData);
    }

    // Fallback: return last known position or create a default one
    return _createDefaultPosition();
  }

  /// Perform weighted fusion of GPS and network positions
  Position _performWeightedFusion(
    Position gpsPosition,
    Position networkPosition,
    MotionData? motionData,
  ) {
    // Calculate dynamic weights based on accuracy and motion
    final weights = _calculateDynamicWeights(gpsPosition, networkPosition, motionData);
    
    // Fuse coordinates
    final fusedLatitude = (gpsPosition.latitude * weights.gpsWeight) +
        (networkPosition.latitude * weights.networkWeight);
    final fusedLongitude = (gpsPosition.longitude * weights.gpsWeight) +
        (networkPosition.longitude * weights.networkWeight);

    // Fuse other properties
    final fusedAccuracy = _fuseAccuracy(gpsPosition, networkPosition, weights);
    final fusedAltitude = _fuseAltitude(gpsPosition, networkPosition, weights);
    final fusedSpeed = _fuseSpeed(gpsPosition, networkPosition, motionData, weights);
    final fusedHeading = _fuseHeading(gpsPosition, networkPosition, weights);

    // Create fused position
    final fusedPosition = Position(
      latitude: fusedLatitude,
      longitude: fusedLongitude,
      timestamp: DateTime.now(),
      accuracy: fusedAccuracy,
      altitude: fusedAltitude,
      altitudeAccuracy: gpsPosition.altitudeAccuracy,
      heading: fusedHeading,
      headingAccuracy: gpsPosition.headingAccuracy,
      speed: fusedSpeed,
      speedAccuracy: gpsPosition.speedAccuracy,
    );

    // Apply Kalman filter for smoothing
    return _applyKalmanFilter(fusedPosition);
  }

  /// Calculate dynamic weights based on accuracy and conditions
  FusionWeights _calculateDynamicWeights(
    Position gpsPosition,
    Position networkPosition,
    MotionData? motionData,
  ) {
    double gpsWeight = _gpsWeight;
    double networkWeight = _networkWeight;

    // Adjust weights based on accuracy
    final gpsAccuracy = gpsPosition.accuracy;
    final networkAccuracy = networkPosition.accuracy;

    if (gpsAccuracy < networkAccuracy) {
      // GPS is more accurate
      gpsWeight += 0.1;
      networkWeight -= 0.1;
    } else {
      // Network is more accurate (rare but possible indoors)
      gpsWeight -= 0.1;
      networkWeight += 0.1;
    }

    // Adjust based on motion data
    if (motionData != null) {
      if (motionData.isMoving) {
        // Prefer GPS when moving
        gpsWeight += _motionInfluence;
        networkWeight -= _motionInfluence;
      } else {
        // Network location might be more stable when stationary
        gpsWeight -= _motionInfluence * 0.5;
        networkWeight += _motionInfluence * 0.5;
      }
    }

    // Normalize weights
    final totalWeight = gpsWeight + networkWeight;
    gpsWeight /= totalWeight;
    networkWeight /= totalWeight;

    return FusionWeights(
      gpsWeight: gpsWeight.clamp(0.1, 0.9),
      networkWeight: networkWeight.clamp(0.1, 0.9),
    );
  }

  /// Fuse accuracy values
  double _fuseAccuracy(Position gpsPosition, Position networkPosition, FusionWeights weights) {
    // Use the better accuracy, weighted by confidence
    final gpsAccuracy = gpsPosition.accuracy;
    final networkAccuracy = networkPosition.accuracy;
    
    // Weighted harmonic mean for accuracy (lower is better)
    final fusedAccuracy = 1.0 / (
      (weights.gpsWeight / gpsAccuracy) + 
      (weights.networkWeight / networkAccuracy)
    );
    
    return fusedAccuracy;
  }

  /// Fuse altitude values
  double _fuseAltitude(Position gpsPosition, Position networkPosition, FusionWeights weights) {
    final gpsAltitude = gpsPosition.altitude ?? 0.0;
    final networkAltitude = networkPosition.altitude ?? 0.0;
    
    return (gpsAltitude * weights.gpsWeight) + (networkAltitude * weights.networkWeight);
  }

  /// Fuse speed values with motion data enhancement
  double _fuseSpeed(
    Position gpsPosition,
    Position networkPosition,
    MotionData? motionData,
    FusionWeights weights,
  ) {
    double fusedSpeed = (gpsPosition.speed * weights.gpsWeight) +
        (networkPosition.speed * weights.networkWeight);

    // Enhance with motion data if available
    if (motionData != null) {
      // Use motion-estimated speed as a reference
      final motionSpeed = motionData.speed;
      
      // If motion data suggests no movement but GPS shows speed, reduce it
      if (!motionData.isMoving && fusedSpeed > 1.0) {
        fusedSpeed *= 0.5; // Reduce GPS noise when stationary
      }
      
      // If motion data suggests movement but GPS shows no speed, use motion estimate
      if (motionData.isMoving && fusedSpeed < 0.5) {
        fusedSpeed = motionSpeed * 0.3; // Conservative estimate
      }
    }

    return fusedSpeed;
  }

  /// Fuse heading values
  double _fuseHeading(Position gpsPosition, Position networkPosition, FusionWeights weights) {
    final gpsHeading = gpsPosition.heading;
    final networkHeading = networkPosition.heading;
    
    // Handle circular nature of heading values
    return _fuseCircularValues(gpsHeading, networkHeading, weights);
  }

  /// Fuse circular values (like heading) properly
  double _fuseCircularValues(double value1, double value2, FusionWeights weights) {
    // Convert to unit vectors and fuse
    final x1 = cos(value1 * pi / 180);
    final y1 = sin(value1 * pi / 180);
    final x2 = cos(value2 * pi / 180);
    final y2 = sin(value2 * pi / 180);
    
    final fusedX = (x1 * weights.gpsWeight) + (x2 * weights.networkWeight);
    final fusedY = (y1 * weights.gpsWeight) + (y2 * weights.networkWeight);
    
    // Convert back to angle
    return atan2(fusedY, fusedX) * 180 / pi;
  }

  /// Apply Kalman filter for position smoothing
  Position _applyKalmanFilter(Position position) {
    final currentTime = DateTime.now();
    
    if (_lastUpdateTime == null) {
      // Initialize filter
      _lastLatitude = position.latitude;
      _lastLongitude = position.longitude;
      _lastUpdateTime = currentTime;
      return position;
    }

    // Calculate time delta
    final deltaTime = currentTime.difference(_lastUpdateTime!).inMilliseconds / 1000.0;
    
    // Predict step
    final predictedLat = _lastLatitude + (_lastVelocityLat * deltaTime);
    final predictedLon = _lastLongitude + (_lastVelocityLon * deltaTime);
    
    // Update estimation error
    _estimationError += _processNoise;
    
    // Calculate Kalman gain
    _kalmanGain = _estimationError / (_estimationError + _measurementNoise);
    
    // Update step
    final filteredLat = predictedLat + _kalmanGain * (position.latitude - predictedLat);
    final filteredLon = predictedLon + _kalmanGain * (position.longitude - predictedLon);
    
    // Update velocity estimates
    _lastVelocityLat = (filteredLat - _lastLatitude) / deltaTime;
    _lastVelocityLon = (filteredLon - _lastLongitude) / deltaTime;
    
    // Update state
    _lastLatitude = filteredLat;
    _lastLongitude = filteredLon;
    _lastUpdateTime = currentTime;
    _estimationError *= (1 - _kalmanGain);

    // Create filtered position
    return Position(
      latitude: filteredLat,
      longitude: filteredLon,
      timestamp: position.timestamp,
      accuracy: position.accuracy * 0.8, // Slightly improve accuracy estimate
      altitude: position.altitude,
      altitudeAccuracy: position.altitudeAccuracy,
      heading: position.heading,
      headingAccuracy: position.headingAccuracy,
      speed: position.speed,
      speedAccuracy: position.speedAccuracy,
    );
  }

  /// Create a default position when no sources are available
  Position _createDefaultPosition() {
    return Position(
      latitude: _lastLatitude,
      longitude: _lastLongitude,
      timestamp: DateTime.now(),
      accuracy: 1000.0, // High uncertainty
      altitude: 0.0,
      altitudeAccuracy: 1000.0,
      heading: 0.0,
      headingAccuracy: 360.0,
      speed: 0.0,
      speedAccuracy: 10.0,
    );
  }

  /// Adjust filter parameters for different scenarios
  void adjustFilterParameters({
    double? processNoise,
    double? measurementNoise,
  }) {
    if (processNoise != null) {
      _processNoise = processNoise;
      _logger.i('Process noise adjusted to: $processNoise');
    }
    
    if (measurementNoise != null) {
      _measurementNoise = measurementNoise;
      _logger.i('Measurement noise adjusted to: $measurementNoise');
    }
  }

  /// Reset filter state
  void resetFilter() {
    _lastLatitude = 0.0;
    _lastLongitude = 0.0;
    _lastVelocityLat = 0.0;
    _lastVelocityLon = 0.0;
    _lastUpdateTime = null;
    _estimationError = 1.0;
    _logger.i('Kalman filter reset');
  }
}

/// Fusion weights for combining different location sources
class FusionWeights {
  final double gpsWeight;
  final double networkWeight;

  const FusionWeights({
    required this.gpsWeight,
    required this.networkWeight,
  });
}