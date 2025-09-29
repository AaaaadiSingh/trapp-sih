import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:geolocator/geolocator.dart';

import '../../domain/entities/dashboard_data.dart';
import '../../../../core/services/location_service.dart';
import '../../../../core/services/trip_detection_service.dart';
import '../../../../core/services/trip_logging_service.dart';
import '../../../../core/services/local_storage_service.dart';
// DetectedTrip, TripLog, and TripStatistics are imported from services
// DetectedTrip from trip_detection_service.dart
// TripLog and TripStatistics from trip_logging_service.dart


part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final LocationService _locationService;
  final TripDetectionService _tripDetectionService;
  final TripLoggingService _tripLoggingService;
  final LocalStorageService _localStorageService;
  StreamSubscription<Position>? _locationSubscription;
  StreamSubscription<DetectedTrip>? _tripSubscription;
  StreamSubscription<TripEvent>? _tripEventSubscription;
  StreamSubscription<TripLog>? _tripLogSubscription;

  DashboardBloc(
    this._locationService,
    this._tripDetectionService,
    this._tripLoggingService,
    this._localStorageService,
  ) : super(const DashboardState()) {
    print('🏗️ DashboardBloc constructor called');
    on<TabChanged>(_onTabChanged);
    on<LoadDashboardData>(_onLoadDashboardData);
    on<StartLocationTracking>(_onStartLocationTracking);
    on<StopLocationTracking>(_onStopLocationTracking);
    on<LocationUpdated>(_onLocationUpdated);
    on<StartTripDetection>(_onStartTripDetection);
    on<StopTripDetection>(_onStopTripDetection);
    on<TripDetected>(_onTripDetected);
    on<TripLogged>(_onTripLogged);
    
    // Listen to location updates
    _locationService.locationStream.listen((position) {
      add(DashboardEvent.locationUpdated(position));
    });

    // Listen to local storage changes for real-time updates
    _localStorageService.currentTripsStream.listen((trips) {
      // Reload dashboard data when current trips change
      add(const DashboardEvent.loadDashboardData());
    });

    _localStorageService.detectedTripsStream.listen((trips) {
      // Reload dashboard data when detected trips change
      add(const DashboardEvent.loadDashboardData());
    });
  }

  void _onTabChanged(TabChanged event, Emitter<DashboardState> emit) {
    emit(state.copyWith(selectedTabIndex: event.tabIndex));
  }

  void _onLoadDashboardData(
    LoadDashboardData event,
    Emitter<DashboardState> emit,
  ) async {
    print('📊 LoadDashboardData event triggered');
    emit(state.copyWith(isLoading: true, error: null));

    try {
      // Auto-start location tracking and trip detection
      await _initializeLocationServices();
      
      // Load current trips from local storage
      final currentTripsResult = await _localStorageService.getCurrentTrips();
      final currentTrips = currentTripsResult.fold(
        (failure) => <TripData>[],
        (trips) => trips,
      );

      // Load detected trips from local storage
      final detectedTripsResult = await _localStorageService.getDetectedTrips();
      final detectedTrips = detectedTripsResult.fold(
        (failure) => <DetectedTrip>[],
        (trips) => trips,
      );

      // Calculate dashboard statistics
      final totalTrips = _tripDetectionService.totalTrips + detectedTrips.length;
      final totalDistance = detectedTrips.fold<double>(
        0.0, 
        (sum, trip) => sum + (trip.totalDistance / 1000), // Convert to km
      );
      final averageTripTime = detectedTrips.isNotEmpty 
        ? detectedTrips.fold<int>(0, (sum, trip) => sum + trip.duration.inMinutes) / detectedTrips.length
        : 0;

      final dashboardData = DashboardData(
        totalTrips: totalTrips,
        estimatedDistance: totalDistance,
        estimatedTravelTime: averageTripTime.round(),
        currentTrips: currentTrips,
      );

      emit(state.copyWith(
        isLoading: false,
        dashboardData: dashboardData,
        isLocationTracking: _locationService.isTracking,
        isTripDetectionActive: _tripDetectionService.isDetecting,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  /// Initialize location services automatically
  Future<void> _initializeLocationServices() async {
    try {
      print('🚀 Starting location services initialization...');
      
      // Check location service status
      print('📍 Location tracking status: ${_locationService.isTracking}');
      print('🔍 Trip detection status: ${_tripDetectionService.isDetecting}');
      
      // Start location tracking if not already started
      if (!_locationService.isTracking) {
        print('📍 Starting location tracking...');
        final locationResult = await _locationService.startLocationTracking();
        locationResult.fold(
          (failure) => print('❌ Failed to start location tracking: ${failure.message}'),
          (_) => print('✅ Location tracking started successfully'),
        );
      } else {
        print('📍 Location tracking already active');
      }
      
      // Start trip detection if not already started
      if (!_tripDetectionService.isDetecting) {
        print('🔍 Starting trip detection...');
        final tripResult = await _tripDetectionService.startTripDetection();
        tripResult.fold(
          (failure) => print('❌ Failed to start trip detection: ${failure.message}'),
          (_) => print('✅ Trip detection started successfully'),
        );
      } else {
        print('🔍 Trip detection already active');
      }
      
      // Start trip logging if not already started
      final loggingResult = await _tripLoggingService.startLogging(_tripDetectionService);
      loggingResult.fold(
        (failure) => print('Failed to start trip logging: ${failure.message}'),
        (_) => print('Trip logging started successfully'),
      );
      
    } catch (e) {
      print('Error initializing location services: $e');
    }
  }

  void _onStartLocationTracking(
    StartLocationTracking event,
    Emitter<DashboardState> emit,
  ) async {
    final result = await _locationService.startLocationTracking();
    result.fold(
      (failure) => emit(state.copyWith(error: failure.message)),
      (_) => emit(state.copyWith(isLocationTracking: true)),
    );
  }

  void _onStopLocationTracking(
    StopLocationTracking event,
    Emitter<DashboardState> emit,
  ) async {
    await _locationService.stopLocationTracking();
    emit(state.copyWith(isLocationTracking: false));
  }

  void _onLocationUpdated(
    LocationUpdated event,
    Emitter<DashboardState> emit,
  ) {
    final updatedHistory = List<Position>.from(state.locationHistory);
    updatedHistory.add(event.position);
    
    // Keep only last 100 positions to avoid memory issues
    if (updatedHistory.length > 100) {
      updatedHistory.removeAt(0);
    }
    
    emit(state.copyWith(
      currentLocation: event.position,
      locationHistory: updatedHistory,
    ));
  }

  Future<void> _onStartTripDetection(
    StartTripDetection event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      if (state.isTripDetectionActive) {
        return;
      }

      // Start trip detection service
      final result = await _tripDetectionService.startTripDetection();
      
      result.fold(
        (failure) {
          emit(state.copyWith(
            error: 'Failed to start trip detection: ${failure.message}',
          ));
        },
        (_) {
          emit(state.copyWith(
            isTripDetectionActive: true,
            error: null,
          ));
          
          // Start trip logging
          _tripLoggingService.startLogging(_tripDetectionService);
          
          // Listen to trip events
          _tripSubscription = _tripDetectionService.tripStream.listen(
            (trip) => add(DashboardEvent.tripDetected(trip)),
          );
          
          // Listen to trip event stream for real-time updates
          _tripEventSubscription = _tripDetectionService.tripEventStream.listen(
            (event) {
              if (event.type == TripEventType.tripEnded) {
                // Refresh dashboard data when trip ends to update trip counter
                add(const DashboardEvent.loadDashboardData());
              }
            },
          );
          
          // Listen to trip log events
          _tripLogSubscription = _tripLoggingService.tripLogStream.listen(
            (tripLog) => add(DashboardEvent.tripLogged(tripLog)),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(
        error: 'Error starting trip detection: $e',
      ));
    }
  }

  Future<void> _onStopTripDetection(
    StopTripDetection event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      if (!state.isTripDetectionActive) {
        return;
      }

      // Stop services
      await _tripDetectionService.stopTripDetection();
      await _tripLoggingService.stopLogging();
      
      // Cancel subscriptions
      await _tripSubscription?.cancel();
      await _tripLogSubscription?.cancel();
      _tripSubscription = null;
      _tripLogSubscription = null;

      emit(state.copyWith(
        isTripDetectionActive: false,
        currentTrip: null,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'Error stopping trip detection: $e',
      ));
    }
  }

  Future<void> _onTripDetected(
    TripDetected event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      emit(state.copyWith(
        currentTrip: event.trip,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'Error processing detected trip: $e',
      ));
    }
  }

  Future<void> _onTripLogged(
    TripLogged event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      // Save detected trip to local storage if available
      if (state.currentTrip != null) {
        await _localStorageService.saveDetectedTrip(state.currentTrip!);
      }

      // Add to recent trips (keep last 10)
      final updatedRecentTrips = [event.tripLog, ...state.recentTrips];
      if (updatedRecentTrips.length > 10) {
        updatedRecentTrips.removeRange(10, updatedRecentTrips.length);
      }
      
      // Update trip statistics
      final statistics = await _tripLoggingService.getTripStatistics();
      
      emit(state.copyWith(
        recentTrips: updatedRecentTrips,
        tripStatistics: statistics,
        currentTrip: null, // Clear current trip when logged
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: 'Error processing logged trip: $e',
      ));
    }
  }

  @override
  Future<void> close() async {
    await _locationSubscription?.cancel();
    await _tripSubscription?.cancel();
    await _tripEventSubscription?.cancel();
    await _tripLogSubscription?.cancel();
    return super.close();
  }
}