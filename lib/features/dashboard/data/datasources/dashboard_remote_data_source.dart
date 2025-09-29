import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/error_handler.dart';
import '../models/dashboard_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardStatsModel> getDashboardStats();
  Future<DashboardSummaryModel> getDashboardSummary();
  Future<WeeklyStatsModel> getWeeklyStats();
  Future<List<TripSummary>> getRecentTrips({int limit = 10});
}

@LazySingleton(as: DashboardRemoteDataSource)
class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final ApiService _apiService;

  DashboardRemoteDataSourceImpl(this._apiService);

  @override
  Future<DashboardStatsModel> getDashboardStats() async {
    return handleApiCall(() async {
      final response = await _apiService.get(
        ApiEndpoints.dashboardStats,
        options: Options(
          sendTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );

      return DashboardStatsModel.fromJson(response.data);
    });
  }

  @override
  Future<DashboardSummaryModel> getDashboardSummary() async {
    return handleApiCall(() async {
      final response = await _apiService.get(ApiEndpoints.dashboardSummary);

      return DashboardSummaryModel.fromJson(response.data);
    });
  }

  @override
  Future<WeeklyStatsModel> getWeeklyStats() async {
    return handleApiCall(() async {
      final response = await _apiService.get(ApiEndpoints.weeklyStats);

      return WeeklyStatsModel.fromJson(response.data);
    });
  }

  @override
  Future<List<TripSummary>> getRecentTrips({int limit = 10}) async {
    return handleApiCall(() async {
      final response = await _apiService.get(
        ApiEndpoints.getUserTrips(AppConstants.userId),
        queryParameters: {'limit': limit.toString()},
      );

      final List<dynamic> data =
          response.data is List ? response.data : response.data['trips'] ?? [];
      return data.map((json) => TripSummary.fromJson(json)).toList();
    });
  }

  // Mock data methods for fallback when endpoints are not implemented
  DashboardStatsModel _getMockDashboardStats() {
    return DashboardStatsModel(
      userId: AppConstants.userId,
      totalTrips: 15,
      totalDistance: 245.8,
      totalDuration: 180.5,
      totalCarbonSaved: 12.4,
      transportModeBreakdown: {
        'car': 8,
        'public_transport': 4,
        'walking': 2,
        'cycling': 1,
      },
      recentTrips: _getMockRecentTrips(3),
      lastUpdated: DateTime.now(),
    );
  }

  DashboardSummaryModel _getMockDashboardSummary() {
    return DashboardSummaryModel(
      userId: AppConstants.userId,
      weeklyDistance: 85.2,
      monthlyDistance: 340.8,
      weeklyCarbonSaved: 4.2,
      monthlyCarbonSaved: 16.8,
      weeklyTrips: 5,
      monthlyTrips: 20,
      mostUsedTransportMode: 'car',
      achievements: ['Eco Warrior', 'Distance Master'],
      lastUpdated: DateTime.now(),
    );
  }

  WeeklyStatsModel _getMockWeeklyStats() {
    final now = DateTime.now();
    final weekStart = now.subtract(Duration(days: now.weekday - 1));

    return WeeklyStatsModel(
      userId: AppConstants.userId,
      dailyStats: List.generate(7, (index) {
        final date = weekStart.add(Duration(days: index));
        return DailyStats(
          date: date,
          distance: (index + 1) * 12.5,
          carbonSaved: (index + 1) * 0.6,
          trips: index < 5 ? index + 1 : 0, // No trips on weekends
          transportModeCount: {
            'car': index < 5 ? 1 : 0,
            'public_transport': index < 5 && index % 2 == 0 ? 1 : 0,
          },
        );
      }),
      totalDistance: 87.5,
      totalCarbonSaved: 4.2,
      totalTrips: 15,
      weekStartDate: weekStart,
    );
  }

  List<TripSummary> _getMockRecentTrips(int limit) {
    final now = DateTime.now();
    return List.generate(limit.clamp(0, 5), (index) {
      final startTime = now.subtract(Duration(days: index + 1, hours: 8));
      final endTime = startTime.add(const Duration(minutes: 25));

      return TripSummary(
        id: 'mock_trip_${index + 1}',
        origin: 'Location ${String.fromCharCode(65 + index)}',
        destination: 'Destination ${String.fromCharCode(65 + index)}',
        startTime: startTime,
        endTime: endTime,
        transportMode: ['car', 'public_transport', 'walking'][index % 3],
        distance: 15.2 + (index * 2.1),
        duration: 25.0 + (index * 3.0),
        carbonFootprint: 2.1 + (index * 0.3),
      );
    });
  }
}
