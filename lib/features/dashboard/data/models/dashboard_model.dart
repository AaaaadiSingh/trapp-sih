import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardStatsModel with _$DashboardStatsModel {
  const factory DashboardStatsModel({
    required String userId,
    required int totalTrips,
    required double totalDistance,
    required double totalDuration,
    required double totalCarbonSaved,
    required Map<String, int> transportModeBreakdown,
    required List<TripSummary> recentTrips,
    DateTime? lastUpdated,
  }) = _DashboardStatsModel;

  factory DashboardStatsModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsModelFromJson(json);
}

@freezed
class TripSummary with _$TripSummary {
  const factory TripSummary({
    required String id,
    required String origin,
    required String destination,
    required DateTime startTime,
    required DateTime endTime,
    required String transportMode,
    required double distance,
    required double duration,
    double? carbonFootprint,
  }) = _TripSummary;

  factory TripSummary.fromJson(Map<String, dynamic> json) =>
      _$TripSummaryFromJson(json);
}

@freezed
class DashboardSummaryModel with _$DashboardSummaryModel {
  const factory DashboardSummaryModel({
    required String userId,
    required double weeklyDistance,
    required double monthlyDistance,
    required double weeklyCarbonSaved,
    required double monthlyCarbonSaved,
    required int weeklyTrips,
    required int monthlyTrips,
    required String mostUsedTransportMode,
    required List<String> achievements,
    DateTime? lastUpdated,
  }) = _DashboardSummaryModel;

  factory DashboardSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryModelFromJson(json);
}

@freezed
class WeeklyStatsModel with _$WeeklyStatsModel {
  const factory WeeklyStatsModel({
    required String userId,
    required List<DailyStats> dailyStats,
    required double totalDistance,
    required double totalCarbonSaved,
    required int totalTrips,
    DateTime? weekStartDate,
  }) = _WeeklyStatsModel;

  factory WeeklyStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyStatsModelFromJson(json);
}

@freezed
class DailyStats with _$DailyStats {
  const factory DailyStats({
    required DateTime date,
    required double distance,
    required double carbonSaved,
    required int trips,
    required Map<String, int> transportModeCount,
  }) = _DailyStats;

  factory DailyStats.fromJson(Map<String, dynamic> json) =>
      _$DailyStatsFromJson(json);
}
