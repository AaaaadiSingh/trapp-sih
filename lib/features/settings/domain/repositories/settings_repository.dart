import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/privacy_settings.dart';

abstract class SettingsRepository {
  Future<Either<Failure, PrivacySettings>> getPrivacySettings();
  Future<Either<Failure, void>> updatePrivacySettings(PrivacySettings settings);
  Future<Either<Failure, String>> exportUserData();
  Future<Either<Failure, void>> deleteUserData({required bool deleteAll});
}