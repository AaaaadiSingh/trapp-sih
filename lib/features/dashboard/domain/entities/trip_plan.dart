import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_plan.freezed.dart';
part 'trip_plan.g.dart';

@freezed
class TripPlan with _$TripPlan {
  const factory TripPlan({
    required String id,
    required String origin,
    required String destination,
    required DateTime plannedDate,
    required DateTime plannedTime,
    required TransportMode transportMode,
    String? notes,
  }) = _TripPlan;

  factory TripPlan.fromJson(Map<String, dynamic> json) =>
      _$TripPlanFromJson(json);
}

enum TransportMode {
  car,
  publicTransport,
  bicycle,
  walking
}