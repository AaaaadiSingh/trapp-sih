import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/error_handler.dart';
import '../../domain/entities/privacy_settings.dart';

abstract class SettingsRemoteDataSource {
  Future<void> updatePrivacySettings(PrivacySettings settings);
  Future<void> deleteUserData({required bool deleteAll});
}

@LazySingleton(as: SettingsRemoteDataSource)
class SettingsRemoteDataSourceImpl implements SettingsRemoteDataSource {
  final ApiService _apiService;

  SettingsRemoteDataSourceImpl(this._apiService);

  @override
  Future<void> updatePrivacySettings(PrivacySettings settings) async {
    return handleApiCall(() async {
      final response = await _apiService.put(
        ApiEndpoints.updateUserSettings,
        data: {
          'userId': AppConstants.userId,
          'location_consent': settings.locationConsent,
          'background_location_consent': settings.backgroundLocationConsent,
          'data_sharing_consent': settings.dataSharingConsent,
          'analytics_consent': settings.analyticsConsent,
          'location_accuracy': settings.locationAccuracy.value,
          'data_retention_period': settings.dataRetentionPeriod,
        },
      );

      if (response.statusCode != 200) {
        throw const ServerException('Failed to update privacy settings');
      }
    });
  }

  @override
  Future<void> deleteUserData({required bool deleteAll}) async {
    return handleApiCall(() async {
      final response = await _apiService.delete(
        ApiEndpoints.deleteUserData,
        queryParameters: {'delete_all': deleteAll.toString()},
      );

      if (response.statusCode != 200) {
        throw const ServerException('Failed to delete user data');
      }
    });
  }
}
