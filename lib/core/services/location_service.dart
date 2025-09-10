import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';

@singleton
class LocationService {
  final Logger _logger = Logger();
  StreamSubscription<Position>? _positionStream;
  Position? _lastKnownPosition;
  bool _isTracking = false;
  bool _hasLocationConsent = false;

  // Stream controller for location updates
  final StreamController<Position> _locationController = StreamController<Position>.broadcast();
  Stream<Position> get locationStream => _locationController.stream;

  // Getters
  bool get isTracking => _isTracking;
  bool get hasLocationConsent => _hasLocationConsent;
  Position? get lastKnownPosition => _lastKnownPosition;

  /// Request location permission from user
  Future<Either<Failure, bool>> requestLocationPermission() async {
    try {
      _logger.i('Requesting location permission');
      
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _logger.w('Location services are disabled');
        return const Left(PermissionFailure(message: 'Location services are disabled. Please enable location services.'));
      }

      // Check current permission status
      LocationPermission permission = await Geolocator.checkPermission();
      
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          _logger.w('Location permission denied');
          return const Left(PermissionFailure(message: 'Location permission denied'));
        }
      }
      
      if (permission == LocationPermission.deniedForever) {
        _logger.w('Location permission denied forever');
        return const Left(PermissionFailure(
          message: 'Location permissions are permanently denied. Please enable them in app settings.'
        ));
      }

      _hasLocationConsent = true;
      _logger.i('Location permission granted');
      return const Right(true);
    } catch (e) {
      _logger.e('Error requesting location permission: $e');
      return Left(GeneralFailure(message: 'Failed to request location permission: $e'));
    }
  }

  /// Get current location
  Future<Either<Failure, Position>> getCurrentLocation() async {
    try {
      if (!_hasLocationConsent) {
        final permissionResult = await requestLocationPermission();
        if (permissionResult.isLeft()) {
          return permissionResult.fold(
            (failure) => Left(failure),
            (_) => const Left(PermissionFailure(message: 'Permission not granted')),
          );
        }
      }

      _logger.i('Getting current location');
      
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );
      
      _lastKnownPosition = position;
      _logger.i('Current location obtained: ${position.latitude}, ${position.longitude}');
      
      return Right(position);
    } catch (e) {
      _logger.e('Error getting current location: $e');
      return Left(GeneralFailure(message: 'Failed to get current location: $e'));
    }
  }

  /// Start continuous location tracking
  Future<Either<Failure, void>> startLocationTracking() async {
    try {
      print('🔥 LocationService.startLocationTracking() called');
      print('🔥 Has consent: $_hasLocationConsent, Is tracking: $_isTracking');
      
      if (!_hasLocationConsent) {
        print('🔥 Requesting location permission...');
        final permissionResult = await requestLocationPermission();
        if (permissionResult.isLeft()) {
          return permissionResult.fold(
            (failure) => Left(failure),
            (_) => const Left(PermissionFailure(message: 'Permission not granted')),
          );
        }
      }

      if (_isTracking) {
        _logger.w('Location tracking is already active');
        print('🔥 Location tracking already active');
        return const Right(null);
      }

      _logger.i('Starting location tracking');
      print('🔥 Actually starting location tracking...');
      
      const LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.medium, // Balanced accuracy for battery optimization
        distanceFilter: 10, // Update every 10 meters as required
        timeLimit: Duration(minutes: 2), // Increased timeout for better GPS acquisition
      );

      _positionStream = Geolocator.getPositionStream(
        locationSettings: locationSettings,
      ).listen(
        (Position position) {
          _lastKnownPosition = position;
          _locationController.add(position);
          _logger.d('Location update: ${position.latitude}, ${position.longitude}');
        },
        onError: (error) {
          _logger.e('Location tracking error: $error');
          
          // Handle timeout gracefully - don't crash the app
          if (error.toString().contains('TimeoutException')) {
            _logger.w('GPS timeout - continuing with last known position');
            // Use last known position if available
            if (_lastKnownPosition != null) {
              _locationController.add(_lastKnownPosition!);
            }
          } else {
            _locationController.addError(error);
          }
        },
      );

      _isTracking = true;
      _logger.i('Location tracking started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting location tracking: $e');
      return Left(GeneralFailure(message: 'Failed to start location tracking: $e'));
    }
  }

  /// Stop location tracking
  Future<void> stopLocationTracking() async {
    try {
      _logger.i('Stopping location tracking');
      
      await _positionStream?.cancel();
      _positionStream = null;
      _isTracking = false;
      
      _logger.i('Location tracking stopped');
    } catch (e) {
      _logger.e('Error stopping location tracking: $e');
    }
  }

  /// Set location consent status
  void setLocationConsent(bool hasConsent) {
    _hasLocationConsent = hasConsent;
    _logger.i('Location consent set to: $hasConsent');
    
    if (!hasConsent && _isTracking) {
      stopLocationTracking();
    }
  }

  /// Calculate distance between two positions
  double calculateDistance(Position start, Position end) {
    return Geolocator.distanceBetween(
      start.latitude,
      start.longitude,
      end.latitude,
      end.longitude,
    );
  }

  /// Check if location services are available
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  /// Open location settings
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }

  /// Open app settings
  Future<void> openAppSettings() async {
    await openAppSettings();
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing LocationService');
    stopLocationTracking();
    _locationController.close();
  }
}

/// Location data model for easier handling
class LocationData {
  final double latitude;
  final double longitude;
  final double? accuracy;
  final double? altitude;
  final double? speed;
  final DateTime timestamp;

  const LocationData({
    required this.latitude,
    required this.longitude,
    this.accuracy,
    this.altitude,
    this.speed,
    required this.timestamp,
  });

  factory LocationData.fromPosition(Position position) {
    return LocationData(
      latitude: position.latitude,
      longitude: position.longitude,
      accuracy: position.accuracy,
      altitude: position.altitude,
      speed: position.speed,
      timestamp: position.timestamp,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'accuracy': accuracy,
      'altitude': altitude,
      'speed': speed,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory LocationData.fromJson(Map<String, dynamic> json) {
    return LocationData(
      latitude: json['latitude']?.toDouble() ?? 0.0,
      longitude: json['longitude']?.toDouble() ?? 0.0,
      accuracy: json['accuracy']?.toDouble(),
      altitude: json['altitude']?.toDouble(),
      speed: json['speed']?.toDouble(),
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  @override
  String toString() {
    return 'LocationData(lat: $latitude, lng: $longitude, accuracy: $accuracy, timestamp: $timestamp)';
  }
}