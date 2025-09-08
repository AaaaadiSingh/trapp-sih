import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_data.freezed.dart';
part 'dashboard_data.g.dart';

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required int totalTrips,
    required double estimatedDistance,
    required int estimatedTravelTime,
    required List<TripData> currentTrips,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

@freezed
class TripData with _$TripData {
  const factory TripData({
    required String id,
    required String origin,
    required String destination,
    required DateTime startTime,
    required DateTime endTime,
    required TripStatus status,
    @Default(0.0) double distance,
    @Default(0) int duration,
  }) = _TripData;

  factory TripData.fromJson(Map<String, dynamic> json) =>
      _$TripDataFromJson(json);
}

enum TripStatus {
  scheduled,
  inProgress,
  completed,
  cancelled
}