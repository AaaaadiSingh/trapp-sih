import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/dashboard_model.dart';

abstract class DashboardRepository {
  Future<Either<Failure, DashboardStatsModel>> getDashboardStats();
  Future<Either<Failure, DashboardSummaryModel>> getDashboardSummary();
  Future<Either<Failure, WeeklyStatsModel>> getWeeklyStats();
  Future<Either<Failure, List<TripSummary>>> getRecentTrips({int limit = 10});
}
