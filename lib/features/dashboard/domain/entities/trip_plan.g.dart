// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripPlanImpl _$$TripPlanImplFromJson(Map<String, dynamic> json) =>
    _$TripPlanImpl(
      id: json['id'] as String,
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      plannedDate: DateTime.parse(json['plannedDate'] as String),
      plannedTime: DateTime.parse(json['plannedTime'] as String),
      transportMode: $enumDecode(_$TransportModeEnumMap, json['transportMode']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TripPlanImplToJson(_$TripPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin': instance.origin,
      'destination': instance.destination,
      'plannedDate': instance.plannedDate.toIso8601String(),
      'plannedTime': instance.plannedTime.toIso8601String(),
      'transportMode': _$TransportModeEnumMap[instance.transportMode]!,
      'notes': instance.notes,
    };

const _$TransportModeEnumMap = {
  TransportMode.car: 'car',
  TransportMode.publicTransport: 'publicTransport',
  TransportMode.bicycle: 'bicycle',
  TransportMode.walking: 'walking',
};
