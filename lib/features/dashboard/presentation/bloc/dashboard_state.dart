part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int selectedTabIndex,
    @Default(false) bool isLoading,
    DashboardData? dashboardData,
    String? error,
    @Default(false) bool isLocationTracking,
  @Default(null) Position? currentLocation,
  @Default([]) List<Position> locationHistory,
  @Default(false) bool isTripDetectionActive,
    DetectedTrip? currentTrip,
    @Default([]) List<TripLog> recentTrips,
    TripStatistics? tripStatistics,
  }) = _DashboardState;
}