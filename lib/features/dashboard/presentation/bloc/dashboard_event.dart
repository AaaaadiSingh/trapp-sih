part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.tabChanged(int tabIndex) = TabChanged;
  const factory DashboardEvent.loadDashboardData() = LoadDashboardData;
}