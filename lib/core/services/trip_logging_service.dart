import 'dart:async';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';
import 'trip_detection_service.dart';

class TripLog {
  final String id;
  final DateTime startTime;
  final DateTime endTime;
  final double startLatitude;
  final double startLongitude;
  final double endLatitude;
  final double endLongitude;
  final double totalDistance;
  final int durationSeconds;
  final double averageSpeed;
  final double maxSpeed;
  final int routePointsCount;
  final Map<String, dynamic> metadata;

  TripLog({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.startLatitude,
    required this.startLongitude,
    required this.endLatitude,
    required this.endLongitude,
    required this.totalDistance,
    required this.durationSeconds,
    required this.averageSpeed,
    required this.maxSpeed,
    required this.routePointsCount,
    this.metadata = const {},
  });

  factory TripLog.fromDetectedTrip(DetectedTrip trip) {
    return TripLog(
      id: trip.id,
      startTime: trip.startTime,
      endTime: trip.endTime ?? DateTime.now(),
      startLatitude: trip.startPosition.latitude,
      startLongitude: trip.startPosition.longitude,
      endLatitude: trip.endPosition?.latitude ?? trip.startPosition.latitude,
      endLongitude: trip.endPosition?.longitude ?? trip.startPosition.longitude,
      totalDistance: trip.totalDistance,
      durationSeconds: trip.duration.inSeconds,
      averageSpeed: trip.averageSpeed,
      maxSpeed: trip.maxSpeed,
      routePointsCount: trip.route.length,
      metadata: {
        'state': trip.state.toString(),
      },
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'startLatitude': startLatitude,
      'startLongitude': startLongitude,
      'endLatitude': endLatitude,
      'endLongitude': endLongitude,
      'totalDistance': totalDistance,
      'durationSeconds': durationSeconds,
      'averageSpeed': averageSpeed,
      'maxSpeed': maxSpeed,
      'routePointsCount': routePointsCount,
      'metadata': metadata,
    };
  }

  factory TripLog.fromJson(Map<String, dynamic> json) {
    return TripLog(
      id: json['id'],
      startTime: DateTime.parse(json['startTime']),
      endTime: DateTime.parse(json['endTime']),
      startLatitude: json['startLatitude'].toDouble(),
      startLongitude: json['startLongitude'].toDouble(),
      endLatitude: json['endLatitude'].toDouble(),
      endLongitude: json['endLongitude'].toDouble(),
      totalDistance: json['totalDistance'].toDouble(),
      durationSeconds: json['durationSeconds'],
      averageSpeed: json['averageSpeed'].toDouble(),
      maxSpeed: json['maxSpeed'].toDouble(),
      routePointsCount: json['routePointsCount'],
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }

  Duration get duration => Duration(seconds: durationSeconds);
  
  String get formattedDistance {
    if (totalDistance < 1000) {
      return '${totalDistance.toStringAsFixed(0)}m';
    } else {
      return '${(totalDistance / 1000).toStringAsFixed(2)}km';
    }
  }
  
  String get formattedDuration {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    
    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }
  
  String get formattedAverageSpeed {
    return '${(averageSpeed * 3.6).toStringAsFixed(1)} km/h';
  }
}

class TripStatistics {
  final int totalTrips;
  final double totalDistance;
  final Duration totalDuration;
  final double averageSpeed;
  final double maxSpeed;
  final DateTime? firstTripDate;
  final DateTime? lastTripDate;
  final Map<String, int> tripsByDay;
  final Map<String, double> distanceByDay;

  TripStatistics({
    required this.totalTrips,
    required this.totalDistance,
    required this.totalDuration,
    required this.averageSpeed,
    required this.maxSpeed,
    this.firstTripDate,
    this.lastTripDate,
    required this.tripsByDay,
    required this.distanceByDay,
  });
}

@singleton
class TripLoggingService {
  final Logger _logger = Logger();
  static const String _tripsKey = 'trip_logs';
  static const int _maxStoredTrips = 1000;

  StreamSubscription<DetectedTrip>? _tripSubscription;
  final StreamController<TripLog> _tripLogController = StreamController<TripLog>.broadcast();
  
  // Getters
  Stream<TripLog> get tripLogStream => _tripLogController.stream;

  /// Start logging trips from trip detection service
  Future<Either<Failure, void>> startLogging(TripDetectionService tripDetectionService) async {
    try {
      if (_tripSubscription != null) {
        _logger.w('Trip logging is already active');
        return const Right(null);
      }

      _logger.i('Starting trip logging');
      
      _tripSubscription = tripDetectionService.tripStream.listen(
        (detectedTrip) {
          // Only log completed trips
          if (detectedTrip.endTime != null && detectedTrip.state == TripState.idle) {
            _logTrip(detectedTrip);
          }
        },
        onError: (error) {
          _logger.e('Trip logging error: $error');
        },
      );

      _logger.i('Trip logging started successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error starting trip logging: $e');
      return Left(GeneralFailure(message: 'Failed to start trip logging: $e'));
    }
  }

  /// Stop logging trips
  Future<void> stopLogging() async {
    try {
      _logger.i('Stopping trip logging');
      
      await _tripSubscription?.cancel();
      _tripSubscription = null;
      
      _logger.i('Trip logging stopped');
    } catch (e) {
      _logger.e('Error stopping trip logging: $e');
    }
  }

  /// Log a detected trip
  Future<void> _logTrip(DetectedTrip detectedTrip) async {
    try {
      final tripLog = TripLog.fromDetectedTrip(detectedTrip);
      
      // Get existing trips
      final trips = await _getStoredTrips();
      
      // Add new trip
      trips.add(tripLog);
      
      // Sort by start time (newest first)
      trips.sort((a, b) => b.startTime.compareTo(a.startTime));
      
      // Limit stored trips
      if (trips.length > _maxStoredTrips) {
        trips.removeRange(_maxStoredTrips, trips.length);
      }
      
      // Save to storage
      await _saveTrips(trips);
      
      _logger.i('Trip logged: ${tripLog.id}, distance: ${tripLog.formattedDistance}, duration: ${tripLog.formattedDuration}');
      
      // Emit the logged trip
      _tripLogController.add(tripLog);
    } catch (e) {
      _logger.e('Error logging trip: $e');
    }
  }

  /// Get all stored trips
  Future<List<TripLog>> getAllTrips() async {
    try {
      return await _getStoredTrips();
    } catch (e) {
      _logger.e('Error getting all trips: $e');
      return [];
    }
  }

  /// Get trips for a specific date range
  Future<List<TripLog>> getTripsInDateRange(DateTime startDate, DateTime endDate) async {
    try {
      final allTrips = await _getStoredTrips();
      
      return allTrips.where((trip) {
        return trip.startTime.isAfter(startDate) && trip.startTime.isBefore(endDate);
      }).toList();
    } catch (e) {
      _logger.e('Error getting trips in date range: $e');
      return [];
    }
  }

  /// Get trips for today
  Future<List<TripLog>> getTodaysTrips() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    return await getTripsInDateRange(startOfDay, endOfDay);
  }

  /// Get trip statistics
  Future<TripStatistics> getTripStatistics({DateTime? startDate, DateTime? endDate}) async {
    try {
      List<TripLog> trips;
      
      if (startDate != null && endDate != null) {
        trips = await getTripsInDateRange(startDate, endDate);
      } else {
        trips = await getAllTrips();
      }
      
      if (trips.isEmpty) {
        return TripStatistics(
          totalTrips: 0,
          totalDistance: 0.0,
          totalDuration: Duration.zero,
          averageSpeed: 0.0,
          maxSpeed: 0.0,
          tripsByDay: {},
          distanceByDay: {},
        );
      }
      
      // Calculate statistics
      final totalTrips = trips.length;
      final totalDistance = trips.fold<double>(0.0, (sum, trip) => sum + trip.totalDistance);
      final totalDurationSeconds = trips.fold<int>(0, (sum, trip) => sum + trip.durationSeconds);
      final totalDuration = Duration(seconds: totalDurationSeconds);
      final averageSpeed = totalDurationSeconds > 0 ? totalDistance / totalDurationSeconds : 0.0;
      final maxSpeed = trips.fold<double>(0.0, (max, trip) => trip.maxSpeed > max ? trip.maxSpeed : max);
      
      // Group by day
      final Map<String, int> tripsByDay = {};
      final Map<String, double> distanceByDay = {};
      
      for (final trip in trips) {
        final dayKey = '${trip.startTime.year}-${trip.startTime.month.toString().padLeft(2, '0')}-${trip.startTime.day.toString().padLeft(2, '0')}';
        
        tripsByDay[dayKey] = (tripsByDay[dayKey] ?? 0) + 1;
        distanceByDay[dayKey] = (distanceByDay[dayKey] ?? 0.0) + trip.totalDistance;
      }
      
      return TripStatistics(
        totalTrips: totalTrips,
        totalDistance: totalDistance,
        totalDuration: totalDuration,
        averageSpeed: averageSpeed,
        maxSpeed: maxSpeed,
        firstTripDate: trips.isNotEmpty ? trips.last.startTime : null,
        lastTripDate: trips.isNotEmpty ? trips.first.startTime : null,
        tripsByDay: tripsByDay,
        distanceByDay: distanceByDay,
      );
    } catch (e) {
      _logger.e('Error calculating trip statistics: $e');
      return TripStatistics(
        totalTrips: 0,
        totalDistance: 0.0,
        totalDuration: Duration.zero,
        averageSpeed: 0.0,
        maxSpeed: 0.0,
        tripsByDay: {},
        distanceByDay: {},
      );
    }
  }

  /// Delete a specific trip
  Future<Either<Failure, void>> deleteTrip(String tripId) async {
    try {
      final trips = await _getStoredTrips();
      trips.removeWhere((trip) => trip.id == tripId);
      await _saveTrips(trips);
      
      _logger.i('Trip deleted: $tripId');
      return const Right(null);
    } catch (e) {
      _logger.e('Error deleting trip: $e');
      return Left(GeneralFailure(message: 'Failed to delete trip: $e'));
    }
  }

  /// Clear all trip logs
  Future<Either<Failure, void>> clearAllTrips() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_tripsKey);
      
      _logger.i('All trips cleared');
      return const Right(null);
    } catch (e) {
      _logger.e('Error clearing all trips: $e');
      return Left(GeneralFailure(message: 'Failed to clear trips: $e'));
    }
  }

  /// Export trips as JSON
  Future<Either<Failure, String>> exportTripsAsJson({DateTime? startDate, DateTime? endDate}) async {
    try {
      List<TripLog> trips;
      
      if (startDate != null && endDate != null) {
        trips = await getTripsInDateRange(startDate, endDate);
      } else {
        trips = await getAllTrips();
      }
      
      final exportData = {
        'exportDate': DateTime.now().toIso8601String(),
        'tripCount': trips.length,
        'trips': trips.map((trip) => trip.toJson()).toList(),
      };
      
      final jsonString = jsonEncode(exportData);
      _logger.i('Exported ${trips.length} trips as JSON');
      
      return Right(jsonString);
    } catch (e) {
      _logger.e('Error exporting trips: $e');
      return Left(GeneralFailure(message: 'Failed to export trips: $e'));
    }
  }

  /// Get stored trips from SharedPreferences
  Future<List<TripLog>> _getStoredTrips() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final tripsJson = prefs.getStringList(_tripsKey) ?? [];
      
      return tripsJson.map((tripJson) {
        final tripMap = jsonDecode(tripJson) as Map<String, dynamic>;
        return TripLog.fromJson(tripMap);
      }).toList();
    } catch (e) {
      _logger.e('Error getting stored trips: $e');
      return [];
    }
  }

  /// Save trips to SharedPreferences
  Future<void> _saveTrips(List<TripLog> trips) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final tripsJson = trips.map((trip) => jsonEncode(trip.toJson())).toList();
      await prefs.setStringList(_tripsKey, tripsJson);
    } catch (e) {
      _logger.e('Error saving trips: $e');
      throw e;
    }
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing TripLoggingService');
    stopLogging();
    _tripLogController.close();
  }
}