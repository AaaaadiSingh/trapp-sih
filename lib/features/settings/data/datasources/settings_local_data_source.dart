import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/entities/privacy_settings.dart';
import '../models/privacy_settings_model.dart';

abstract class SettingsLocalDataSource {
  Future<PrivacySettings> getPrivacySettings();
  Future<void> cachePrivacySettings(PrivacySettings settings);
  Future<String> exportUserData();
  Future<void> deleteUserData({required bool deleteAll});
}

const String CACHED_PRIVACY_SETTINGS = 'CACHED_PRIVACY_SETTINGS';

@LazySingleton(as: SettingsLocalDataSource)
class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final SharedPreferences sharedPreferences;

  SettingsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<PrivacySettings> getPrivacySettings() async {
    final jsonString = sharedPreferences.getString(CACHED_PRIVACY_SETTINGS);
    if (jsonString != null) {
      final jsonMap = json.decode(jsonString);
      return PrivacySettingsModel.fromJson(jsonMap).toEntity();
    } else {
      throw const CacheException('Failed to get privacy settings');
    }
  }

  @override
  Future<void> cachePrivacySettings(PrivacySettings settings) async {
    final settingsModel = PrivacySettingsModel.fromEntity(settings);
    final jsonString = json.encode(settingsModel.toJson());
    final success = await sharedPreferences.setString(CACHED_PRIVACY_SETTINGS, jsonString);
    if (!success) {
      throw const CacheException('Failed to save privacy settings');
    }
  }

  @override
  Future<String> exportUserData() async {
    try {
      // Get app documents directory
      final directory = await getApplicationDocumentsDirectory();
      final exportDir = Directory('${directory.path}/exports');
      if (!await exportDir.exists()) {
        await exportDir.create(recursive: true);
      }

      // Create export file with timestamp
      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
      final exportFile = File('${exportDir.path}/user_data_$timestamp.json');

      // Collect all user data
      final exportData = <String, dynamic>{};

      // Privacy settings
      try {
        final settings = await getPrivacySettings();
        final settingsModel = PrivacySettingsModel.fromEntity(settings);
        exportData['privacy_settings'] = settingsModel.toJson();
      } catch (e) {
        exportData['privacy_settings'] = null;
      }

      // Add other data sources here (trips, surveys, etc.)
      exportData['export_timestamp'] = DateTime.now().toIso8601String();
      exportData['app_version'] = '1.0.0';

      // Write to file
      await exportFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(exportData),
      );

      return exportFile.path;
    } catch (e) {
      throw const CacheException('Failed to export user data');
    }
  }

  @override
  Future<void> deleteUserData({required bool deleteAll}) async {
    try {
      if (deleteAll) {
        // Clear all user data
        await sharedPreferences.clear();
        
        // Delete app documents directory
        final directory = await getApplicationDocumentsDirectory();
        if (await directory.exists()) {
          await directory.delete(recursive: true);
        }
      } else {
        // Only clear trip history (implement based on your data structure)
        // For now, we'll just clear specific keys
        const keysToRemove = [
          'CACHED_TRIPS',
          'CACHED_TRIP_LOGS',
          'CACHED_LOCATION_DATA',
        ];
        
        for (final key in keysToRemove) {
          await sharedPreferences.remove(key);
        }
      }
    } catch (e) {
      throw const CacheException('Failed to delete user data');
    }
  }
}