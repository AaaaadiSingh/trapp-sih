// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardDataImpl _$$DashboardDataImplFromJson(Map<String, dynamic> json) =>
    _$DashboardDataImpl(
      totalTrips: (json['totalTrips'] as num).toInt(),
      estimatedDistance: (json['estimatedDistance'] as num).toDouble(),
      estimatedTravelTime: (json['estimatedTravelTime'] as num).toInt(),
      currentTrips:
          (json['currentTrips'] as List<dynamic>)
              .map((e) => TripData.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$DashboardDataImplToJson(_$DashboardDataImpl instance) =>
    <String, dynamic>{
      'totalTrips': instance.totalTrips,
      'estimatedDistance': instance.estimatedDistance,
      'estimatedTravelTime': instance.estimatedTravelTime,
      'currentTrips': instance.currentTrips,
    };

_$TripDataImpl _$$TripDataImplFromJson(Map<String, dynamic> json) =>
    _$TripDataImpl(
      id: json['id'] as String,
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      status: $enumDecode(_$TripStatusEnumMap, json['status']),
      distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TripDataImplToJson(_$TripDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin': instance.origin,
      'destination': instance.destination,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'status': _$TripStatusEnumMap[instance.status]!,
      'distance': instance.distance,
      'duration': instance.duration,
    };

const _$TripStatusEnumMap = {
  TripStatus.scheduled: 'scheduled',
  TripStatus.inProgress: 'inProgress',
  TripStatus.completed: 'completed',
  TripStatus.cancelled: 'cancelled',
};
