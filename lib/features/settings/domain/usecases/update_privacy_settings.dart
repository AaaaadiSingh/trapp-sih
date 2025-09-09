import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/privacy_settings.dart';
import '../repositories/settings_repository.dart';

@injectable
class UpdatePrivacySettings implements UseCase<void, PrivacySettings> {
  final SettingsRepository repository;

  UpdatePrivacySettings(this.repository);

  @override
  Future<Either<Failure, void>> call(PrivacySettings params) async {
    return await repository.updatePrivacySettings(params);
  }
}