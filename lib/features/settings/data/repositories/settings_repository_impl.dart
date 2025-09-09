import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/privacy_settings.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_local_data_source.dart';
import '../datasources/settings_remote_data_source.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource localDataSource;
  final SettingsRemoteDataSource remoteDataSource;

  SettingsRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, PrivacySettings>> getPrivacySettings() async {
    try {
      final localSettings = await localDataSource.getPrivacySettings();
      return Right(localSettings);
    } on CacheException {
      // If no local settings, return default settings
      const defaultSettings = PrivacySettings(
        locationConsent: false,
        backgroundLocationConsent: false,
        dataSharingConsent: false,
        analyticsConsent: false,
        locationAccuracy: LocationAccuracy.high,
        dataRetentionPeriod: DataRetentionPeriod.oneYear,
      );
      await localDataSource.cachePrivacySettings(defaultSettings);
      return const Right(defaultSettings);
    } catch (e) {
      return Left(CacheFailure(message: 'Failed to get privacy settings: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> updatePrivacySettings(PrivacySettings settings) async {
    try {
      await localDataSource.cachePrivacySettings(settings);
      
      // Optionally sync with remote
      try {
        await remoteDataSource.updatePrivacySettings(settings);
      } catch (e) {
        // Continue even if remote sync fails
        print('Failed to sync settings to remote: $e');
      }
      
      return const Right(null);
    } on CacheException {
      return Left(CacheFailure(message: 'Failed to update privacy settings'));
    } catch (e) {
      return Left(CacheFailure(message: 'Failed to update privacy settings: $e'));
    }
  }

  @override
  Future<Either<Failure, String>> exportUserData() async {
    try {
      final filePath = await localDataSource.exportUserData();
      return Right(filePath);
    } on CacheException {
      return Left(CacheFailure(message: 'Failed to export user data'));
    } catch (e) {
      return Left(CacheFailure(message: 'Failed to export user data: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUserData({required bool deleteAll}) async {
    try {
      await localDataSource.deleteUserData(deleteAll: deleteAll);
      
      // Optionally sync with remote
      try {
        await remoteDataSource.deleteUserData(deleteAll: deleteAll);
      } catch (e) {
        // Continue even if remote sync fails
        print('Failed to sync data deletion to remote: $e');
      }
      
      return const Right(null);
    } on CacheException {
      return Left(CacheFailure(message: 'Failed to delete user data'));
    } catch (e) {
      return Left(CacheFailure(message: 'Failed to delete user data: $e'));
    }
  }
}