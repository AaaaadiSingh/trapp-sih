// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      userStats: UserStats.fromJson(json['user_stats'] as Map<String, dynamic>),
      recentTrips:
          (json['recent_trips'] as List<dynamic>)
              .map((e) => Trip.fromJson(e as Map<String, dynamic>))
              .toList(),
      upcomingTrips:
          (json['upcoming_trips'] as List<dynamic>)
              .map((e) => Trip.fromJson(e as Map<String, dynamic>))
              .toList(),
      quickActions:
          (json['quick_actions'] as List<dynamic>)
              .map((e) => QuickAction.fromJson(e as Map<String, dynamic>))
              .toList(),
      achievements:
          (json['achievements'] as List<dynamic>)
              .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
              .toList(),
      carbonFootprint: CarbonFootprintData.fromJson(
        json['carbon_footprint'] as Map<String, dynamic>,
      ),
      costSummary: CostSummary.fromJson(
        json['cost_summary'] as Map<String, dynamic>,
      ),
      weatherInfo:
          json['weather_info'] == null
              ? null
              : WeatherInfo.fromJson(
                json['weather_info'] as Map<String, dynamic>,
              ),
      trafficAlerts:
          (json['traffic_alerts'] as List<dynamic>?)
              ?.map((e) => TrafficAlert.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'user_stats': instance.userStats,
      'recent_trips': instance.recentTrips,
      'upcoming_trips': instance.upcomingTrips,
      'quick_actions': instance.quickActions,
      'achievements': instance.achievements,
      'carbon_footprint': instance.carbonFootprint,
      'cost_summary': instance.costSummary,
      'weather_info': instance.weatherInfo,
      'traffic_alerts': instance.trafficAlerts,
    };

_$UserStatsImpl _$$UserStatsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatsImpl(
      totalTrips: (json['total_trips'] as num).toInt(),
      tripsThisWeek: (json['trips_this_week'] as num).toInt(),
      tripsThisMonth: (json['trips_this_month'] as num).toInt(),
      totalDistanceKm: (json['total_distance_km'] as num).toDouble(),
      totalTimeHours: (json['total_time_hours'] as num).toDouble(),
      averageTripDuration: (json['average_trip_duration'] as num).toDouble(),
      favoriteTransportMode: json['favorite_transport_mode'] as String?,
      mostVisitedLocation:
          json['most_visited_location'] == null
              ? null
              : LocationPoint.fromJson(
                json['most_visited_location'] as Map<String, dynamic>,
              ),
      streakDays: (json['streak_days'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      experiencePoints: (json['experience_points'] as num).toInt(),
    );

Map<String, dynamic> _$$UserStatsImplToJson(_$UserStatsImpl instance) =>
    <String, dynamic>{
      'total_trips': instance.totalTrips,
      'trips_this_week': instance.tripsThisWeek,
      'trips_this_month': instance.tripsThisMonth,
      'total_distance_km': instance.totalDistanceKm,
      'total_time_hours': instance.totalTimeHours,
      'average_trip_duration': instance.averageTripDuration,
      'favorite_transport_mode': instance.favoriteTransportMode,
      'most_visited_location': instance.mostVisitedLocation,
      'streak_days': instance.streakDays,
      'level': instance.level,
      'experience_points': instance.experiencePoints,
    };

_$QuickActionImpl _$$QuickActionImplFromJson(Map<String, dynamic> json) =>
    _$QuickActionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      action: json['action'] as String,
      actionData: json['action_data'] as Map<String, dynamic>?,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$$QuickActionImplToJson(_$QuickActionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'action': instance.action,
      'action_data': instance.actionData,
      'is_enabled': instance.isEnabled,
    };

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      achievementType: json['achievement_type'] as String,
      isUnlocked: json['is_unlocked'] as bool,
      unlockedAt:
          json['unlocked_at'] == null
              ? null
              : DateTime.parse(json['unlocked_at'] as String),
      progressCurrent: (json['progress_current'] as num?)?.toInt(),
      progressTarget: (json['progress_target'] as num?)?.toInt(),
      rewardPoints: (json['reward_points'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'achievement_type': instance.achievementType,
      'is_unlocked': instance.isUnlocked,
      'unlocked_at': instance.unlockedAt?.toIso8601String(),
      'progress_current': instance.progressCurrent,
      'progress_target': instance.progressTarget,
      'reward_points': instance.rewardPoints,
    };

_$CarbonFootprintDataImpl _$$CarbonFootprintDataImplFromJson(
  Map<String, dynamic> json,
) => _$CarbonFootprintDataImpl(
  totalEmissionsKg: (json['total_emissions_kg'] as num).toDouble(),
  thisWeekKg: (json['this_week_kg'] as num).toDouble(),
  thisMonthKg: (json['this_month_kg'] as num).toDouble(),
  savedEmissionsKg: (json['saved_emissions_kg'] as num).toDouble(),
  comparisonAverage: (json['comparison_average'] as num?)?.toDouble(),
  reductionPercentage: (json['reduction_percentage'] as num?)?.toDouble(),
  weeklyTrend:
      (json['weekly_trend'] as List<dynamic>)
          .map((e) => WeeklyEmission.fromJson(e as Map<String, dynamic>))
          .toList(),
  transportBreakdown:
      (json['transport_breakdown'] as List<dynamic>)
          .map((e) => TransportEmission.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$CarbonFootprintDataImplToJson(
  _$CarbonFootprintDataImpl instance,
) => <String, dynamic>{
  'total_emissions_kg': instance.totalEmissionsKg,
  'this_week_kg': instance.thisWeekKg,
  'this_month_kg': instance.thisMonthKg,
  'saved_emissions_kg': instance.savedEmissionsKg,
  'comparison_average': instance.comparisonAverage,
  'reduction_percentage': instance.reductionPercentage,
  'weekly_trend': instance.weeklyTrend,
  'transport_breakdown': instance.transportBreakdown,
};

_$WeeklyEmissionImpl _$$WeeklyEmissionImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyEmissionImpl(
      weekStart: DateTime.parse(json['week_start'] as String),
      emissionsKg: (json['emissions_kg'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeeklyEmissionImplToJson(
  _$WeeklyEmissionImpl instance,
) => <String, dynamic>{
  'week_start': instance.weekStart.toIso8601String(),
  'emissions_kg': instance.emissionsKg,
};

_$TransportEmissionImpl _$$TransportEmissionImplFromJson(
  Map<String, dynamic> json,
) => _$TransportEmissionImpl(
  transportMode: json['transport_mode'] as String,
  emissionsKg: (json['emissions_kg'] as num).toDouble(),
  percentage: (json['percentage'] as num).toDouble(),
);

Map<String, dynamic> _$$TransportEmissionImplToJson(
  _$TransportEmissionImpl instance,
) => <String, dynamic>{
  'transport_mode': instance.transportMode,
  'emissions_kg': instance.emissionsKg,
  'percentage': instance.percentage,
};

_$CostSummaryImpl _$$CostSummaryImplFromJson(Map<String, dynamic> json) =>
    _$CostSummaryImpl(
      totalSpent: (json['total_spent'] as num).toDouble(),
      thisWeek: (json['this_week'] as num).toDouble(),
      thisMonth: (json['this_month'] as num).toDouble(),
      averagePerTrip: (json['average_per_trip'] as num).toDouble(),
      savingsThisMonth: (json['savings_this_month'] as num?)?.toDouble(),
      budgetLimit: (json['budget_limit'] as num?)?.toDouble(),
      budgetUsedPercentage:
          (json['budget_used_percentage'] as num?)?.toDouble(),
      weeklyTrend:
          (json['weekly_trend'] as List<dynamic>)
              .map((e) => WeeklyCost.fromJson(e as Map<String, dynamic>))
              .toList(),
      transportBreakdown:
          (json['transport_breakdown'] as List<dynamic>)
              .map((e) => TransportCost.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$CostSummaryImplToJson(_$CostSummaryImpl instance) =>
    <String, dynamic>{
      'total_spent': instance.totalSpent,
      'this_week': instance.thisWeek,
      'this_month': instance.thisMonth,
      'average_per_trip': instance.averagePerTrip,
      'savings_this_month': instance.savingsThisMonth,
      'budget_limit': instance.budgetLimit,
      'budget_used_percentage': instance.budgetUsedPercentage,
      'weekly_trend': instance.weeklyTrend,
      'transport_breakdown': instance.transportBreakdown,
    };

_$WeeklyCostImpl _$$WeeklyCostImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyCostImpl(
      weekStart: DateTime.parse(json['week_start'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeeklyCostImplToJson(_$WeeklyCostImpl instance) =>
    <String, dynamic>{
      'week_start': instance.weekStart.toIso8601String(),
      'amount': instance.amount,
    };

_$TransportCostImpl _$$TransportCostImplFromJson(Map<String, dynamic> json) =>
    _$TransportCostImpl(
      transportMode: json['transport_mode'] as String,
      amount: (json['amount'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$TransportCostImplToJson(_$TransportCostImpl instance) =>
    <String, dynamic>{
      'transport_mode': instance.transportMode,
      'amount': instance.amount,
      'percentage': instance.percentage,
    };

_$WeatherInfoImpl _$$WeatherInfoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherInfoImpl(
      currentLocation: LocationPoint.fromJson(
        json['current_location'] as Map<String, dynamic>,
      ),
      currentWeather: WeatherConditions.fromJson(
        json['current_weather'] as Map<String, dynamic>,
      ),
      hourlyForecast:
          (json['hourly_forecast'] as List<dynamic>?)
              ?.map((e) => HourlyWeather.fromJson(e as Map<String, dynamic>))
              .toList(),
      travelRecommendations:
          (json['travel_recommendations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$WeatherInfoImplToJson(_$WeatherInfoImpl instance) =>
    <String, dynamic>{
      'current_location': instance.currentLocation,
      'current_weather': instance.currentWeather,
      'hourly_forecast': instance.hourlyForecast,
      'travel_recommendations': instance.travelRecommendations,
    };

_$HourlyWeatherImpl _$$HourlyWeatherImplFromJson(Map<String, dynamic> json) =>
    _$HourlyWeatherImpl(
      time: DateTime.parse(json['time'] as String),
      temperatureCelsius: (json['temperature_celsius'] as num).toDouble(),
      condition: json['condition'] as String,
      precipitationProbability:
          (json['precipitation_probability'] as num).toInt(),
    );

Map<String, dynamic> _$$HourlyWeatherImplToJson(_$HourlyWeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature_celsius': instance.temperatureCelsius,
      'condition': instance.condition,
      'precipitation_probability': instance.precipitationProbability,
    };

_$TrafficAlertImpl _$$TrafficAlertImplFromJson(Map<String, dynamic> json) =>
    _$TrafficAlertImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      alertType: json['alert_type'] as String,
      severityLevel: (json['severity_level'] as num).toInt(),
      affectedRoutes:
          (json['affected_routes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      estimatedDelay: (json['estimated_delay'] as num?)?.toInt(),
      startTime: DateTime.parse(json['start_time'] as String),
      endTime:
          json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$TrafficAlertImplToJson(_$TrafficAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'alert_type': instance.alertType,
      'severity_level': instance.severityLevel,
      'affected_routes': instance.affectedRoutes,
      'estimated_delay': instance.estimatedDelay,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'is_active': instance.isActive,
    };

_$TravelPatternsImpl _$$TravelPatternsImplFromJson(
  Map<String, dynamic> json,
) => _$TravelPatternsImpl(
  peakTravelHours:
      (json['peak_travel_hours'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  busiestDays:
      (json['busiest_days'] as List<dynamic>).map((e) => e as String).toList(),
  commonRoutes:
      (json['common_routes'] as List<dynamic>)
          .map((e) => CommonRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
  transportModeUsage:
      (json['transport_mode_usage'] as List<dynamic>)
          .map((e) => TransportModeUsage.fromJson(e as Map<String, dynamic>))
          .toList(),
  seasonalPatterns:
      (json['seasonal_patterns'] as List<dynamic>?)
          ?.map((e) => SeasonalPattern.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$TravelPatternsImplToJson(
  _$TravelPatternsImpl instance,
) => <String, dynamic>{
  'peak_travel_hours': instance.peakTravelHours,
  'busiest_days': instance.busiestDays,
  'common_routes': instance.commonRoutes,
  'transport_mode_usage': instance.transportModeUsage,
  'seasonal_patterns': instance.seasonalPatterns,
};

_$CommonRouteImpl _$$CommonRouteImplFromJson(Map<String, dynamic> json) =>
    _$CommonRouteImpl(
      startLocation: LocationPoint.fromJson(
        json['start_location'] as Map<String, dynamic>,
      ),
      endLocation: LocationPoint.fromJson(
        json['end_location'] as Map<String, dynamic>,
      ),
      frequency: (json['frequency'] as num).toInt(),
      averageDuration: (json['average_duration'] as num).toInt(),
      averageCost: (json['average_cost'] as num).toDouble(),
    );

Map<String, dynamic> _$$CommonRouteImplToJson(_$CommonRouteImpl instance) =>
    <String, dynamic>{
      'start_location': instance.startLocation,
      'end_location': instance.endLocation,
      'frequency': instance.frequency,
      'average_duration': instance.averageDuration,
      'average_cost': instance.averageCost,
    };

_$TransportModeUsageImpl _$$TransportModeUsageImplFromJson(
  Map<String, dynamic> json,
) => _$TransportModeUsageImpl(
  transportMode: json['transport_mode'] as String,
  usageCount: (json['usage_count'] as num).toInt(),
  usagePercentage: (json['usage_percentage'] as num).toDouble(),
  totalDistance: (json['total_distance'] as num).toDouble(),
  totalCost: (json['total_cost'] as num).toDouble(),
);

Map<String, dynamic> _$$TransportModeUsageImplToJson(
  _$TransportModeUsageImpl instance,
) => <String, dynamic>{
  'transport_mode': instance.transportMode,
  'usage_count': instance.usageCount,
  'usage_percentage': instance.usagePercentage,
  'total_distance': instance.totalDistance,
  'total_cost': instance.totalCost,
};

_$SeasonalPatternImpl _$$SeasonalPatternImplFromJson(
  Map<String, dynamic> json,
) => _$SeasonalPatternImpl(
  season: json['season'] as String,
  tripCount: (json['trip_count'] as num).toInt(),
  averageDistance: (json['average_distance'] as num).toDouble(),
  preferredTransportModes:
      (json['preferred_transport_modes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$SeasonalPatternImplToJson(
  _$SeasonalPatternImpl instance,
) => <String, dynamic>{
  'season': instance.season,
  'trip_count': instance.tripCount,
  'average_distance': instance.averageDistance,
  'preferred_transport_modes': instance.preferredTransportModes,
};

_$PersonalInsightsImpl _$$PersonalInsightsImplFromJson(
  Map<String, dynamic> json,
) => _$PersonalInsightsImpl(
  efficiencyScore: (json['efficiency_score'] as num).toDouble(),
  sustainabilityScore: (json['sustainability_score'] as num).toDouble(),
  costEfficiencyScore: (json['cost_efficiency_score'] as num).toDouble(),
  recommendations:
      (json['recommendations'] as List<dynamic>)
          .map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
  improvementAreas:
      (json['improvement_areas'] as List<dynamic>)
          .map((e) => ImprovementArea.fromJson(e as Map<String, dynamic>))
          .toList(),
  comparisonData:
      json['comparison_data'] == null
          ? null
          : BenchmarkData.fromJson(
            json['comparison_data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$PersonalInsightsImplToJson(
  _$PersonalInsightsImpl instance,
) => <String, dynamic>{
  'efficiency_score': instance.efficiencyScore,
  'sustainability_score': instance.sustainabilityScore,
  'cost_efficiency_score': instance.costEfficiencyScore,
  'recommendations': instance.recommendations,
  'improvement_areas': instance.improvementAreas,
  'comparison_data': instance.comparisonData,
};

_$RecommendationImpl _$$RecommendationImplFromJson(Map<String, dynamic> json) =>
    _$RecommendationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      recommendationType: json['recommendation_type'] as String,
      potentialSavings: (json['potential_savings'] as num?)?.toDouble(),
      environmentalImpact: (json['environmental_impact'] as num?)?.toDouble(),
      priorityLevel: (json['priority_level'] as num).toInt(),
      actionRequired: json['action_required'] as String?,
    );

Map<String, dynamic> _$$RecommendationImplToJson(
  _$RecommendationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'recommendation_type': instance.recommendationType,
  'potential_savings': instance.potentialSavings,
  'environmental_impact': instance.environmentalImpact,
  'priority_level': instance.priorityLevel,
  'action_required': instance.actionRequired,
};

_$ImprovementAreaImpl _$$ImprovementAreaImplFromJson(
  Map<String, dynamic> json,
) => _$ImprovementAreaImpl(
  area: json['area'] as String,
  currentScore: (json['current_score'] as num).toDouble(),
  targetScore: (json['target_score'] as num).toDouble(),
  improvementTips:
      (json['improvement_tips'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$ImprovementAreaImplToJson(
  _$ImprovementAreaImpl instance,
) => <String, dynamic>{
  'area': instance.area,
  'current_score': instance.currentScore,
  'target_score': instance.targetScore,
  'improvement_tips': instance.improvementTips,
};

_$BenchmarkDataImpl _$$BenchmarkDataImplFromJson(Map<String, dynamic> json) =>
    _$BenchmarkDataImpl(
      userPercentile: (json['user_percentile'] as num).toDouble(),
      averageTripsPerWeek: (json['average_trips_per_week'] as num).toDouble(),
      averageCostPerTrip: (json['average_cost_per_trip'] as num).toDouble(),
      averageEmissionsPerTrip:
          (json['average_emissions_per_trip'] as num).toDouble(),
      comparisonGroup: json['comparison_group'] as String,
    );

Map<String, dynamic> _$$BenchmarkDataImplToJson(_$BenchmarkDataImpl instance) =>
    <String, dynamic>{
      'user_percentile': instance.userPercentile,
      'average_trips_per_week': instance.averageTripsPerWeek,
      'average_cost_per_trip': instance.averageCostPerTrip,
      'average_emissions_per_trip': instance.averageEmissionsPerTrip,
      'comparison_group': instance.comparisonGroup,
    };
