import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'lib/core/network/api_service.dart';
import 'lib/core/constants/app_constants.dart';
import 'lib/core/services/secure_storage_service.dart';
import 'lib/features/dashboard/data/datasources/dashboard_remote_data_source.dart';
import 'lib/features/trips/data/datasources/trips_remote_data_source.dart';
import 'lib/features/travel_preferences/data/datasources/travel_preferences_remote_data_source.dart';

/// Simple test script to demonstrate API integration functionality
/// This script shows how the app will communicate with the backend API
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  print('🚀 Testing API Integration for User: ${AppConstants.userId}');
  print('🌐 API Base URL: ${AppConstants.baseUrl}');
  print('=' * 50);

  // Initialize API service
  final secureStorage = SecureStorageService();
  final apiService = ApiService(secureStorage);

  // Initialize data sources
  final dashboardDataSource = DashboardRemoteDataSourceImpl(apiService);
  final tripsDataSource = TripsRemoteDataSourceImpl(apiService);
  final preferencesDataSource = TravelPreferencesRemoteDataSourceImpl(
    apiService,
  );

  print('\n📊 Testing Dashboard API Endpoints:');
  await testDashboardEndpoints(dashboardDataSource);

  print('\n🚗 Testing Trips API Endpoints:');
  await testTripsEndpoints(tripsDataSource);

  print('\n⚙️ Testing Travel Preferences API Endpoints:');
  await testPreferencesEndpoints(preferencesDataSource);

  print('\n✅ API Integration test completed!');
  print('\n📝 Next Steps:');
  print('1. Start your backend server at ${AppConstants.baseUrl}');
  print(
    '2. Implement the API endpoints as defined in lib/core/network/endpoints.dart',
  );
  print('3. Run the Flutter app to see real API integration in action');
  print('4. Check the dashboard for live data from your backend');
}

Future<void> testDashboardEndpoints(
  DashboardRemoteDataSourceImpl dataSource,
) async {
  try {
    print('  📈 Fetching dashboard stats...');
    final stats = await dataSource.getDashboardStats();
    print(
      '  ✅ Dashboard stats: ${stats.totalTrips} trips, ${stats.totalDistance}km',
    );
  } catch (e) {
    print('  ❌ Dashboard stats failed: $e');
  }

  try {
    print('  📋 Fetching dashboard summary...');
    final summary = await dataSource.getDashboardSummary();
    print('  ✅ Dashboard summary: ${summary.weeklyTrips} weekly trips');
  } catch (e) {
    print('  ❌ Dashboard summary failed: $e');
  }

  try {
    print('  📅 Fetching weekly stats...');
    final weeklyStats = await dataSource.getWeeklyStats();
    print('  ✅ Weekly stats: ${weeklyStats.dailyStats.length} days of data');
  } catch (e) {
    print('  ❌ Weekly stats failed: $e');
  }

  try {
    print('  🚗 Fetching recent trips...');
    final recentTrips = await dataSource.getRecentTrips(limit: 5);
    print('  ✅ Recent trips: ${recentTrips.length} trips loaded');
  } catch (e) {
    print('  ❌ Recent trips failed: $e');
  }
}

Future<void> testTripsEndpoints(TripsRemoteDataSourceImpl dataSource) async {
  try {
    print('  📋 Fetching user trips...');
    final trips = await dataSource.getUserTrips('test-user-id');
    print('  ✅ User trips: ${trips.length} trips found');
  } catch (e) {
    print('  ❌ User trips failed: $e');
  }
}

Future<void> testPreferencesEndpoints(
  TravelPreferencesRemoteDataSourceImpl dataSource,
) async {
  try {
    print('  ⚙️ Fetching travel preferences...');
    final preferences = await dataSource.getTravelPreferences();
    print(
      '  ✅ Travel preferences: ${preferences.preferredTransportModes.length} transport modes',
    );
  } catch (e) {
    print('  ❌ Travel preferences failed: $e');
  }
}
