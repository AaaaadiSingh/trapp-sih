import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    required String id,
    required String userId,
    required String startLocation,
    required String endLocation,
    required DateTime startTime,
    DateTime? endTime,
    required String transportMode,
    double? distance,
    double? duration,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}

@freezed
class StartTripRequest with _$StartTripRequest {
  const factory StartTripRequest({
    required String startLocation,
    required String transportMode,
    String? plannedDestination,
    int? estimatedDuration,
    Map<String, dynamic>? metadata,
  }) = _StartTripRequest;

  factory StartTripRequest.fromJson(Map<String, dynamic> json) =>
      _$StartTripRequestFromJson(json);
}

@freezed
class EndTripRequest with _$EndTripRequest {
  const factory EndTripRequest({
    required String endLocation,
    int? actualDuration,
    double? totalDistance,
    double? fuelConsumed,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  }) = _EndTripRequest;

  factory EndTripRequest.fromJson(Map<String, dynamic> json) =>
      _$EndTripRequestFromJson(json);
}
