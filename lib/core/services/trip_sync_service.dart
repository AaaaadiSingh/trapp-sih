import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../error/failures.dart';
import '../../features/dashboard/domain/entities/trip_plan.dart';
import '../../features/dashboard/domain/entities/dashboard_data.dart';
import 'local_storage_service.dart';

@injectable
class TripSyncService {
  final LocalStorageService _localStorageService;
  final Logger _logger = Logger();
  Timer? _syncTimer;

  TripSyncService(this._localStorageService);

  /// Start the synchronization service
  void startSync() {
    _logger.i('Starting trip synchronization service');
    
    // Run sync every 5 minutes
    _syncTimer = Timer.periodic(const Duration(minutes: 5), (_) {
      _syncTrips();
    });

    // Run initial sync
    _syncTrips();
  }

  /// Stop the synchronization service
  void stopSync() {
    _logger.i('Stopping trip synchronization service');
    _syncTimer?.cancel();
    _syncTimer = null;
  }

  /// Synchronize trips - convert planned trips to current trips when appropriate
  Future<void> _syncTrips() async {
    try {
      _logger.d('Running trip synchronization...');
      
      final plannedTripsResult = await _localStorageService.getPlannedTrips();
      final plannedTrips = plannedTripsResult.fold(
        (failure) => <TripPlan>[],
        (trips) => trips,
      );

      final now = DateTime.now();
      
      for (final trip in plannedTrips) {
        final tripDateTime = DateTime(
          trip.plannedDate.year,
          trip.plannedDate.month,
          trip.plannedDate.day,
          trip.plannedTime.hour,
          trip.plannedTime.minute,
        );

        // Check if trip should be converted to current trip
        final timeDifference = tripDateTime.difference(now);
        
        // Convert to current trip if:
        // 1. Trip is scheduled for now (within 30 minutes)
        // 2. Trip is overdue (past scheduled time)
        if (timeDifference.inMinutes.abs() <= 30) {
          await _convertToCurrentTrip(trip);
        }
        // Mark as missed if more than 2 hours past scheduled time
        else if (timeDifference.inHours < -2) {
          await _markTripAsMissed(trip);
        }
      }
      
      _logger.d('Trip synchronization completed');
    } catch (e) {
      _logger.e('Error during trip synchronization: $e');
    }
  }

  /// Convert a planned trip to a current trip
  Future<void> _convertToCurrentTrip(TripPlan plannedTrip) async {
    try {
      final currentTrip = TripData(
        id: plannedTrip.id,
        origin: plannedTrip.origin,
        destination: plannedTrip.destination,
        startTime: DateTime.now(),
        endTime: DateTime.now().add(const Duration(hours: 1)), // Estimated
        status: TripStatus.scheduled,
      );

      // Save as current trip
      final saveResult = await _localStorageService.saveCurrentTrip(currentTrip);
      
      saveResult.fold(
        (failure) => _logger.e('Failed to save current trip: ${failure.message}'),
        (_) {
          _logger.i('Converted planned trip to current trip: ${plannedTrip.origin} -> ${plannedTrip.destination}');
          
          // Remove from planned trips
          _localStorageService.deletePlannedTrip(plannedTrip.id);
        },
      );
    } catch (e) {
      _logger.e('Error converting planned trip to current trip: $e');
    }
  }

  /// Mark a trip as missed (remove from planned trips)
  Future<void> _markTripAsMissed(TripPlan plannedTrip) async {
    try {
      await _localStorageService.deletePlannedTrip(plannedTrip.id);
      _logger.i('Marked trip as missed: ${plannedTrip.origin} -> ${plannedTrip.destination}');
    } catch (e) {
      _logger.e('Error marking trip as missed: $e');
    }
  }

  /// Add sample data for testing
  Future<void> addSampleData() async {
    try {
      _logger.i('Adding sample data for testing...');
      
      final now = DateTime.now();
      
      // Sample planned trips
      final samplePlannedTrips = [
        TripPlan(
          id: 'sample_1',
          origin: 'Home',
          destination: 'Office',
          plannedDate: now.add(const Duration(days: 1)),
          plannedTime: DateTime(2023, 1, 1, 8, 30),
          transportMode: TransportMode.car,
          notes: 'Morning commute to work',
        ),
        TripPlan(
          id: 'sample_2',
          origin: 'Office',
          destination: 'Gym',
          plannedDate: now,
          plannedTime: DateTime(2023, 1, 1, 18, 0),
          transportMode: TransportMode.bicycle,
          notes: 'Evening workout session',
        ),
        TripPlan(
          id: 'sample_3',
          origin: 'Home',
          destination: 'Shopping Mall',
          plannedDate: now.add(const Duration(days: 2)),
          plannedTime: DateTime(2023, 1, 1, 14, 0),
          transportMode: TransportMode.car,
          notes: 'Weekend shopping',
        ),
      ];

      // Sample current trips
      final sampleCurrentTrips = [
        TripData(
          id: 'current_1',
          origin: 'Home',
          destination: 'Coffee Shop',
          startTime: now.subtract(const Duration(minutes: 15)),
          endTime: now.add(const Duration(minutes: 10)),
          status: TripStatus.inProgress,
          distance: 2.5,
          duration: 25,
        ),
        TripData(
          id: 'current_2',
          origin: 'Office',
          destination: 'Restaurant',
          startTime: now.add(const Duration(hours: 1)),
          endTime: now.add(const Duration(hours: 1, minutes: 30)),
          status: TripStatus.scheduled,
          distance: 1.8,
          duration: 30,
        ),
      ];

      // Save sample data
      for (final trip in samplePlannedTrips) {
        await _localStorageService.savePlannedTrip(trip);
      }

      for (final trip in sampleCurrentTrips) {
        await _localStorageService.saveCurrentTrip(trip);
      }

      _logger.i('Sample data added successfully');
    } catch (e) {
      _logger.e('Error adding sample data: $e');
    }
  }

  /// Clear all trip data
  Future<void> clearAllData() async {
    try {
      _logger.i('Clearing all trip data...');
      
      // Get all trips and clear them
      final plannedResult = await _localStorageService.getPlannedTrips();
      final currentResult = await _localStorageService.getCurrentTrips();
      final detectedResult = await _localStorageService.getDetectedTrips();

      // Clear planned trips
      plannedResult.fold(
        (failure) => _logger.e('Failed to get planned trips: ${failure.message}'),
        (trips) async {
          for (final trip in trips) {
            await _localStorageService.deletePlannedTrip(trip.id);
          }
        },
      );

      _logger.i('All trip data cleared successfully');
    } catch (e) {
      _logger.e('Error clearing trip data: $e');
    }
  }

  /// Dispose resources
  void dispose() {
    stopSync();
  }
}