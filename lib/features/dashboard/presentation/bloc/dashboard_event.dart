part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.tabChanged(int tabIndex) = TabChanged;
  const factory DashboardEvent.loadDashboardData() = LoadDashboardData;
  const factory DashboardEvent.startLocationTracking() = StartLocationTracking;
  const factory DashboardEvent.stopLocationTracking() = StopLocationTracking;
  const factory DashboardEvent.locationUpdated(Position position) = LocationUpdated;
  const factory DashboardEvent.startTripDetection() = StartTripDetection;
  const factory DashboardEvent.stopTripDetection() = StopTripDetection;
  const factory DashboardEvent.tripDetected(DetectedTrip trip) = TripDetected;
  const factory DashboardEvent.tripLogged(TripLog tripLog) = TripLogged;
}