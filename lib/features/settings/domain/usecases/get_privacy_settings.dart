import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/privacy_settings.dart';
import '../repositories/settings_repository.dart';

@injectable
class GetPrivacySettings implements UseCase<PrivacySettings, NoParams> {
  final SettingsRepository repository;

  GetPrivacySettings(this.repository);

  @override
  Future<Either<Failure, PrivacySettings>> call(NoParams params) async {
    return await repository.getPrivacySettings();
  }
}