import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/settings_repository.dart';

class DeleteUserDataParams {
  final bool deleteAll;

  DeleteUserDataParams({required this.deleteAll});
}

@injectable
class DeleteUserData implements UseCase<void, DeleteUserDataParams> {
  final SettingsRepository repository;

  DeleteUserData(this.repository);

  @override
  Future<Either<Failure, void>> call(DeleteUserDataParams params) async {
    return await repository.deleteUserData(deleteAll: params.deleteAll);
  }
}