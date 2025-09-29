// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsModelImpl _$$DashboardStatsModelImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardStatsModelImpl(
  userId: json['userId'] as String,
  totalTrips: (json['totalTrips'] as num).toInt(),
  totalDistance: (json['totalDistance'] as num).toDouble(),
  totalDuration: (json['totalDuration'] as num).toDouble(),
  totalCarbonSaved: (json['totalCarbonSaved'] as num).toDouble(),
  transportModeBreakdown: Map<String, int>.from(
    json['transportModeBreakdown'] as Map,
  ),
  recentTrips:
      (json['recentTrips'] as List<dynamic>)
          .map((e) => TripSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
  lastUpdated:
      json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$$DashboardStatsModelImplToJson(
  _$DashboardStatsModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'totalTrips': instance.totalTrips,
  'totalDistance': instance.totalDistance,
  'totalDuration': instance.totalDuration,
  'totalCarbonSaved': instance.totalCarbonSaved,
  'transportModeBreakdown': instance.transportModeBreakdown,
  'recentTrips': instance.recentTrips,
  'lastUpdated': instance.lastUpdated?.toIso8601String(),
};

_$TripSummaryImpl _$$TripSummaryImplFromJson(Map<String, dynamic> json) =>
    _$TripSummaryImpl(
      id: json['id'] as String,
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      transportMode: json['transportMode'] as String,
      distance: (json['distance'] as num).toDouble(),
      duration: (json['duration'] as num).toDouble(),
      carbonFootprint: (json['carbonFootprint'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TripSummaryImplToJson(_$TripSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin': instance.origin,
      'destination': instance.destination,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'transportMode': instance.transportMode,
      'distance': instance.distance,
      'duration': instance.duration,
      'carbonFootprint': instance.carbonFootprint,
    };

_$DashboardSummaryModelImpl _$$DashboardSummaryModelImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardSummaryModelImpl(
  userId: json['userId'] as String,
  weeklyDistance: (json['weeklyDistance'] as num).toDouble(),
  monthlyDistance: (json['monthlyDistance'] as num).toDouble(),
  weeklyCarbonSaved: (json['weeklyCarbonSaved'] as num).toDouble(),
  monthlyCarbonSaved: (json['monthlyCarbonSaved'] as num).toDouble(),
  weeklyTrips: (json['weeklyTrips'] as num).toInt(),
  monthlyTrips: (json['monthlyTrips'] as num).toInt(),
  mostUsedTransportMode: json['mostUsedTransportMode'] as String,
  achievements:
      (json['achievements'] as List<dynamic>).map((e) => e as String).toList(),
  lastUpdated:
      json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$$DashboardSummaryModelImplToJson(
  _$DashboardSummaryModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'weeklyDistance': instance.weeklyDistance,
  'monthlyDistance': instance.monthlyDistance,
  'weeklyCarbonSaved': instance.weeklyCarbonSaved,
  'monthlyCarbonSaved': instance.monthlyCarbonSaved,
  'weeklyTrips': instance.weeklyTrips,
  'monthlyTrips': instance.monthlyTrips,
  'mostUsedTransportMode': instance.mostUsedTransportMode,
  'achievements': instance.achievements,
  'lastUpdated': instance.lastUpdated?.toIso8601String(),
};

_$WeeklyStatsModelImpl _$$WeeklyStatsModelImplFromJson(
  Map<String, dynamic> json,
) => _$WeeklyStatsModelImpl(
  userId: json['userId'] as String,
  dailyStats:
      (json['dailyStats'] as List<dynamic>)
          .map((e) => DailyStats.fromJson(e as Map<String, dynamic>))
          .toList(),
  totalDistance: (json['totalDistance'] as num).toDouble(),
  totalCarbonSaved: (json['totalCarbonSaved'] as num).toDouble(),
  totalTrips: (json['totalTrips'] as num).toInt(),
  weekStartDate:
      json['weekStartDate'] == null
          ? null
          : DateTime.parse(json['weekStartDate'] as String),
);

Map<String, dynamic> _$$WeeklyStatsModelImplToJson(
  _$WeeklyStatsModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'dailyStats': instance.dailyStats,
  'totalDistance': instance.totalDistance,
  'totalCarbonSaved': instance.totalCarbonSaved,
  'totalTrips': instance.totalTrips,
  'weekStartDate': instance.weekStartDate?.toIso8601String(),
};

_$DailyStatsImpl _$$DailyStatsImplFromJson(Map<String, dynamic> json) =>
    _$DailyStatsImpl(
      date: DateTime.parse(json['date'] as String),
      distance: (json['distance'] as num).toDouble(),
      carbonSaved: (json['carbonSaved'] as num).toDouble(),
      trips: (json['trips'] as num).toInt(),
      transportModeCount: Map<String, int>.from(
        json['transportModeCount'] as Map,
      ),
    );

Map<String, dynamic> _$$DailyStatsImplToJson(_$DailyStatsImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'distance': instance.distance,
      'carbonSaved': instance.carbonSaved,
      'trips': instance.trips,
      'transportModeCount': instance.transportModeCount,
    };
