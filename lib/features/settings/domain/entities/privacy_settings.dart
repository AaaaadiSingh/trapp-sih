import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_settings.freezed.dart';

@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    required bool locationConsent,
    required bool backgroundLocationConsent,
    required bool dataSharingConsent,
    required bool analyticsConsent,
    required LocationAccuracy locationAccuracy,
    required DataRetentionPeriod dataRetentionPeriod,
    @Default(0) int totalTrips,
    @Default(0) int totalDataPoints,
    @Default('0 MB') String dataSize,
    DateTime? lastBackup,
  }) = _PrivacySettings;
}

enum LocationAccuracy {
  high('high', 'High Accuracy', 'Best accuracy using GPS, Wi-Fi, and mobile networks'),
  medium('medium', 'Balanced', 'Good accuracy with moderate battery usage'),
  low('low', 'Battery Saver', 'Lower accuracy to save battery life');

  const LocationAccuracy(this.value, this.displayName, this.description);
  
  final String value;
  final String displayName;
  final String description;
  
  static LocationAccuracy fromValue(String value) {
    return LocationAccuracy.values.firstWhere(
      (accuracy) => accuracy.value == value,
      orElse: () => LocationAccuracy.high,
    );
  }
}

enum DataRetentionPeriod {
  oneMonth('1_month', '1 Month', 'Data deleted after 30 days'),
  threeMonths('3_months', '3 Months', 'Data deleted after 90 days'),
  sixMonths('6_months', '6 Months', 'Data deleted after 180 days'),
  oneYear('1_year', '1 Year', 'Data deleted after 365 days'),
  forever('forever', 'Keep Forever', 'Data never automatically deleted');

  const DataRetentionPeriod(this.value, this.displayName, this.description);
  
  final String value;
  final String displayName;
  final String description;
  
  static DataRetentionPeriod fromValue(String value) {
    return DataRetentionPeriod.values.firstWhere(
      (period) => period.value == value,
      orElse: () => DataRetentionPeriod.oneYear,
    );
  }
}