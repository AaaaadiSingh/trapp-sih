import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/dashboard_data.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState()) {
    on<TabChanged>(_onTabChanged);
    on<LoadDashboardData>(_onLoadDashboardData);
  }

  void _onTabChanged(TabChanged event, Emitter<DashboardState> emit) {
    emit(state.copyWith(selectedTabIndex: event.tabIndex));
  }

  void _onLoadDashboardData(
    LoadDashboardData event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock data
      final dashboardData = DashboardData(
        totalTrips: 3,
        estimatedDistance: 12.5,
        estimatedTravelTime: 38,
        currentTrips: [
          TripData(
            id: '1',
            origin: 'Home',
            destination: 'Office',
            startTime: DateTime(2023, 1, 1, 8, 5),
            endTime: DateTime(2023, 1, 1, 8, 34),
            status: TripStatus.inProgress,
            distance: 5.2,
            duration: 29,
          ),
          TripData(
            id: '2',
            origin: 'Office',
            destination: 'Fitness Center',
            startTime: DateTime(2023, 1, 1, 19, 10),
            endTime: DateTime(2023, 1, 1, 19, 30),
            status: TripStatus.scheduled,
            distance: 7.3,
            duration: 20,
          ),
        ],
      );

      emit(state.copyWith(
        isLoading: false,
        dashboardData: dashboardData,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }
}