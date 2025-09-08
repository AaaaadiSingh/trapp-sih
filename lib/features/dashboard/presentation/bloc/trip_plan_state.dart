part of 'trip_plan_bloc.dart';

@freezed
class TripPlanState with _$TripPlanState {
  const factory TripPlanState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    List<TripPlan>? tripPlans,
    String? error,
    String? successMessage,
  }) = _TripPlanState;
}