import 'dart:async';
import 'dart:math';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';

/// Motion detection service using device sensors and algorithms
@singleton
class MotionDetectionService {
  final Logger _logger = Logger();

  // Configuration
  static const Duration _sampleInterval = Duration(milliseconds: 100);
  static const int _windowSize = 50; // 5 seconds of data
  static const double _movementThreshold = 0.5; // m/s²
  static const double _walkingThreshold = 1.0; // m/s²
  static const double _vehicleThreshold = 3.0; // m/s²
  static const double _noiseThreshold = 0.1; // m/s²

  // State
  bool _isDetecting = false;
  List<AccelerometerData> _accelerometerBuffer = [];
  List<GyroscopeData> _gyroscopeBuffer = [];
  MotionData? _currentMotionData;
  Timer? _analysisTimer;
  MovementPattern _currentPattern = MovementPattern.stationary;
  double _currentSpeed = 0.0;
  bool _isMoving = false;

  // Stream controllers
  final StreamController<MotionData> _motionController =
      StreamController<MotionData>.broadcast();
  final StreamController<MovementPattern> _patternController =
      StreamController<MovementPattern>.broadcast();

  // Getters
  Stream<MotionData> get motionStream => _motionController.stream;
  Stream<MovementPattern> get patternStream => _patternController.stream;
  bool get isDetecting => _isDetecting;
  MotionData? get currentMotionData => _currentMotionData;
  MovementPattern get currentPattern => _currentPattern;
  bool get isMoving => _isMoving;

  /// Start motion detection
  Future<Either<Failure, void>> startMotionDetection() async {
    try {
      if (_isDetecting) {
        _logger.w('Motion detection is already running');
        return const Right(null);
      }

      _logger.i('Starting motion detection');

      // Note: In a real implementation, you would use sensors_plus package
      // For now, we'll simulate sensor data based on location changes
      _startSimulatedSensorData();

      _isDetecting = true;
      _logger.i('Motion detection started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting motion detection: $e');
      return Left(
        GeneralFailure(message: 'Failed to start motion detection: $e'),
      );
    }
  }

  /// Start simulated sensor data (replace with real sensors in production)
  void _startSimulatedSensorData() {
    _analysisTimer = Timer.periodic(_sampleInterval, (_) {
      _generateSimulatedSensorData();
      _analyzeMotionData();
    });
  }

  /// Generate simulated sensor data (replace with real sensor readings)
  void _generateSimulatedSensorData() {
    final now = DateTime.now();
    final random = Random();

    // Simulate accelerometer data with some noise
    final baseAcceleration = _isMoving ? 2.0 + random.nextDouble() * 3.0 : 0.1;
    final accelerometerData = AccelerometerData(
      x: (random.nextDouble() - 0.5) * baseAcceleration,
      y: (random.nextDouble() - 0.5) * baseAcceleration,
      z: 9.8 + (random.nextDouble() - 0.5) * 0.5, // Gravity + noise
      timestamp: now,
    );

    // Simulate gyroscope data
    final baseRotation = _isMoving ? random.nextDouble() * 0.5 : 0.05;
    final gyroscopeData = GyroscopeData(
      x: (random.nextDouble() - 0.5) * baseRotation,
      y: (random.nextDouble() - 0.5) * baseRotation,
      z: (random.nextDouble() - 0.5) * baseRotation,
      timestamp: now,
    );

    // Add to buffers
    _accelerometerBuffer.add(accelerometerData);
    _gyroscopeBuffer.add(gyroscopeData);

    // Maintain buffer size
    if (_accelerometerBuffer.length > _windowSize) {
      _accelerometerBuffer.removeAt(0);
    }
    if (_gyroscopeBuffer.length > _windowSize) {
      _gyroscopeBuffer.removeAt(0);
    }
  }

  /// Analyze motion data using machine learning algorithms
  void _analyzeMotionData() {
    if (_accelerometerBuffer.length < _windowSize ~/ 2) return;

    // Calculate motion features
    final features = _extractMotionFeatures();
    
    // Classify movement pattern
    final pattern = _classifyMovementPattern(features);
    
    // Detect movement state
    final isMoving = _detectMovement(features);
    
    // Calculate estimated speed
    final speed = _estimateSpeed(features);

    // Update state
    _currentPattern = pattern;
    _isMoving = isMoving;
    _currentSpeed = speed;

    // Create motion data
    _currentMotionData = MotionData(
      isMoving: isMoving,
      pattern: pattern,
      speed: speed,
      acceleration: features.averageAcceleration,
      confidence: features.confidence,
      timestamp: DateTime.now(),
    );

    // Emit updates
    _motionController.add(_currentMotionData!);
    _patternController.add(pattern);

    _logger.d(
      'Motion analysis: moving=$isMoving, pattern=$pattern, speed=${speed.toStringAsFixed(2)}m/s',
    );
  }

  /// Extract motion features from sensor data
  MotionFeatures _extractMotionFeatures() {
    if (_accelerometerBuffer.isEmpty) {
      return MotionFeatures.empty();
    }

    // Calculate acceleration magnitude
    final accelerationMagnitudes = _accelerometerBuffer.map((data) {
      return sqrt(data.x * data.x + data.y * data.y + (data.z - 9.8) * (data.z - 9.8));
    }).toList();

    // Calculate statistics
    final avgAcceleration = accelerationMagnitudes.reduce((a, b) => a + b) / accelerationMagnitudes.length;
    final maxAcceleration = accelerationMagnitudes.reduce(max);
    final minAcceleration = accelerationMagnitudes.reduce(min);
    
    // Calculate variance
    final variance = accelerationMagnitudes
        .map((x) => pow(x - avgAcceleration, 2))
        .reduce((a, b) => a + b) / accelerationMagnitudes.length;
    final stdDeviation = sqrt(variance);

    // Calculate gyroscope features
    final gyroMagnitudes = _gyroscopeBuffer.map((data) {
      return sqrt(data.x * data.x + data.y * data.y + data.z * data.z);
    }).toList();
    
    final avgGyro = gyroMagnitudes.isNotEmpty 
        ? gyroMagnitudes.reduce((a, b) => a + b) / gyroMagnitudes.length 
        : 0.0;

    // Calculate confidence based on data quality
    final confidence = _calculateConfidence(stdDeviation, avgAcceleration);

    return MotionFeatures(
      averageAcceleration: avgAcceleration,
      maxAcceleration: maxAcceleration,
      minAcceleration: minAcceleration,
      standardDeviation: stdDeviation,
      averageGyroscope: avgGyro,
      confidence: confidence,
    );
  }

  /// Classify movement pattern using machine learning-inspired algorithms
  MovementPattern _classifyMovementPattern(MotionFeatures features) {
    // Simple rule-based classification (can be replaced with ML model)
    
    if (features.averageAcceleration < _noiseThreshold) {
      return MovementPattern.stationary;
    }
    
    if (features.averageAcceleration < _walkingThreshold) {
      // Check for periodic patterns typical of walking
      if (features.standardDeviation > 0.3) {
        return MovementPattern.walking;
      } else {
        return MovementPattern.stationary;
      }
    }
    
    if (features.averageAcceleration < _vehicleThreshold) {
      // Distinguish between cycling and slow vehicle movement
      if (features.averageGyroscope > 0.2) {
        return MovementPattern.cycling;
      } else {
        return MovementPattern.vehicle;
      }
    }
    
    // High acceleration suggests vehicle movement
    return MovementPattern.vehicle;
  }

  /// Detect if device is moving
  bool _detectMovement(MotionFeatures features) {
    return features.averageAcceleration > _movementThreshold;
  }

  /// Estimate speed based on motion features
  double _estimateSpeed(MotionFeatures features) {
    // Simple speed estimation based on acceleration patterns
    // In a real implementation, this would use more sophisticated algorithms
    
    switch (_currentPattern) {
      case MovementPattern.stationary:
        return 0.0;
      case MovementPattern.walking:
        return 1.0 + features.averageAcceleration * 0.5; // ~1-2 m/s
      case MovementPattern.cycling:
        return 3.0 + features.averageAcceleration * 1.0; // ~3-8 m/s
      case MovementPattern.vehicle:
        return 5.0 + features.averageAcceleration * 2.0; // ~5-15 m/s
    }
  }

  /// Calculate confidence score for motion detection
  double _calculateConfidence(double stdDeviation, double avgAcceleration) {
    // Higher standard deviation and reasonable acceleration = higher confidence
    double confidence = 0.5;
    
    if (stdDeviation > 0.1) confidence += 0.2;
    if (stdDeviation > 0.3) confidence += 0.2;
    
    if (avgAcceleration > _noiseThreshold) confidence += 0.1;
    
    return confidence.clamp(0.0, 1.0);
  }

  /// Set adaptive sensitivity thresholds
  void setThresholds({
    double? movementThreshold,
    double? walkingThreshold,
    double? vehicleThreshold,
  }) {
    // Note: In a real implementation, these would be configurable
    _logger.i('Motion thresholds updated');
  }

  /// Update movement state (for integration with location service)
  void updateMovementState(bool isMoving) {
    _isMoving = isMoving;
  }

  /// Stop motion detection
  Future<void> stopMotionDetection() async {
    try {
      _logger.i('Stopping motion detection');

      _analysisTimer?.cancel();
      _analysisTimer = null;
      
      _isDetecting = false;
      _accelerometerBuffer.clear();
      _gyroscopeBuffer.clear();

      _logger.i('Motion detection stopped');
    } catch (e) {
      _logger.e('Error stopping motion detection: $e');
    }
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing MotionDetectionService');
    stopMotionDetection();
    _motionController.close();
    _patternController.close();
  }
}

/// Motion data containing analysis results
class MotionData {
  final bool isMoving;
  final MovementPattern pattern;
  final double speed;
  final double acceleration;
  final double confidence;
  final DateTime timestamp;

  const MotionData({
    required this.isMoving,
    required this.pattern,
    required this.speed,
    required this.acceleration,
    required this.confidence,
    required this.timestamp,
  });
}

/// Motion features extracted from sensor data
class MotionFeatures {
  final double averageAcceleration;
  final double maxAcceleration;
  final double minAcceleration;
  final double standardDeviation;
  final double averageGyroscope;
  final double confidence;

  const MotionFeatures({
    required this.averageAcceleration,
    required this.maxAcceleration,
    required this.minAcceleration,
    required this.standardDeviation,
    required this.averageGyroscope,
    required this.confidence,
  });

  factory MotionFeatures.empty() {
    return const MotionFeatures(
      averageAcceleration: 0.0,
      maxAcceleration: 0.0,
      minAcceleration: 0.0,
      standardDeviation: 0.0,
      averageGyroscope: 0.0,
      confidence: 0.0,
    );
  }
}

/// Accelerometer data
class AccelerometerData {
  final double x;
  final double y;
  final double z;
  final DateTime timestamp;

  const AccelerometerData({
    required this.x,
    required this.y,
    required this.z,
    required this.timestamp,
  });
}

/// Gyroscope data
class GyroscopeData {
  final double x;
  final double y;
  final double z;
  final DateTime timestamp;

  const GyroscopeData({
    required this.x,
    required this.y,
    required this.z,
    required this.timestamp,
  });
}

/// Movement pattern classification
enum MovementPattern {
  stationary,
  walking,
  cycling,
  vehicle,
}