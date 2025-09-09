import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadSettings() = _LoadSettings;
  const factory SettingsEvent.updateLocationConsent(bool consent) = _UpdateLocationConsent;
  const factory SettingsEvent.updateBackgroundLocationConsent(bool consent) = _UpdateBackgroundLocationConsent;
  const factory SettingsEvent.updateDataSharingConsent(bool consent) = _UpdateDataSharingConsent;
  const factory SettingsEvent.updateAnalyticsConsent(bool consent) = _UpdateAnalyticsConsent;
  const factory SettingsEvent.updateLocationAccuracy(String accuracy) = _UpdateLocationAccuracy;
  const factory SettingsEvent.updateDataRetentionPeriod(String period) = _UpdateDataRetentionPeriod;
  const factory SettingsEvent.exportData() = _ExportData;
  const factory SettingsEvent.deleteAllData() = _DeleteAllData;
  const factory SettingsEvent.clearTripHistory() = _ClearTripHistory;
}