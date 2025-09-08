part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int selectedTabIndex,
    @Default(false) bool isLoading,
    DashboardData? dashboardData,
    String? error,
  }) = _DashboardState;
}