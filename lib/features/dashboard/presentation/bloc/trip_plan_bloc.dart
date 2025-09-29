import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/trip_plan.dart';
import '../../../../core/services/local_storage_service.dart';

part 'trip_plan_bloc.freezed.dart';
part 'trip_plan_event.dart';
part 'trip_plan_state.dart';

@injectable
class TripPlanBloc extends Bloc<TripPlanEvent, TripPlanState> {
  final LocalStorageService _localStorageService;

  TripPlanBloc(this._localStorageService) : super(const TripPlanState()) {
    on<LoadTripPlans>(_onLoadTripPlans);
    on<CreateTripPlan>(_onCreateTripPlan);
    on<DeleteTripPlan>(_onDeleteTripPlan);
    
    // Load trips on initialization
    add(const LoadTripPlans());
  }

  void _onLoadTripPlans(LoadTripPlans event, Emitter<TripPlanState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final result = await _localStorageService.getPlannedTrips();
      
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          error: failure.message,
        )),
        (tripPlans) => emit(state.copyWith(
          isLoading: false,
          tripPlans: tripPlans,
        )),
      );
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
      final newTripPlan = TripPlan(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        origin: event.origin,
        destination: event.destination,
        plannedDate: event.plannedDate,
        plannedTime: event.plannedTime,
        transportMode: event.transportMode,
        notes: event.notes,
      );

      final result = await _localStorageService.savePlannedTrip(newTripPlan);
      
      result.fold(
        (failure) => emit(state.copyWith(
          isSubmitting: false,
          error: failure.message,
        )),
        (_) {
          final updatedTripPlans = List<TripPlan>.from(state.tripPlans ?? [])
            ..add(newTripPlan);
          
          emit(state.copyWith(
            isSubmitting: false,
            tripPlans: updatedTripPlans,
            successMessage: 'Trip plan created successfully!',
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        error: e.toString(),
      ));
    }
  }

  void _onDeleteTripPlan(DeleteTripPlan event, Emitter<TripPlanState> emit) async {
    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      final result = await _localStorageService.deletePlannedTrip(event.tripId);
      
      result.fold(
        (failure) => emit(state.copyWith(
          isSubmitting: false,
          error: failure.message,
        )),
        (_) {
          final updatedTripPlans = List<TripPlan>.from(state.tripPlans ?? [])
            ..removeWhere((trip) => trip.id == event.tripId);
          
          emit(state.copyWith(
            isSubmitting: false,
            tripPlans: updatedTripPlans,
            successMessage: 'Trip plan deleted successfully!',
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        error: e.toString(),
      ));
    }
  }
}