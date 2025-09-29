import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_data_source.dart';
import '../models/dashboard_model.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource _remoteDataSource;

  DashboardRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, DashboardStatsModel>> getDashboardStats() async {
    try {
      final stats = await _remoteDataSource.getDashboardStats();
      return Right(stats);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(
        ServerFailure(message: 'Failed to fetch dashboard stats: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, DashboardSummaryModel>> getDashboardSummary() async {
    try {
      final summary = await _remoteDataSource.getDashboardSummary();
      return Right(summary);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(
        ServerFailure(message: 'Failed to fetch dashboard summary: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, WeeklyStatsModel>> getWeeklyStats() async {
    try {
      final weeklyStats = await _remoteDataSource.getWeeklyStats();
      return Right(weeklyStats);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to fetch weekly stats: $e'));
    }
  }

  @override
  Future<Either<Failure, List<TripSummary>>> getRecentTrips({
    int limit = 10,
  }) async {
    try {
      final trips = await _remoteDataSource.getRecentTrips(limit: limit);
      return Right(trips);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to fetch recent trips: $e'));
    }
  }
}
