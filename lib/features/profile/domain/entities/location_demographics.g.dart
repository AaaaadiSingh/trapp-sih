// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_demographics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDemographicsImpl _$$LocationDemographicsImplFromJson(
  Map<String, dynamic> json,
) => _$LocationDemographicsImpl(
  homeLocation: json['homeLocation'] as String,
  workLocation: json['workLocation'] as String,
  shareLocationData: json['shareLocationData'] as bool,
  privacyConsent: json['privacyConsent'] as bool,
  dataProcessingConsent: json['dataProcessingConsent'] as bool? ?? false,
  privacyLevel:
      $enumDecodeNullable(
        _$LocationPrivacyLevelEnumMap,
        json['privacyLevel'],
      ) ??
      LocationPrivacyLevel.city,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$LocationDemographicsImplToJson(
  _$LocationDemographicsImpl instance,
) => <String, dynamic>{
  'homeLocation': instance.homeLocation,
  'workLocation': instance.workLocation,
  'shareLocationData': instance.shareLocationData,
  'privacyConsent': instance.privacyConsent,
  'dataProcessingConsent': instance.dataProcessingConsent,
  'privacyLevel': _$LocationPrivacyLevelEnumMap[instance.privacyLevel]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

const _$LocationPrivacyLevelEnumMap = {
  LocationPrivacyLevel.exact: 'exact',
  LocationPrivacyLevel.neighborhood: 'neighborhood',
  LocationPrivacyLevel.city: 'city',
  LocationPrivacyLevel.region: 'region',
};
