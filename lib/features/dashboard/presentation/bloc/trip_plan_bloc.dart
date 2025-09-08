import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/trip_plan.dart';

part 'trip_plan_bloc.freezed.dart';
part 'trip_plan_event.dart';
part 'trip_plan_state.dart';

@injectable
class TripPlanBloc extends Bloc<TripPlanEvent, TripPlanState> {
  TripPlanBloc() : super(const TripPlanState()) {
    on<LoadTripPlans>(_onLoadTripPlans);
    on<CreateTripPlan>(_onCreateTripPlan);
  }

  void _onLoadTripPlans(LoadTripPlans event, Emitter<TripPlanState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock data
      final tripPlans = [
        TripPlan(
          id: '1',
          origin: 'Home',
          destination: 'Office',
          plannedDate: DateTime.now().add(const Duration(days: 1)),
          plannedTime: DateTime(2023, 1, 1, 8, 0),
          transportMode: TransportMode.car,
          notes: 'Morning commute',
        ),
        TripPlan(
          id: '2',
          origin: 'Office',
          destination: 'Home',
          plannedDate: DateTime.now().add(const Duration(days: 1)),
          plannedTime: DateTime(2023, 1, 1, 17, 30),
          transportMode: TransportMode.car,
          notes: 'Evening commute',
        ),
      ];

      emit(state.copyWith(
        isLoading: false,
        tripPlans: tripPlans,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  void _onCreateTripPlan(CreateTripPlan event, Emitter<TripPlanState> emit) async {
    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final newTripPlan = TripPlan(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        origin: event.origin,
        destination: event.destination,
        plannedDate: event.plannedDate,
        plannedTime: event.plannedTime,
        transportMode: event.transportMode,
        notes: event.notes,
      );

      final updatedTripPlans = List<TripPlan>.from(state.tripPlans ?? [])
        ..add(newTripPlan);

      emit(state.copyWith(
        isSubmitting: false,
        tripPlans: updatedTripPlans,
        successMessage: 'Trip plan created successfully!',
      ));
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        error: e.toString(),
      ));
    }
  }
}