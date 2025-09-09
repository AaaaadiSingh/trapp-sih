import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    @Default(false) bool isExporting,
    @Default(false) bool isDeleting,
    String? error,
    String? successMessage,
    
    // Privacy Settings
    @Default(true) bool locationConsent,
    @Default(false) bool backgroundLocationConsent,
    @Default(false) bool dataSharingConsent,
    @Default(false) bool analyticsConsent,
    
    // Location Settings
    @Default('high') String locationAccuracy, // 'high', 'medium', 'low'
    @Default('1_year') String dataRetentionPeriod, // '1_month', '6_months', '1_year', '2_years'
    
    // Data Statistics
    @Default(0) int totalTrips,
    @Default(0) int locationPoints,
    @Default(0) int totalDataPoints,
    @Default('0 MB') String dataSize,
    DateTime? lastBackup,
  }) = _SettingsState;
}