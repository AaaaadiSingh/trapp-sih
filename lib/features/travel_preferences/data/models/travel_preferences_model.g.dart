// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelPreferencesModelImpl _$$TravelPreferencesModelImplFromJson(
  Map<String, dynamic> json,
) => _$TravelPreferencesModelImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  preferredTransportModes:
      (json['preferredTransportModes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  ecoFriendlyMode: json['ecoFriendlyMode'] as bool,
  maxWalkingDistance: (json['maxWalkingDistance'] as num).toDouble(),
  avoidTolls: json['avoidTolls'] as bool,
  avoidHighways: json['avoidHighways'] as bool,
  customPreferences: json['customPreferences'] as Map<String, dynamic>?,
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$TravelPreferencesModelImplToJson(
  _$TravelPreferencesModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'preferredTransportModes': instance.preferredTransportModes,
  'ecoFriendlyMode': instance.ecoFriendlyMode,
  'maxWalkingDistance': instance.maxWalkingDistance,
  'avoidTolls': instance.avoidTolls,
  'avoidHighways': instance.avoidHighways,
  'customPreferences': instance.customPreferences,
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

_$UpdateTravelPreferencesRequestImpl
_$$UpdateTravelPreferencesRequestImplFromJson(Map<String, dynamic> json) =>
    _$UpdateTravelPreferencesRequestImpl(
      preferredTransportModes:
          (json['preferredTransportModes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      ecoFriendlyMode: json['ecoFriendlyMode'] as bool,
      maxWalkingDistance: (json['maxWalkingDistance'] as num).toDouble(),
      avoidTolls: json['avoidTolls'] as bool,
      avoidHighways: json['avoidHighways'] as bool,
      customPreferences: json['customPreferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UpdateTravelPreferencesRequestImplToJson(
  _$UpdateTravelPreferencesRequestImpl instance,
) => <String, dynamic>{
  'preferredTransportModes': instance.preferredTransportModes,
  'ecoFriendlyMode': instance.ecoFriendlyMode,
  'maxWalkingDistance': instance.maxWalkingDistance,
  'avoidTolls': instance.avoidTolls,
  'avoidHighways': instance.avoidHighways,
  'customPreferences': instance.customPreferences,
};

_$CreateTravelPreferencesRequestImpl
_$$CreateTravelPreferencesRequestImplFromJson(Map<String, dynamic> json) =>
    _$CreateTravelPreferencesRequestImpl(
      preferredTransportModes:
          (json['preferredTransportModes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      ecoFriendlyMode: json['ecoFriendlyMode'] as bool,
      maxWalkingDistance: (json['maxWalkingDistance'] as num).toDouble(),
      avoidTolls: json['avoidTolls'] as bool,
      avoidHighways: json['avoidHighways'] as bool,
      customPreferences: json['customPreferences'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CreateTravelPreferencesRequestImplToJson(
  _$CreateTravelPreferencesRequestImpl instance,
) => <String, dynamic>{
  'preferredTransportModes': instance.preferredTransportModes,
  'ecoFriendlyMode': instance.ecoFriendlyMode,
  'maxWalkingDistance': instance.maxWalkingDistance,
  'avoidTolls': instance.avoidTolls,
  'avoidHighways': instance.avoidHighways,
  'customPreferences': instance.customPreferences,
};
