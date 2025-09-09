import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/privacy_settings.dart';

part 'privacy_settings_model.freezed.dart';
part 'privacy_settings_model.g.dart';

@freezed
class PrivacySettingsModel with _$PrivacySettingsModel {
  const factory PrivacySettingsModel({
    required bool locationConsent,
    required bool backgroundLocationConsent,
    required bool dataSharingConsent,
    required bool analyticsConsent,
    required LocationAccuracy locationAccuracy,
    required DataRetentionPeriod dataRetentionPeriod,
    @Default(0) int totalTrips,
    @Default(0) int totalDataPoints,
    @Default('0 MB') String dataSize,
    @JsonKey(name: 'last_backup')
    DateTime? lastBackup,
  }) = _PrivacySettingsModel;

  factory PrivacySettingsModel.fromJson(Map<String, dynamic> json) => PrivacySettingsModel(
    locationConsent: json['locationConsent'] as bool? ?? false,
    backgroundLocationConsent: json['backgroundLocationConsent'] as bool? ?? false,
    dataSharingConsent: json['dataSharingConsent'] as bool? ?? false,
    analyticsConsent: json['analyticsConsent'] as bool? ?? false,
    locationAccuracy: LocationAccuracy.fromValue(json['locationAccuracy'] as String? ?? 'high'),
    dataRetentionPeriod: DataRetentionPeriod.fromValue(json['dataRetentionPeriod'] as String? ?? '1_year'),
    totalTrips: json['totalTrips'] as int? ?? 0,
    totalDataPoints: json['totalDataPoints'] as int? ?? 0,
    dataSize: json['dataSize'] as String? ?? '0 MB',
    lastBackup: json['last_backup'] != null ? DateTime.parse(json['last_backup'] as String) : null,
  );

  Map<String, dynamic> toJson() => {
    'locationConsent': locationConsent,
    'backgroundLocationConsent': backgroundLocationConsent,
    'dataSharingConsent': dataSharingConsent,
    'analyticsConsent': analyticsConsent,
    'locationAccuracy': locationAccuracy.value,
    'dataRetentionPeriod': dataRetentionPeriod.value,
    'totalTrips': totalTrips,
    'totalDataPoints': totalDataPoints,
    'dataSize': dataSize,
    'last_backup': lastBackup?.toIso8601String(),
  };

  factory PrivacySettingsModel.fromEntity(PrivacySettings entity) {
    return PrivacySettingsModel(
      locationConsent: entity.locationConsent,
      backgroundLocationConsent: entity.backgroundLocationConsent,
      dataSharingConsent: entity.dataSharingConsent,
      analyticsConsent: entity.analyticsConsent,
      locationAccuracy: entity.locationAccuracy,
      dataRetentionPeriod: entity.dataRetentionPeriod,
      totalTrips: entity.totalTrips,
      totalDataPoints: entity.totalDataPoints,
      dataSize: entity.dataSize,
      lastBackup: entity.lastBackup,
    );
  }
}

extension PrivacySettingsModelX on PrivacySettingsModel {
  PrivacySettings toEntity() {
    return PrivacySettings(
      locationConsent: locationConsent,
      backgroundLocationConsent: backgroundLocationConsent,
      dataSharingConsent: dataSharingConsent,
      analyticsConsent: analyticsConsent,
      locationAccuracy: locationAccuracy,
      dataRetentionPeriod: dataRetentionPeriod,
      totalTrips: totalTrips,
      totalDataPoints: totalDataPoints,
      dataSize: dataSize,
      lastBackup: lastBackup,
    );
  }
}