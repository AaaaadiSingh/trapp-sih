import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/settings_repository.dart';

@injectable
class ExportUserData implements UseCase<String, NoParams> {
  final SettingsRepository repository;

  ExportUserData(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.exportUserData();
  }
}