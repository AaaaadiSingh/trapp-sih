import 'dart:async';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

import '../error/failures.dart';
import '../../features/dashboard/domain/entities/trip_plan.dart';
import '../../features/dashboard/domain/entities/dashboard_data.dart';
import 'trip_detection_service.dart';

@singleton
class LocalStorageService {
  final SharedPreferences _prefs;
  final Logger _logger = Logger();

  // Storage keys
  static const String _plannedTripsKey = 'planned_trips';
  static const String _detectedTripsKey = 'detected_trips';
  static const String _currentTripsKey = 'current_trips';
  static const String _completedTripsKey = 'completed_trips';
  static const String _tripCounterKey = 'trip_counter';

  LocalStorageService(this._prefs);

  // Stream controllers for real-time updates
  final StreamController<List<TripPlan>> _plannedTripsController =
      StreamController<List<TripPlan>>.broadcast();
  final StreamController<List<TripData>> _currentTripsController =
      StreamController<List<TripData>>.broadcast();
  final StreamController<List<DetectedTrip>> _detectedTripsController =
      StreamController<List<DetectedTrip>>.broadcast();

  // Streams for UI updates
  Stream<List<TripPlan>> get plannedTripsStream => _plannedTripsController.stream;
  Stream<List<TripData>> get currentTripsStream => _currentTripsController.stream;
  Stream<List<DetectedTrip>> get detectedTripsStream => _detectedTripsController.stream;

  // Trip Plans Management
  Future<Either<Failure, List<TripPlan>>> getPlannedTrips() async {
    try {
      final tripsJson = _prefs.getStringList(_plannedTripsKey) ?? [];
      final trips = tripsJson
          .map((json) => TripPlan.fromJson(jsonDecode(json)))
          .toList();
      
      _logger.i('Retrieved ${trips.length} planned trips from storage');
      return Right(trips);
    } catch (e) {
      _logger.e('Error retrieving planned trips: $e');
      return Left(CacheFailure(message: 'Failed to retrieve planned trips: $e'));
    }
  }

  Future<Either<Failure, void>> savePlannedTrip(TripPlan trip) async {
    try {
      final currentTrips = await getPlannedTrips();
      final trips = currentTrips.fold(
        (failure) => <TripPlan>[],
        (trips) => trips,
      );

      // Check if trip already exists and update, otherwise add
      final existingIndex = trips.indexWhere((t) => t.id == trip.id);
      if (existingIndex != -1) {
        trips[existingIndex] = trip;
      } else {
        trips.add(trip);
      }

      final tripsJson = trips.map((t) => jsonEncode(t.toJson())).toList();
      await _prefs.setStringList(_plannedTripsKey, tripsJson);

      // Notify listeners
      _plannedTripsController.add(trips);
      
      // Convert to current trip if it's scheduled for today or in progress
      await _checkAndConvertToCurrentTrip(trip);

      _logger.i('Saved planned trip: ${trip.origin} -> ${trip.destination}');
      return const Right(null);
    } catch (e) {
      _logger.e('Error saving planned trip: $e');
      return Left(CacheFailure(message: 'Failed to save planned trip: $e'));
    }
  }

  Future<Either<Failure, void>> deletePlannedTrip(String tripId) async {
    try {
      final currentTrips = await getPlannedTrips();
      final trips = currentTrips.fold(
        (failure) => <TripPlan>[],
        (trips) => trips,
      );

      trips.removeWhere((trip) => trip.id == tripId);
      final tripsJson = trips.map((t) => jsonEncode(t.toJson())).toList();
      await _prefs.setStringList(_plannedTripsKey, tripsJson);

      _plannedTripsController.add(trips);
      _logger.i('Deleted planned trip: $tripId');
      return const Right(null);
    } catch (e) {
      _logger.e('Error deleting planned trip: $e');
      return Left(CacheFailure(message: 'Failed to delete planned trip: $e'));
    }
  }

  // Current Trips Management
  Future<Either<Failure, List<TripData>>> getCurrentTrips() async {
    try {
      final tripsJson = _prefs.getStringList(_currentTripsKey) ?? [];
      final trips = tripsJson
          .map((json) => TripData.fromJson(jsonDecode(json)))
          .toList();
      
      _logger.i('Retrieved ${trips.length} current trips from storage');
      return Right(trips);
    } catch (e) {
      _logger.e('Error retrieving current trips: $e');
      return Left(CacheFailure(message: 'Failed to retrieve current trips: $e'));
    }
  }

  Future<Either<Failure, void>> saveCurrentTrip(TripData trip) async {
    try {
      final currentTrips = await getCurrentTrips();
      final trips = currentTrips.fold(
        (failure) => <TripData>[],
        (trips) => trips,
      );

      final existingIndex = trips.indexWhere((t) => t.id == trip.id);
      if (existingIndex != -1) {
        trips[existingIndex] = trip;
      } else {
        trips.add(trip);
      }

      final tripsJson = trips.map((t) => jsonEncode(t.toJson())).toList();
      await _prefs.setStringList(_currentTripsKey, tripsJson);

      _currentTripsController.add(trips);
      _logger.i('Saved current trip: ${trip.origin} -> ${trip.destination}');
      return const Right(null);
    } catch (e) {
      _logger.e('Error saving current trip: $e');
      return Left(CacheFailure(message: 'Failed to save current trip: $e'));
    }
  }

  Future<Either<Failure, void>> updateTripStatus(String tripId, TripStatus status) async {
    try {
      final currentTrips = await getCurrentTrips();
      final trips = currentTrips.fold(
        (failure) => <TripData>[],
        (trips) => trips,
      );

      final tripIndex = trips.indexWhere((t) => t.id == tripId);
      if (tripIndex != -1) {
        final updatedTrip = trips[tripIndex].copyWith(status: status);
        trips[tripIndex] = updatedTrip;

        // If completed, move to completed trips
        if (status == TripStatus.completed) {
          await _moveToCompletedTrips(updatedTrip);
          trips.removeAt(tripIndex);
        }

        final tripsJson = trips.map((t) => jsonEncode(t.toJson())).toList();
        await _prefs.setStringList(_currentTripsKey, tripsJson);

        _currentTripsController.add(trips);
        _logger.i('Updated trip status: $tripId -> $status');
      }

      return const Right(null);
    } catch (e) {
      _logger.e('Error updating trip status: $e');
      return Left(CacheFailure(message: 'Failed to update trip status: $e'));
    }
  }

  // Detected Trips Management
  Future<Either<Failure, List<DetectedTrip>>> getDetectedTrips() async {
    try {
      final tripsJson = _prefs.getStringList(_detectedTripsKey) ?? [];
      final trips = tripsJson
          .map((json) => _detectedTripFromJson(jsonDecode(json)))
          .toList();
      
      _logger.i('Retrieved ${trips.length} detected trips from storage');
      return Right(trips);
    } catch (e) {
      _logger.e('Error retrieving detected trips: $e');
      return Left(CacheFailure(message: 'Failed to retrieve detected trips: $e'));
    }
  }

  Future<Either<Failure, void>> saveDetectedTrip(DetectedTrip trip) async {
    try {
      final currentTrips = await getDetectedTrips();
      final trips = currentTrips.fold(
        (failure) => <DetectedTrip>[],
        (trips) => trips,
      );

      final existingIndex = trips.indexWhere((t) => t.id == trip.id);
      if (existingIndex != -1) {
        trips[existingIndex] = trip;
      } else {
        trips.add(trip);
      }

      final tripsJson = trips.map((t) => _detectedTripToJson(t)).toList();
      await _prefs.setStringList(_detectedTripsKey, tripsJson);

      _detectedTripsController.add(trips);
      _logger.i('Saved detected trip: ${trip.id}');
      return const Right(null);
    } catch (e) {
      _logger.e('Error saving detected trip: $e');
      return Left(CacheFailure(message: 'Failed to save detected trip: $e'));
    }
  }

  // Dashboard Data
  Future<Either<Failure, DashboardData>> getDashboardData() async {
    try {
      final currentTripsResult = await getCurrentTrips();
      final currentTrips = currentTripsResult.fold(
        (failure) => <TripData>[],
        (trips) => trips,
      );

      final completedTripsJson = _prefs.getStringList(_completedTripsKey) ?? [];
      final completedTrips = completedTripsJson
          .map((json) => TripData.fromJson(jsonDecode(json)))
          .toList();

      final totalTrips = currentTrips.length + completedTrips.length;
      final estimatedDistance = completedTrips.fold<double>(
        0.0,
        (sum, trip) => sum + trip.distance,
      );
      final estimatedTravelTime = completedTrips.fold<int>(
        0,
        (sum, trip) => sum + trip.duration,
      );

      final dashboardData = DashboardData(
        totalTrips: totalTrips,
        estimatedDistance: estimatedDistance,
        estimatedTravelTime: estimatedTravelTime,
        currentTrips: currentTrips,
      );

      return Right(dashboardData);
    } catch (e) {
      _logger.e('Error retrieving dashboard data: $e');
      return Left(CacheFailure(message: 'Failed to retrieve dashboard data: $e'));
    }
  }

  // Helper methods
  Future<void> _checkAndConvertToCurrentTrip(TripPlan plannedTrip) async {
    final now = DateTime.now();
    final tripDateTime = DateTime(
      plannedTrip.plannedDate.year,
      plannedTrip.plannedDate.month,
      plannedTrip.plannedDate.day,
      plannedTrip.plannedTime.hour,
      plannedTrip.plannedTime.minute,
    );

    // Convert to current trip if it's within 2 hours of planned time
    if (tripDateTime.difference(now).inHours.abs() <= 2) {
      final currentTrip = TripData(
        id: plannedTrip.id,
        origin: plannedTrip.origin,
        destination: plannedTrip.destination,
        startTime: tripDateTime,
        endTime: tripDateTime.add(const Duration(hours: 1)), // Estimated
        status: TripStatus.scheduled,
      );

      await saveCurrentTrip(currentTrip);
    }
  }

  Future<void> _moveToCompletedTrips(TripData trip) async {
    try {
      final completedTripsJson = _prefs.getStringList(_completedTripsKey) ?? [];
      final completedTrips = completedTripsJson
          .map((json) => TripData.fromJson(jsonDecode(json)))
          .toList();

      completedTrips.add(trip.copyWith(status: TripStatus.completed));
      final tripsJson = completedTrips.map((t) => jsonEncode(t.toJson())).toList();
      await _prefs.setStringList(_completedTripsKey, tripsJson);

      _logger.i('Moved trip to completed: ${trip.id}');
    } catch (e) {
      _logger.e('Error moving trip to completed: $e');
    }
  }

  // Utility methods for DetectedTrip serialization
  String _detectedTripToJson(DetectedTrip trip) {
    return jsonEncode({
      'id': trip.id,
      'startTime': trip.startTime.toIso8601String(),
      'endTime': trip.endTime?.toIso8601String(),
      'startPosition': {
        'latitude': trip.startPosition.latitude,
        'longitude': trip.startPosition.longitude,
        'timestamp': trip.startPosition.timestamp.toIso8601String(),
        'accuracy': trip.startPosition.accuracy,
        'altitude': trip.startPosition.altitude,
        'heading': trip.startPosition.heading,
        'speed': trip.startPosition.speed,
        'speedAccuracy': trip.startPosition.speedAccuracy,
      },
      'endPosition': trip.endPosition != null ? {
        'latitude': trip.endPosition!.latitude,
        'longitude': trip.endPosition!.longitude,
        'timestamp': trip.endPosition!.timestamp.toIso8601String(),
        'accuracy': trip.endPosition!.accuracy,
        'altitude': trip.endPosition!.altitude,
        'heading': trip.endPosition!.heading,
        'speed': trip.endPosition!.speed,
        'speedAccuracy': trip.endPosition!.speedAccuracy,
      } : null,
      'totalDistance': trip.totalDistance,
      'duration': trip.duration.inMilliseconds,
      'averageSpeed': trip.averageSpeed,
      'maxSpeed': trip.maxSpeed,
      'state': trip.state.toString(),
    });
  }

  DetectedTrip _detectedTripFromJson(Map<String, dynamic> json) {
    return DetectedTrip(
      id: json['id'],
      startTime: DateTime.parse(json['startTime']),
      endTime: json['endTime'] != null ? DateTime.parse(json['endTime']) : null,
      startPosition: _positionFromJson(json['startPosition']),
      endPosition: json['endPosition'] != null ? _positionFromJson(json['endPosition']) : null,
      route: [], // Route data would be too large for SharedPreferences
      totalDistance: json['totalDistance'],
      duration: Duration(milliseconds: json['duration']),
      averageSpeed: json['averageSpeed'],
      maxSpeed: json['maxSpeed'],
      state: TripState.values.firstWhere(
        (state) => state.toString() == json['state'],
        orElse: () => TripState.idle,
      ),
    );
  }

  Position _positionFromJson(Map<String, dynamic> json) {
    return Position(
      latitude: json['latitude'],
      longitude: json['longitude'],
      timestamp: DateTime.parse(json['timestamp']),
      accuracy: json['accuracy'],
      altitude: json['altitude'],
      heading: json['heading'],
      speed: json['speed'],
      speedAccuracy: json['speedAccuracy'],
      altitudeAccuracy: 0.0,
      headingAccuracy: 0.0,
    );
  }

  // Generic string storage methods
  Future<Either<Failure, void>> setString(String key, String value) async {
    try {
      await _prefs.setString(key, value);
      _logger.i('Saved string value for key: $key');
      return const Right(null);
    } catch (e) {
      _logger.e('Error saving string for key $key: $e');
      return Left(CacheFailure(message: 'Failed to save string: $e'));
    }
  }

  Future<Either<Failure, String?>> getString(String key) async {
    try {
      final value = _prefs.getString(key);
      _logger.i('Retrieved string value for key: $key');
      return Right(value);
    } catch (e) {
      _logger.e('Error retrieving string for key $key: $e');
      return Left(CacheFailure(message: 'Failed to retrieve string: $e'));
    }
  }

  // Clear all data
  Future<Either<Failure, void>> clearAllTripData() async {
    try {
      await _prefs.remove(_plannedTripsKey);
      await _prefs.remove(_detectedTripsKey);
      await _prefs.remove(_currentTripsKey);
      await _prefs.remove(_completedTripsKey);
      await _prefs.remove(_tripCounterKey);

      _plannedTripsController.add([]);
      _currentTripsController.add([]);
      _detectedTripsController.add([]);

      _logger.i('Cleared all trip data');
      return const Right(null);
    } catch (e) {
      _logger.e('Error clearing trip data: $e');
      return Left(CacheFailure(message: 'Failed to clear trip data: $e'));
    }
  }

  // Dispose
  void dispose() {
    _plannedTripsController.close();
    _currentTripsController.close();
    _detectedTripsController.close();
  }
}