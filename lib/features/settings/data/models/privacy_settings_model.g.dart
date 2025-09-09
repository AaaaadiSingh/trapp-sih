// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivacySettingsModelImpl _$$PrivacySettingsModelImplFromJson(
  Map<String, dynamic> json,
) => _$PrivacySettingsModelImpl(
  locationConsent: json['locationConsent'] as bool,
  backgroundLocationConsent: json['backgroundLocationConsent'] as bool,
  dataSharingConsent: json['dataSharingConsent'] as bool,
  analyticsConsent: json['analyticsConsent'] as bool,
  locationAccuracy: $enumDecode(
    _$LocationAccuracyEnumMap,
    json['locationAccuracy'],
  ),
  dataRetentionPeriod: $enumDecode(
    _$DataRetentionPeriodEnumMap,
    json['dataRetentionPeriod'],
  ),
  totalTrips: (json['totalTrips'] as num?)?.toInt() ?? 0,
  totalDataPoints: (json['totalDataPoints'] as num?)?.toInt() ?? 0,
  dataSize: json['dataSize'] as String? ?? '0 MB',
  lastBackup:
      json['last_backup'] == null
          ? null
          : DateTime.parse(json['last_backup'] as String),
);

Map<String, dynamic> _$$PrivacySettingsModelImplToJson(
  _$PrivacySettingsModelImpl instance,
) => <String, dynamic>{
  'locationConsent': instance.locationConsent,
  'backgroundLocationConsent': instance.backgroundLocationConsent,
  'dataSharingConsent': instance.dataSharingConsent,
  'analyticsConsent': instance.analyticsConsent,
  'locationAccuracy': _$LocationAccuracyEnumMap[instance.locationAccuracy]!,
  'dataRetentionPeriod':
      _$DataRetentionPeriodEnumMap[instance.dataRetentionPeriod]!,
  'totalTrips': instance.totalTrips,
  'totalDataPoints': instance.totalDataPoints,
  'dataSize': instance.dataSize,
  'last_backup': instance.lastBackup?.toIso8601String(),
};

const _$LocationAccuracyEnumMap = {
  LocationAccuracy.high: 'high',
  LocationAccuracy.medium: 'medium',
  LocationAccuracy.low: 'low',
};

const _$DataRetentionPeriodEnumMap = {
  DataRetentionPeriod.oneMonth: 'oneMonth',
  DataRetentionPeriod.threeMonths: 'threeMonths',
  DataRetentionPeriod.sixMonths: 'sixMonths',
  DataRetentionPeriod.oneYear: 'oneYear',
  DataRetentionPeriod.forever: 'forever',
};
