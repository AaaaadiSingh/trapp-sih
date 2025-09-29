import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/dashboard_model.dart';
import '../repositories/dashboard_repository.dart';

@injectable
class GetDashboardStats implements UseCase<DashboardStatsModel, NoParams> {
  final DashboardRepository _repository;

  GetDashboardStats(this._repository);

  @override
  Future<Either<Failure, DashboardStatsModel>> call(NoParams params) async {
    return await _repository.getDashboardStats();
  }
}

@injectable
class GetDashboardSummary implements UseCase<DashboardSummaryModel, NoParams> {
  final DashboardRepository _repository;

  GetDashboardSummary(this._repository);

  @override
  Future<Either<Failure, DashboardSummaryModel>> call(NoParams params) async {
    return await _repository.getDashboardSummary();
  }
}

@injectable
class GetWeeklyStats implements UseCase<WeeklyStatsModel, NoParams> {
  final DashboardRepository _repository;

  GetWeeklyStats(this._repository);

  @override
  Future<Either<Failure, WeeklyStatsModel>> call(NoParams params) async {
    return await _repository.getWeeklyStats();
  }
}

@injectable
class GetRecentTrips
    implements UseCase<List<TripSummary>, GetRecentTripsParams> {
  final DashboardRepository _repository;

  GetRecentTrips(this._repository);

  @override
  Future<Either<Failure, List<TripSummary>>> call(
    GetRecentTripsParams params,
  ) async {
    return await _repository.getRecentTrips(limit: params.limit);
  }
}

class GetRecentTripsParams {
  final int limit;

  GetRecentTripsParams({this.limit = 10});
}
