import 'dart:async';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:geolocator/geolocator.dart';

import 'local_storage_service.dart';

/// Service for managing location tracking configuration and user preferences
@singleton
class LocationConfigurationService {
  final LocalStorageService _localStorage;
  final Logger _logger = Logger();

  // Configuration keys
  static const String _configKey = 'location_configuration';
  static const String _userPreferencesKey = 'location_user_preferences';
  static const String _privacySettingsKey = 'location_privacy_settings';

  // Current configuration
  LocationConfiguration _currentConfig = LocationConfiguration.defaultConfig();
  UserLocationPreferences _userPreferences = UserLocationPreferences.defaultPreferences();
  PrivacySettings _privacySettings = PrivacySettings.defaultSettings();

  // Stream controllers
  final StreamController<LocationConfiguration> _configController =
      StreamController<LocationConfiguration>.broadcast();
  final StreamController<UserLocationPreferences> _preferencesController =
      StreamController<UserLocationPreferences>.broadcast();

  // Getters
  Stream<LocationConfiguration> get configStream => _configController.stream;
  Stream<UserLocationPreferences> get preferencesStream => _preferencesController.stream;
  LocationConfiguration get currentConfig => _currentConfig;
  UserLocationPreferences get userPreferences => _userPreferences;
  PrivacySettings get privacySettings => _privacySettings;

  LocationConfigurationService(this._localStorage);

  /// Initialize configuration service
  Future<void> initialize() async {
    try {
      await _loadConfiguration();
      await _loadUserPreferences();
      await _loadPrivacySettings();
      
      _logger.i('Location configuration service initialized');
    } catch (e) {
      _logger.e('Error initializing location configuration: $e');
      // Use default configurations on error
    }
  }

  /// Load configuration from storage
  Future<void> _loadConfiguration() async {
    try {
      final result = await _localStorage.getString(_configKey);
      final configJson = result.fold(
        (failure) => null,
        (value) => value,
      );
      
      if (configJson != null) {
        final configMap = jsonDecode(configJson) as Map<String, dynamic>;
        _currentConfig = LocationConfiguration.fromJson(configMap);
        _logger.d('Location configuration loaded from storage');
      } else {
        _currentConfig = LocationConfiguration.defaultConfig();
        await _saveConfiguration();
        _logger.d('Default location configuration created');
      }
    } catch (e) {
      _logger.e('Error loading configuration: $e');
      _currentConfig = LocationConfiguration.defaultConfig();
    }
  }

  /// Load user preferences from storage
  Future<void> _loadUserPreferences() async {
    try {
      final result = await _localStorage.getString(_userPreferencesKey);
      final preferencesJson = result.fold(
        (failure) => null,
        (value) => value,
      );
      
      if (preferencesJson != null) {
        final preferencesMap = jsonDecode(preferencesJson) as Map<String, dynamic>;
        _userPreferences = UserLocationPreferences.fromJson(preferencesMap);
        _logger.d('User preferences loaded from storage');
      } else {
        _userPreferences = UserLocationPreferences.defaultPreferences();
        await _saveUserPreferences();
        _logger.d('Default user preferences created');
      }
    } catch (e) {
      _logger.e('Error loading user preferences: $e');
      _userPreferences = UserLocationPreferences.defaultPreferences();
    }
  }

  /// Load privacy settings from storage
  Future<void> _loadPrivacySettings() async {
    try {
      final result = await _localStorage.getString(_privacySettingsKey);
      final privacyJson = result.fold(
        (failure) => null,
        (value) => value,
      );
      
      if (privacyJson != null) {
        final privacyMap = jsonDecode(privacyJson) as Map<String, dynamic>;
        _privacySettings = PrivacySettings.fromJson(privacyMap);
        _logger.d('Privacy settings loaded from storage');
      } else {
        _privacySettings = PrivacySettings.defaultSettings();
        await _savePrivacySettings();
        _logger.d('Default privacy settings created');
      }
    } catch (e) {
      _logger.e('Error loading privacy settings: $e');
      _privacySettings = PrivacySettings.defaultSettings();
    }
  }

  /// Update location configuration
  Future<void> updateConfiguration(LocationConfiguration newConfig) async {
    try {
      _currentConfig = newConfig;
      await _saveConfiguration();
      _configController.add(_currentConfig);
      
      _logger.i('Location configuration updated');
    } catch (e) {
      _logger.e('Error updating configuration: $e');
      rethrow;
    }
  }

  /// Update user preferences
  Future<void> updateUserPreferences(UserLocationPreferences newPreferences) async {
    try {
      _userPreferences = newPreferences;
      await _saveUserPreferences();
      _preferencesController.add(_userPreferences);
      
      _logger.i('User preferences updated');
    } catch (e) {
      _logger.e('Error updating user preferences: $e');
      rethrow;
    }
  }

  /// Update privacy settings
  Future<void> updatePrivacySettings(PrivacySettings newSettings) async {
    try {
      _privacySettings = newSettings;
      await _savePrivacySettings();
      
      _logger.i('Privacy settings updated');
    } catch (e) {
      _logger.e('Error updating privacy settings: $e');
      rethrow;
    }
  }

  /// Save configuration to storage
  Future<void> _saveConfiguration() async {
    try {
      final configJson = jsonEncode(_currentConfig.toJson());
      final result = await _localStorage.setString(_configKey, configJson);
      result.fold(
        (failure) => throw Exception('Failed to save configuration: ${failure.message}'),
        (_) => null,
      );
    } catch (e) {
      _logger.e('Error saving configuration: $e');
      rethrow;
    }
  }

  /// Save user preferences to storage
  Future<void> _saveUserPreferences() async {
    try {
      final preferencesJson = jsonEncode(_userPreferences.toJson());
      final result = await _localStorage.setString(_userPreferencesKey, preferencesJson);
      result.fold(
        (failure) => throw Exception('Failed to save user preferences: ${failure.message}'),
        (_) => null,
      );
    } catch (e) {
      _logger.e('Error saving user preferences: $e');
      rethrow;
    }
  }

  /// Save privacy settings to storage
  Future<void> _savePrivacySettings() async {
    try {
      final privacyJson = jsonEncode(_privacySettings.toJson());
      final result = await _localStorage.setString(_privacySettingsKey, privacyJson);
      result.fold(
        (failure) => throw Exception('Failed to save privacy settings: ${failure.message}'),
        (_) => null,
      );
    } catch (e) {
      _logger.e('Error saving privacy settings: $e');
      rethrow;
    }
  }

  /// Get location settings for Geolocator
  LocationSettings getLocationSettings() {
    return LocationSettings(
      accuracy: _currentConfig.accuracy,
      distanceFilter: _currentConfig.distanceFilter.toInt(),
      timeLimit: _currentConfig.timeLimit,
    );
  }

  /// Get optimized configuration based on current conditions
  LocationConfiguration getOptimizedConfiguration({
    required bool isMoving,
    required double batteryLevel,
    required bool isCharging,
    required LocationAccuracy currentAccuracy,
  }) {
    var config = _currentConfig;

    // Adjust based on movement
    if (isMoving) {
      config = config.copyWith(
        updateInterval: _userPreferences.movingUpdateInterval,
        accuracy: _userPreferences.movingAccuracy,
        distanceFilter: _userPreferences.movingDistanceFilter,
      );
    } else {
      config = config.copyWith(
        updateInterval: _userPreferences.stationaryUpdateInterval,
        accuracy: _userPreferences.stationaryAccuracy,
        distanceFilter: _userPreferences.stationaryDistanceFilter,
      );
    }

    // Adjust based on battery level
    if (batteryLevel < _userPreferences.lowBatteryThreshold && !isCharging) {
      config = config.copyWith(
        updateInterval: Duration(
          milliseconds: (config.updateInterval.inMilliseconds * 1.5).round(),
        ),
        accuracy: LocationAccuracy.low,
        enableSensorFusion: false,
        enableNetworkLocation: false,
      );
    }

    // Adjust based on current accuracy
    if (currentAccuracy == LocationAccuracy.low) {
      config = config.copyWith(
        enableSensorFusion: true,
        enableNetworkLocation: true,
        kalmanFilterEnabled: true,
      );
    }

    return config;
  }

  /// Get configuration preset
  LocationConfiguration getPresetConfiguration(ConfigurationPreset preset) {
    switch (preset) {
      case ConfigurationPreset.highAccuracy:
        return LocationConfiguration.highAccuracyPreset();
      case ConfigurationPreset.balanced:
        return LocationConfiguration.balancedPreset();
      case ConfigurationPreset.powerSaving:
        return LocationConfiguration.powerSavingPreset();
      case ConfigurationPreset.custom:
        return _currentConfig;
    }
  }

  /// Apply configuration preset
  Future<void> applyPreset(ConfigurationPreset preset) async {
    final presetConfig = getPresetConfiguration(preset);
    await updateConfiguration(presetConfig);
    
    // Update user preferences to reflect preset choice
    final updatedPreferences = _userPreferences.copyWith(
      selectedPreset: preset,
    );
    await updateUserPreferences(updatedPreferences);
  }

  /// Reset to default configuration
  Future<void> resetToDefaults() async {
    await updateConfiguration(LocationConfiguration.defaultConfig());
    await updateUserPreferences(UserLocationPreferences.defaultPreferences());
    await updatePrivacySettings(PrivacySettings.defaultSettings());
    
    _logger.i('Configuration reset to defaults');
  }

  /// Validate configuration
  bool validateConfiguration(LocationConfiguration config) {
    // Check for reasonable values
    if (config.updateInterval.inMilliseconds < 1000) {
      _logger.w('Update interval too short: ${config.updateInterval.inMilliseconds}ms');
      return false;
    }

    if (config.distanceFilter < 0) {
      _logger.w('Distance filter cannot be negative: ${config.distanceFilter}');
      return false;
    }

    if (config.timeLimit != null && config.timeLimit!.inSeconds < 5) {
      _logger.w('Time limit too short: ${config.timeLimit!.inSeconds}s');
      return false;
    }

    return true;
  }

  /// Export configuration as JSON
  Map<String, dynamic> exportConfiguration() {
    return {
      'configuration': _currentConfig.toJson(),
      'userPreferences': _userPreferences.toJson(),
      'privacySettings': _privacySettings.toJson(),
      'exportTimestamp': DateTime.now().toIso8601String(),
    };
  }

  /// Import configuration from JSON
  Future<void> importConfiguration(Map<String, dynamic> data) async {
    try {
      if (data.containsKey('configuration')) {
        final config = LocationConfiguration.fromJson(data['configuration']);
        if (validateConfiguration(config)) {
          await updateConfiguration(config);
        }
      }

      if (data.containsKey('userPreferences')) {
        final preferences = UserLocationPreferences.fromJson(data['userPreferences']);
        await updateUserPreferences(preferences);
      }

      if (data.containsKey('privacySettings')) {
        final privacy = PrivacySettings.fromJson(data['privacySettings']);
        await updatePrivacySettings(privacy);
      }

      _logger.i('Configuration imported successfully');
    } catch (e) {
      _logger.e('Error importing configuration: $e');
      rethrow;
    }
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing LocationConfigurationService');
    _configController.close();
    _preferencesController.close();
  }
}

/// Location configuration class
class LocationConfiguration {
  final LocationAccuracy accuracy;
  final Duration updateInterval;
  final double distanceFilter;
  final Duration? timeLimit;
  final bool enableSensorFusion;
  final bool enableNetworkLocation;
  final bool enableGpsLocation;
  final bool kalmanFilterEnabled;
  final double kalmanFilterProcessNoise;
  final double kalmanFilterMeasurementNoise;
  final bool adaptiveAccuracy;
  final bool batteryOptimization;
  final int maxCachedPositions;
  final Duration positionCacheTimeout;

  const LocationConfiguration({
    required this.accuracy,
    required this.updateInterval,
    required this.distanceFilter,
    this.timeLimit,
    required this.enableSensorFusion,
    required this.enableNetworkLocation,
    required this.enableGpsLocation,
    required this.kalmanFilterEnabled,
    required this.kalmanFilterProcessNoise,
    required this.kalmanFilterMeasurementNoise,
    required this.adaptiveAccuracy,
    required this.batteryOptimization,
    required this.maxCachedPositions,
    required this.positionCacheTimeout,
  });

  /// Default configuration
  factory LocationConfiguration.defaultConfig() {
    return const LocationConfiguration(
      accuracy: LocationAccuracy.high,
      updateInterval: Duration(seconds: 5),
      distanceFilter: 5.0,
      timeLimit: Duration(seconds: 30),
      enableSensorFusion: true,
      enableNetworkLocation: true,
      enableGpsLocation: true,
      kalmanFilterEnabled: true,
      kalmanFilterProcessNoise: 0.1,
      kalmanFilterMeasurementNoise: 1.0,
      adaptiveAccuracy: true,
      batteryOptimization: true,
      maxCachedPositions: 100,
      positionCacheTimeout: Duration(minutes: 5),
    );
  }

  /// High accuracy preset
  factory LocationConfiguration.highAccuracyPreset() {
    return const LocationConfiguration(
      accuracy: LocationAccuracy.best,
      updateInterval: Duration(seconds: 2),
      distanceFilter: 1.0,
      timeLimit: Duration(seconds: 15),
      enableSensorFusion: true,
      enableNetworkLocation: true,
      enableGpsLocation: true,
      kalmanFilterEnabled: true,
      kalmanFilterProcessNoise: 0.05,
      kalmanFilterMeasurementNoise: 0.5,
      adaptiveAccuracy: true,
      batteryOptimization: false,
      maxCachedPositions: 200,
      positionCacheTimeout: Duration(minutes: 2),
    );
  }

  /// Balanced preset
  factory LocationConfiguration.balancedPreset() {
    return const LocationConfiguration(
      accuracy: LocationAccuracy.high,
      updateInterval: Duration(seconds: 5),
      distanceFilter: 5.0,
      timeLimit: Duration(seconds: 30),
      enableSensorFusion: true,
      enableNetworkLocation: true,
      enableGpsLocation: true,
      kalmanFilterEnabled: true,
      kalmanFilterProcessNoise: 0.1,
      kalmanFilterMeasurementNoise: 1.0,
      adaptiveAccuracy: true,
      batteryOptimization: true,
      maxCachedPositions: 100,
      positionCacheTimeout: Duration(minutes: 5),
    );
  }

  /// Power saving preset
  factory LocationConfiguration.powerSavingPreset() {
    return const LocationConfiguration(
      accuracy: LocationAccuracy.medium,
      updateInterval: Duration(seconds: 15),
      distanceFilter: 20.0,
      timeLimit: Duration(minutes: 1),
      enableSensorFusion: false,
      enableNetworkLocation: true,
      enableGpsLocation: false,
      kalmanFilterEnabled: false,
      kalmanFilterProcessNoise: 0.2,
      kalmanFilterMeasurementNoise: 2.0,
      adaptiveAccuracy: false,
      batteryOptimization: true,
      maxCachedPositions: 50,
      positionCacheTimeout: Duration(minutes: 10),
    );
  }

  /// Copy with modifications
  LocationConfiguration copyWith({
    LocationAccuracy? accuracy,
    Duration? updateInterval,
    double? distanceFilter,
    Duration? timeLimit,
    bool? enableSensorFusion,
    bool? enableNetworkLocation,
    bool? enableGpsLocation,
    bool? kalmanFilterEnabled,
    double? kalmanFilterProcessNoise,
    double? kalmanFilterMeasurementNoise,
    bool? adaptiveAccuracy,
    bool? batteryOptimization,
    int? maxCachedPositions,
    Duration? positionCacheTimeout,
  }) {
    return LocationConfiguration(
      accuracy: accuracy ?? this.accuracy,
      updateInterval: updateInterval ?? this.updateInterval,
      distanceFilter: distanceFilter ?? this.distanceFilter,
      timeLimit: timeLimit ?? this.timeLimit,
      enableSensorFusion: enableSensorFusion ?? this.enableSensorFusion,
      enableNetworkLocation: enableNetworkLocation ?? this.enableNetworkLocation,
      enableGpsLocation: enableGpsLocation ?? this.enableGpsLocation,
      kalmanFilterEnabled: kalmanFilterEnabled ?? this.kalmanFilterEnabled,
      kalmanFilterProcessNoise: kalmanFilterProcessNoise ?? this.kalmanFilterProcessNoise,
      kalmanFilterMeasurementNoise: kalmanFilterMeasurementNoise ?? this.kalmanFilterMeasurementNoise,
      adaptiveAccuracy: adaptiveAccuracy ?? this.adaptiveAccuracy,
      batteryOptimization: batteryOptimization ?? this.batteryOptimization,
      maxCachedPositions: maxCachedPositions ?? this.maxCachedPositions,
      positionCacheTimeout: positionCacheTimeout ?? this.positionCacheTimeout,
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'accuracy': accuracy.index,
      'updateInterval': updateInterval.inMilliseconds,
      'distanceFilter': distanceFilter,
      'timeLimit': timeLimit?.inMilliseconds,
      'enableSensorFusion': enableSensorFusion,
      'enableNetworkLocation': enableNetworkLocation,
      'enableGpsLocation': enableGpsLocation,
      'kalmanFilterEnabled': kalmanFilterEnabled,
      'kalmanFilterProcessNoise': kalmanFilterProcessNoise,
      'kalmanFilterMeasurementNoise': kalmanFilterMeasurementNoise,
      'adaptiveAccuracy': adaptiveAccuracy,
      'batteryOptimization': batteryOptimization,
      'maxCachedPositions': maxCachedPositions,
      'positionCacheTimeout': positionCacheTimeout.inMilliseconds,
    };
  }

  /// Create from JSON
  factory LocationConfiguration.fromJson(Map<String, dynamic> json) {
    return LocationConfiguration(
      accuracy: LocationAccuracy.values[json['accuracy'] as int],
      updateInterval: Duration(milliseconds: json['updateInterval'] as int),
      distanceFilter: (json['distanceFilter'] as num).toDouble(),
      timeLimit: json['timeLimit'] != null 
          ? Duration(milliseconds: json['timeLimit'] as int)
          : null,
      enableSensorFusion: json['enableSensorFusion'] as bool,
      enableNetworkLocation: json['enableNetworkLocation'] as bool,
      enableGpsLocation: json['enableGpsLocation'] as bool,
      kalmanFilterEnabled: json['kalmanFilterEnabled'] as bool,
      kalmanFilterProcessNoise: (json['kalmanFilterProcessNoise'] as num).toDouble(),
      kalmanFilterMeasurementNoise: (json['kalmanFilterMeasurementNoise'] as num).toDouble(),
      adaptiveAccuracy: json['adaptiveAccuracy'] as bool,
      batteryOptimization: json['batteryOptimization'] as bool,
      maxCachedPositions: json['maxCachedPositions'] as int,
      positionCacheTimeout: Duration(milliseconds: json['positionCacheTimeout'] as int),
    );
  }
}

/// User location preferences
class UserLocationPreferences {
  final ConfigurationPreset selectedPreset;
  final Duration movingUpdateInterval;
  final Duration stationaryUpdateInterval;
  final LocationAccuracy movingAccuracy;
  final LocationAccuracy stationaryAccuracy;
  final double movingDistanceFilter;
  final double stationaryDistanceFilter;
  final double lowBatteryThreshold;
  final bool enableNotifications;
  final bool enableVibration;
  final bool enableSound;
  final bool autoStartTracking;
  final bool backgroundTracking;
  final Duration maxTrackingDuration;

  const UserLocationPreferences({
    required this.selectedPreset,
    required this.movingUpdateInterval,
    required this.stationaryUpdateInterval,
    required this.movingAccuracy,
    required this.stationaryAccuracy,
    required this.movingDistanceFilter,
    required this.stationaryDistanceFilter,
    required this.lowBatteryThreshold,
    required this.enableNotifications,
    required this.enableVibration,
    required this.enableSound,
    required this.autoStartTracking,
    required this.backgroundTracking,
    required this.maxTrackingDuration,
  });

  /// Default preferences
  factory UserLocationPreferences.defaultPreferences() {
    return const UserLocationPreferences(
      selectedPreset: ConfigurationPreset.balanced,
      movingUpdateInterval: Duration(seconds: 3),
      stationaryUpdateInterval: Duration(seconds: 10),
      movingAccuracy: LocationAccuracy.high,
      stationaryAccuracy: LocationAccuracy.medium,
      movingDistanceFilter: 3.0,
      stationaryDistanceFilter: 10.0,
      lowBatteryThreshold: 20.0,
      enableNotifications: true,
      enableVibration: false,
      enableSound: false,
      autoStartTracking: false,
      backgroundTracking: true,
      maxTrackingDuration: Duration(hours: 8),
    );
  }

  /// Copy with modifications
  UserLocationPreferences copyWith({
    ConfigurationPreset? selectedPreset,
    Duration? movingUpdateInterval,
    Duration? stationaryUpdateInterval,
    LocationAccuracy? movingAccuracy,
    LocationAccuracy? stationaryAccuracy,
    double? movingDistanceFilter,
    double? stationaryDistanceFilter,
    double? lowBatteryThreshold,
    bool? enableNotifications,
    bool? enableVibration,
    bool? enableSound,
    bool? autoStartTracking,
    bool? backgroundTracking,
    Duration? maxTrackingDuration,
  }) {
    return UserLocationPreferences(
      selectedPreset: selectedPreset ?? this.selectedPreset,
      movingUpdateInterval: movingUpdateInterval ?? this.movingUpdateInterval,
      stationaryUpdateInterval: stationaryUpdateInterval ?? this.stationaryUpdateInterval,
      movingAccuracy: movingAccuracy ?? this.movingAccuracy,
      stationaryAccuracy: stationaryAccuracy ?? this.stationaryAccuracy,
      movingDistanceFilter: movingDistanceFilter ?? this.movingDistanceFilter,
      stationaryDistanceFilter: stationaryDistanceFilter ?? this.stationaryDistanceFilter,
      lowBatteryThreshold: lowBatteryThreshold ?? this.lowBatteryThreshold,
      enableNotifications: enableNotifications ?? this.enableNotifications,
      enableVibration: enableVibration ?? this.enableVibration,
      enableSound: enableSound ?? this.enableSound,
      autoStartTracking: autoStartTracking ?? this.autoStartTracking,
      backgroundTracking: backgroundTracking ?? this.backgroundTracking,
      maxTrackingDuration: maxTrackingDuration ?? this.maxTrackingDuration,
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'selectedPreset': selectedPreset.index,
      'movingUpdateInterval': movingUpdateInterval.inMilliseconds,
      'stationaryUpdateInterval': stationaryUpdateInterval.inMilliseconds,
      'movingAccuracy': movingAccuracy.index,
      'stationaryAccuracy': stationaryAccuracy.index,
      'movingDistanceFilter': movingDistanceFilter,
      'stationaryDistanceFilter': stationaryDistanceFilter,
      'lowBatteryThreshold': lowBatteryThreshold,
      'enableNotifications': enableNotifications,
      'enableVibration': enableVibration,
      'enableSound': enableSound,
      'autoStartTracking': autoStartTracking,
      'backgroundTracking': backgroundTracking,
      'maxTrackingDuration': maxTrackingDuration.inMilliseconds,
    };
  }

  /// Create from JSON
  factory UserLocationPreferences.fromJson(Map<String, dynamic> json) {
    return UserLocationPreferences(
      selectedPreset: ConfigurationPreset.values[json['selectedPreset'] as int],
      movingUpdateInterval: Duration(milliseconds: json['movingUpdateInterval'] as int),
      stationaryUpdateInterval: Duration(milliseconds: json['stationaryUpdateInterval'] as int),
      movingAccuracy: LocationAccuracy.values[json['movingAccuracy'] as int],
      stationaryAccuracy: LocationAccuracy.values[json['stationaryAccuracy'] as int],
      movingDistanceFilter: (json['movingDistanceFilter'] as num).toDouble(),
      stationaryDistanceFilter: (json['stationaryDistanceFilter'] as num).toDouble(),
      lowBatteryThreshold: (json['lowBatteryThreshold'] as num).toDouble(),
      enableNotifications: json['enableNotifications'] as bool,
      enableVibration: json['enableVibration'] as bool,
      enableSound: json['enableSound'] as bool,
      autoStartTracking: json['autoStartTracking'] as bool,
      backgroundTracking: json['backgroundTracking'] as bool,
      maxTrackingDuration: Duration(milliseconds: json['maxTrackingDuration'] as int),
    );
  }
}

/// Privacy settings
class PrivacySettings {
  final bool enableDataCollection;
  final bool enableLocationSharing;
  final bool enableAnalytics;
  final bool enableCrashReporting;
  final Duration dataRetentionPeriod;
  final bool anonymizeData;
  final bool encryptStoredData;
  final List<String> allowedDataTypes;

  const PrivacySettings({
    required this.enableDataCollection,
    required this.enableLocationSharing,
    required this.enableAnalytics,
    required this.enableCrashReporting,
    required this.dataRetentionPeriod,
    required this.anonymizeData,
    required this.encryptStoredData,
    required this.allowedDataTypes,
  });

  /// Default privacy settings
  factory PrivacySettings.defaultSettings() {
    return const PrivacySettings(
      enableDataCollection: true,
      enableLocationSharing: false,
      enableAnalytics: true,
      enableCrashReporting: true,
      dataRetentionPeriod: Duration(days: 30),
      anonymizeData: true,
      encryptStoredData: true,
      allowedDataTypes: ['location', 'performance', 'usage'],
    );
  }

  /// Copy with modifications
  PrivacySettings copyWith({
    bool? enableDataCollection,
    bool? enableLocationSharing,
    bool? enableAnalytics,
    bool? enableCrashReporting,
    Duration? dataRetentionPeriod,
    bool? anonymizeData,
    bool? encryptStoredData,
    List<String>? allowedDataTypes,
  }) {
    return PrivacySettings(
      enableDataCollection: enableDataCollection ?? this.enableDataCollection,
      enableLocationSharing: enableLocationSharing ?? this.enableLocationSharing,
      enableAnalytics: enableAnalytics ?? this.enableAnalytics,
      enableCrashReporting: enableCrashReporting ?? this.enableCrashReporting,
      dataRetentionPeriod: dataRetentionPeriod ?? this.dataRetentionPeriod,
      anonymizeData: anonymizeData ?? this.anonymizeData,
      encryptStoredData: encryptStoredData ?? this.encryptStoredData,
      allowedDataTypes: allowedDataTypes ?? this.allowedDataTypes,
    );
  }

  /// Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'enableDataCollection': enableDataCollection,
      'enableLocationSharing': enableLocationSharing,
      'enableAnalytics': enableAnalytics,
      'enableCrashReporting': enableCrashReporting,
      'dataRetentionPeriod': dataRetentionPeriod.inMilliseconds,
      'anonymizeData': anonymizeData,
      'encryptStoredData': encryptStoredData,
      'allowedDataTypes': allowedDataTypes,
    };
  }

  /// Create from JSON
  factory PrivacySettings.fromJson(Map<String, dynamic> json) {
    return PrivacySettings(
      enableDataCollection: json['enableDataCollection'] as bool,
      enableLocationSharing: json['enableLocationSharing'] as bool,
      enableAnalytics: json['enableAnalytics'] as bool,
      enableCrashReporting: json['enableCrashReporting'] as bool,
      dataRetentionPeriod: Duration(milliseconds: json['dataRetentionPeriod'] as int),
      anonymizeData: json['anonymizeData'] as bool,
      encryptStoredData: json['encryptStoredData'] as bool,
      allowedDataTypes: List<String>.from(json['allowedDataTypes'] as List),
    );
  }
}

/// Configuration presets
enum ConfigurationPreset {
  highAccuracy,
  balanced,
  powerSaving,
  custom,
}