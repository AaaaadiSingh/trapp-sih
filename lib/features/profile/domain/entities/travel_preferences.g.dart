// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelPreferencesImpl _$$TravelPreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$TravelPreferencesImpl(
  transportationModes:
      (json['transportationModes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  travelFrequency: json['travelFrequency'] as String,
  privacyConsent: json['privacyConsent'] as bool,
  dataProcessingConsent: json['dataProcessingConsent'] as bool? ?? false,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$TravelPreferencesImplToJson(
  _$TravelPreferencesImpl instance,
) => <String, dynamic>{
  'transportationModes': instance.transportationModes,
  'travelFrequency': instance.travelFrequency,
  'privacyConsent': instance.privacyConsent,
  'dataProcessingConsent': instance.dataProcessingConsent,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
