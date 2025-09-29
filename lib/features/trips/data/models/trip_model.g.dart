// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripModelImpl _$$TripModelImplFromJson(Map<String, dynamic> json) =>
    _$TripModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      startLocation: json['startLocation'] as String,
      endLocation: json['endLocation'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime:
          json['endTime'] == null
              ? null
              : DateTime.parse(json['endTime'] as String),
      transportMode: json['transportMode'] as String,
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toDouble(),
      carbonFootprint: (json['carbonFootprint'] as num?)?.toDouble(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TripModelImplToJson(_$TripModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'transportMode': instance.transportMode,
      'distance': instance.distance,
      'duration': instance.duration,
      'carbonFootprint': instance.carbonFootprint,
      'metadata': instance.metadata,
    };

_$StartTripRequestImpl _$$StartTripRequestImplFromJson(
  Map<String, dynamic> json,
) => _$StartTripRequestImpl(
  startLocation: json['startLocation'] as String,
  transportMode: json['transportMode'] as String,
  plannedDestination: json['plannedDestination'] as String?,
  estimatedDuration: (json['estimatedDuration'] as num?)?.toInt(),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$StartTripRequestImplToJson(
  _$StartTripRequestImpl instance,
) => <String, dynamic>{
  'startLocation': instance.startLocation,
  'transportMode': instance.transportMode,
  'plannedDestination': instance.plannedDestination,
  'estimatedDuration': instance.estimatedDuration,
  'metadata': instance.metadata,
};

_$EndTripRequestImpl _$$EndTripRequestImplFromJson(Map<String, dynamic> json) =>
    _$EndTripRequestImpl(
      endLocation: json['endLocation'] as String,
      actualDuration: (json['actualDuration'] as num?)?.toInt(),
      totalDistance: (json['totalDistance'] as num?)?.toDouble(),
      fuelConsumed: (json['fuelConsumed'] as num?)?.toDouble(),
      carbonFootprint: (json['carbonFootprint'] as num?)?.toDouble(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EndTripRequestImplToJson(
  _$EndTripRequestImpl instance,
) => <String, dynamic>{
  'endLocation': instance.endLocation,
  'actualDuration': instance.actualDuration,
  'totalDistance': instance.totalDistance,
  'fuelConsumed': instance.fuelConsumed,
  'carbonFootprint': instance.carbonFootprint,
  'metadata': instance.metadata,
};
