part of 'trip_plan_bloc.dart';

@freezed
class TripPlanEvent with _$TripPlanEvent {
  const factory TripPlanEvent.loadTripPlans() = LoadTripPlans;
  const factory TripPlanEvent.createTripPlan({
    required String origin,
    required String destination,
    required DateTime plannedDate,
    required DateTime plannedTime,
    required TransportMode transportMode,
    String? notes,
  }) = CreateTripPlan;
}