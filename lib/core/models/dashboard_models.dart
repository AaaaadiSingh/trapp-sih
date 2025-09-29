import 'package:freezed_annotation/freezed_annotation.dart';
import 'trip_models.dart';

part 'dashboard_models.freezed.dart';
part 'dashboard_models.g.dart';

// Dashboard Response Models
@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    @JsonKey(name: 'user_stats') required UserStats userStats,
    @JsonKey(name: 'recent_trips') required List<Trip> recentTrips,
    @JsonKey(name: 'upcoming_trips') required List<Trip> upcomingTrips,
    @JsonKey(name: 'quick_actions') required List<QuickAction> quickActions,
    @JsonKey(name: 'achievements') required List<Achievement> achievements,
    @JsonKey(name: 'carbon_footprint') required CarbonFootprintData carbonFootprint,
    @JsonKey(name: 'cost_summary') required CostSummary costSummary,
    @JsonKey(name: 'weather_info') WeatherInfo? weatherInfo,
    @JsonKey(name: 'traffic_alerts') List<TrafficAlert>? trafficAlerts,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

@freezed
class UserStats with _$UserStats {
  const factory UserStats({
    @JsonKey(name: 'total_trips') required int totalTrips,
    @JsonKey(name: 'trips_this_week') required int tripsThisWeek,
    @JsonKey(name: 'trips_this_month') required int tripsThisMonth,
    @JsonKey(name: 'total_distance_km') required double totalDistanceKm,
    @JsonKey(name: 'total_time_hours') required double totalTimeHours,
    @JsonKey(name: 'average_trip_duration') required double averageTripDuration,
    @JsonKey(name: 'favorite_transport_mode') String? favoriteTransportMode,
    @JsonKey(name: 'most_visited_location') LocationPoint? mostVisitedLocation,
    @JsonKey(name: 'streak_days') required int streakDays,
    @JsonKey(name: 'level') required int level,
    @JsonKey(name: 'experience_points') required int experiencePoints,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);
}

@freezed
class QuickAction with _$QuickAction {
  const factory QuickAction({
    required String id,
    required String title,
    required String description,
    required String icon,
    required String action,
    @JsonKey(name: 'action_data') Map<String, dynamic>? actionData,
    @JsonKey(name: 'is_enabled') required bool isEnabled,
  }) = _QuickAction;

  factory QuickAction.fromJson(Map<String, dynamic> json) =>
      _$QuickActionFromJson(json);
}

@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required String title,
    required String description,
    required String icon,
    @JsonKey(name: 'achievement_type') required String achievementType,
    @JsonKey(name: 'is_unlocked') required bool isUnlocked,
    @JsonKey(name: 'unlocked_at') DateTime? unlockedAt,
    @JsonKey(name: 'progress_current') int? progressCurrent,
    @JsonKey(name: 'progress_target') int? progressTarget,
    @JsonKey(name: 'reward_points') int? rewardPoints,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
}

@freezed
class CarbonFootprintData with _$CarbonFootprintData {
  const factory CarbonFootprintData({
    @JsonKey(name: 'total_emissions_kg') required double totalEmissionsKg,
    @JsonKey(name: 'this_week_kg') required double thisWeekKg,
    @JsonKey(name: 'this_month_kg') required double thisMonthKg,
    @JsonKey(name: 'saved_emissions_kg') required double savedEmissionsKg,
    @JsonKey(name: 'comparison_average') double? comparisonAverage,
    @JsonKey(name: 'reduction_percentage') double? reductionPercentage,
    @JsonKey(name: 'weekly_trend') required List<WeeklyEmission> weeklyTrend,
    @JsonKey(name: 'transport_breakdown') required List<TransportEmission> transportBreakdown,
  }) = _CarbonFootprintData;

  factory CarbonFootprintData.fromJson(Map<String, dynamic> json) =>
      _$CarbonFootprintDataFromJson(json);
}

@freezed
class WeeklyEmission with _$WeeklyEmission {
  const factory WeeklyEmission({
    @JsonKey(name: 'week_start') required DateTime weekStart,
    @JsonKey(name: 'emissions_kg') required double emissionsKg,
  }) = _WeeklyEmission;

  factory WeeklyEmission.fromJson(Map<String, dynamic> json) =>
      _$WeeklyEmissionFromJson(json);
}

@freezed
class TransportEmission with _$TransportEmission {
  const factory TransportEmission({
    @JsonKey(name: 'transport_mode') required String transportMode,
    @JsonKey(name: 'emissions_kg') required double emissionsKg,
    @JsonKey(name: 'percentage') required double percentage,
  }) = _TransportEmission;

  factory TransportEmission.fromJson(Map<String, dynamic> json) =>
      _$TransportEmissionFromJson(json);
}

@freezed
class CostSummary with _$CostSummary {
  const factory CostSummary({
    @JsonKey(name: 'total_spent') required double totalSpent,
    @JsonKey(name: 'this_week') required double thisWeek,
    @JsonKey(name: 'this_month') required double thisMonth,
    @JsonKey(name: 'average_per_trip') required double averagePerTrip,
    @JsonKey(name: 'savings_this_month') double? savingsThisMonth,
    @JsonKey(name: 'budget_limit') double? budgetLimit,
    @JsonKey(name: 'budget_used_percentage') double? budgetUsedPercentage,
    @JsonKey(name: 'weekly_trend') required List<WeeklyCost> weeklyTrend,
    @JsonKey(name: 'transport_breakdown') required List<TransportCost> transportBreakdown,
  }) = _CostSummary;

  factory CostSummary.fromJson(Map<String, dynamic> json) =>
      _$CostSummaryFromJson(json);
}

@freezed
class WeeklyCost with _$WeeklyCost {
  const factory WeeklyCost({
    @JsonKey(name: 'week_start') required DateTime weekStart,
    @JsonKey(name: 'amount') required double amount,
  }) = _WeeklyCost;

  factory WeeklyCost.fromJson(Map<String, dynamic> json) =>
      _$WeeklyCostFromJson(json);
}

@freezed
class TransportCost with _$TransportCost {
  const factory TransportCost({
    @JsonKey(name: 'transport_mode') required String transportMode,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'percentage') required double percentage,
  }) = _TransportCost;

  factory TransportCost.fromJson(Map<String, dynamic> json) =>
      _$TransportCostFromJson(json);
}

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    @JsonKey(name: 'current_location') required LocationPoint currentLocation,
    @JsonKey(name: 'current_weather') required WeatherConditions currentWeather,
    @JsonKey(name: 'hourly_forecast') List<HourlyWeather>? hourlyForecast,
    @JsonKey(name: 'travel_recommendations') List<String>? travelRecommendations,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);
}

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required DateTime time,
    @JsonKey(name: 'temperature_celsius') required double temperatureCelsius,
    required String condition,
    @JsonKey(name: 'precipitation_probability') required int precipitationProbability,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}

@freezed
class TrafficAlert with _$TrafficAlert {
  const factory TrafficAlert({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'alert_type') required String alertType,
    @JsonKey(name: 'severity_level') required int severityLevel,
    @JsonKey(name: 'affected_routes') List<String>? affectedRoutes,
    @JsonKey(name: 'estimated_delay') int? estimatedDelay,
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _TrafficAlert;

  factory TrafficAlert.fromJson(Map<String, dynamic> json) =>
      _$TrafficAlertFromJson(json);
}

// Analytics Models
@freezed
class TravelPatterns with _$TravelPatterns {
  const factory TravelPatterns({
    @JsonKey(name: 'peak_travel_hours') required List<int> peakTravelHours,
    @JsonKey(name: 'busiest_days') required List<String> busiestDays,
    @JsonKey(name: 'common_routes') required List<CommonRoute> commonRoutes,
    @JsonKey(name: 'transport_mode_usage') required List<TransportModeUsage> transportModeUsage,
    @JsonKey(name: 'seasonal_patterns') List<SeasonalPattern>? seasonalPatterns,
  }) = _TravelPatterns;

  factory TravelPatterns.fromJson(Map<String, dynamic> json) =>
      _$TravelPatternsFromJson(json);
}

@freezed
class CommonRoute with _$CommonRoute {
  const factory CommonRoute({
    @JsonKey(name: 'start_location') required LocationPoint startLocation,
    @JsonKey(name: 'end_location') required LocationPoint endLocation,
    @JsonKey(name: 'frequency') required int frequency,
    @JsonKey(name: 'average_duration') required int averageDuration,
    @JsonKey(name: 'average_cost') required double averageCost,
  }) = _CommonRoute;

  factory CommonRoute.fromJson(Map<String, dynamic> json) =>
      _$CommonRouteFromJson(json);
}

@freezed
class TransportModeUsage with _$TransportModeUsage {
  const factory TransportModeUsage({
    @JsonKey(name: 'transport_mode') required String transportMode,
    @JsonKey(name: 'usage_count') required int usageCount,
    @JsonKey(name: 'usage_percentage') required double usagePercentage,
    @JsonKey(name: 'total_distance') required double totalDistance,
    @JsonKey(name: 'total_cost') required double totalCost,
  }) = _TransportModeUsage;

  factory TransportModeUsage.fromJson(Map<String, dynamic> json) =>
      _$TransportModeUsageFromJson(json);
}

@freezed
class SeasonalPattern with _$SeasonalPattern {
  const factory SeasonalPattern({
    required String season,
    @JsonKey(name: 'trip_count') required int tripCount,
    @JsonKey(name: 'average_distance') required double averageDistance,
    @JsonKey(name: 'preferred_transport_modes') required List<String> preferredTransportModes,
  }) = _SeasonalPattern;

  factory SeasonalPattern.fromJson(Map<String, dynamic> json) =>
      _$SeasonalPatternFromJson(json);
}

@freezed
class PersonalInsights with _$PersonalInsights {
  const factory PersonalInsights({
    @JsonKey(name: 'efficiency_score') required double efficiencyScore,
    @JsonKey(name: 'sustainability_score') required double sustainabilityScore,
    @JsonKey(name: 'cost_efficiency_score') required double costEfficiencyScore,
    @JsonKey(name: 'recommendations') required List<Recommendation> recommendations,
    @JsonKey(name: 'improvement_areas') required List<ImprovementArea> improvementAreas,
    @JsonKey(name: 'comparison_data') BenchmarkData? comparisonData,
  }) = _PersonalInsights;

  factory PersonalInsights.fromJson(Map<String, dynamic> json) =>
      _$PersonalInsightsFromJson(json);
}

@freezed
class Recommendation with _$Recommendation {
  const factory Recommendation({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'recommendation_type') required String recommendationType,
    @JsonKey(name: 'potential_savings') double? potentialSavings,
    @JsonKey(name: 'environmental_impact') double? environmentalImpact,
    @JsonKey(name: 'priority_level') required int priorityLevel,
    @JsonKey(name: 'action_required') String? actionRequired,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}

@freezed
class ImprovementArea with _$ImprovementArea {
  const factory ImprovementArea({
    required String area,
    @JsonKey(name: 'current_score') required double currentScore,
    @JsonKey(name: 'target_score') required double targetScore,
    @JsonKey(name: 'improvement_tips') required List<String> improvementTips,
  }) = _ImprovementArea;

  factory ImprovementArea.fromJson(Map<String, dynamic> json) =>
      _$ImprovementAreaFromJson(json);
}

@freezed
class BenchmarkData with _$BenchmarkData {
  const factory BenchmarkData({
    @JsonKey(name: 'user_percentile') required double userPercentile,
    @JsonKey(name: 'average_trips_per_week') required double averageTripsPerWeek,
    @JsonKey(name: 'average_cost_per_trip') required double averageCostPerTrip,
    @JsonKey(name: 'average_emissions_per_trip') required double averageEmissionsPerTrip,
    @JsonKey(name: 'comparison_group') required String comparisonGroup,
  }) = _BenchmarkData;

  factory BenchmarkData.fromJson(Map<String, dynamic> json) =>
      _$BenchmarkDataFromJson(json);
}