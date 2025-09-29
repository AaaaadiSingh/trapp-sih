import 'package:flutter/material.dart';
import 'package:sih/core/di/injection.dart';
import 'package:sih/core/services/secure_storage_service.dart';
import 'package:sih/core/network/api_service.dart';
import 'package:sih/features/dashboard/data/datasources/dashboard_remote_data_source.dart';
import 'package:sih/features/trips/data/datasources/trips_remote_data_source.dart';
import 'package:sih/features/travel_preferences/data/datasources/travel_preferences_remote_data_source.dart';
import 'package:sih/features/settings/data/datasources/settings_remote_data_source.dart';
import 'package:sih/features/trips/data/models/trip_model.dart';
import 'package:sih/features/travel_preferences/data/models/travel_preferences_model.dart';
import 'package:sih/features/settings/domain/entities/privacy_settings.dart';
import 'package:logger/logger.dart';

/// Comprehensive API Endpoint Testing with Detailed Logging
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  // Initialize dependency injection
  await configureDependencies();

  logger.i('🚀 Starting Comprehensive API Endpoint Testing');
  logger.i('=' * 60);

  // Setup user data
  await setupTestUser(logger);

  // Test all endpoint categories
  await testDashboardEndpoints(logger);
  await testTripEndpoints(logger);
  await testTravelPreferencesEndpoints(logger);
  await testSettingsEndpoints(logger);

  logger.i('\n✅ All endpoint tests completed!');
  logger.i('Check logs above for detailed status of each endpoint.');
}

/// Setup test user data
Future<void> setupTestUser(Logger logger) async {
  logger.i('\n👤 Setting up test user...');

  try {
    final secureStorage = getIt<SecureStorageService>();
    await secureStorage.setDefaultUser();

    final userId = await secureStorage.getUserId();
    final userName = await secureStorage.getUserName();

    logger.i('✅ Test user setup complete');
    logger.d('   📋 User ID: $userId');
    logger.d('   📋 User Name: $userName');
  } catch (e) {
    logger.e('❌ Failed to setup test user: $e');
  }
}

/// Test Dashboard API Endpoints
Future<void> testDashboardEndpoints(Logger logger) async {
  logger.i('\n📊 Testing Dashboard Endpoints...');
  logger.i('-' * 40);

  final dashboardDataSource = getIt<DashboardRemoteDataSourceImpl>();

  // Test 1: Dashboard Stats
  await _testEndpoint(
    logger,
    'GET /dashboard/stats',
    () => dashboardDataSource.getDashboardStats(),
    (result) => 'Stats: ${result.totalTrips} trips, ${result.totalDistance}km',
  );

  // Test 2: Dashboard Summary
  await _testEndpoint(
    logger,
    'GET /dashboard/summary',
    () => dashboardDataSource.getDashboardSummary(),
    (result) => 'Summary: ${result.weeklyTrips} weekly trips',
  );

  // Test 3: Weekly Stats
  await _testEndpoint(
    logger,
    'GET /dashboard/weekly-stats',
    () => dashboardDataSource.getWeeklyStats(),
    (result) => 'Weekly: ${result.dailyStats.length} days of data',
  );

  // Test 4: Recent Trips
  await _testEndpoint(
    logger,
    'GET /dashboard/recent-trips',
    () => dashboardDataSource.getRecentTrips(limit: 5),
    (result) => 'Recent trips: ${result.length} trips found',
  );
}

/// Test Trip Lifecycle Endpoints
Future<void> testTripEndpoints(Logger logger) async {
  logger.i('\n🚗 Testing Trip Lifecycle Endpoints...');
  logger.i('-' * 40);

  final tripsDataSource = getIt<TripsRemoteDataSourceImpl>();

  // Test 1: Get User Trips
  await _testEndpoint(
    logger,
    'GET /trips/user/{userId}',
    () => tripsDataSource.getUserTrips('test-user-id'),
    (result) => 'User trips: ${result.length} trips loaded',
  );

  // Test 2: Start Trip
  await _testEndpoint(
    logger,
    'POST /trips/start',
    () => tripsDataSource.startTrip(
      StartTripRequest(
        startLocation: 'Test Origin',
        transportMode: 'car',
        plannedDestination: 'Test Destination',
        estimatedDuration: 120,
      ),
    ),
    (result) =>
        'Started trip: ${result.id} from ${result.startLocation}',
  );

  // Test 3: End Trip
  await _testEndpoint(
    logger,
    'PUT /trips/{tripId}/end',
    () => tripsDataSource.endTrip(
      'test-trip-id',
      EndTripRequest(
        endLocation: 'Test Destination',
        actualDuration: 135,
        totalDistance: 25.5,
        carbonFootprint: 7.6,
      ),
    ),
    (result) => 'Ended trip: ${result.id} at ${result.endLocation ?? "unknown location"}',
  );
}

/// Test Travel Preferences Endpoints
Future<void> testTravelPreferencesEndpoints(Logger logger) async {
  logger.i('\n⚙️ Testing Travel Preferences Endpoints...');
  logger.i('-' * 40);

  final preferencesDataSource = getIt<TravelPreferencesRemoteDataSourceImpl>();

  // Test 1: Get Travel Preferences
  await _testEndpoint(
    logger,
    'GET /travel-preferences',
    () => preferencesDataSource.getTravelPreferences(),
    (result) =>
        'Preferences: ${result.preferredTransportModes.length} transport modes',
  );

  // Test 2: Create Travel Preferences
  await _testEndpoint(
    logger,
    'POST /travel-preferences',
    () => preferencesDataSource.createTravelPreferences(
      CreateTravelPreferencesRequest(
        preferredTransportModes: ['car', 'public_transport'],
        ecoFriendlyMode: true,
        maxWalkingDistance: 1000.0,
        avoidTolls: true,
        avoidHighways: false,
      ),
    ),
    (result) =>
        'Created preferences: ${result.preferredTransportModes.join(", ")}',
  );

  // Test 3: Update Travel Preferences
  await _testEndpoint(
    logger,
    'PUT /travel-preferences',
    () => preferencesDataSource.updateTravelPreferences(
      UpdateTravelPreferencesRequest(
        preferredTransportModes: ['bicycle', 'walking'],
        ecoFriendlyMode: false,
        maxWalkingDistance: 500.0,
        avoidTolls: false,
        avoidHighways: true,
      ),
    ),
    (result) =>
        'Updated preferences: ${result.preferredTransportModes.join(", ")}',
  );

  // Test 4: Delete Travel Preferences
  await _testEndpoint(
    logger,
    'DELETE /travel-preferences',
    () => preferencesDataSource.deleteTravelPreferences(),
    (result) => 'Preferences deleted successfully',
  );
}

/// Test Settings Endpoints
Future<void> testSettingsEndpoints(Logger logger) async {
  logger.i('\n🔒 Testing Settings Endpoints...');
  logger.i('-' * 40);

  final settingsDataSource = getIt<SettingsRemoteDataSourceImpl>();

  // Test 1: Update Privacy Settings
  await _testEndpoint(
    logger,
    'PUT /settings/privacy',
    () => settingsDataSource.updatePrivacySettings(
      const PrivacySettings(
        locationConsent: true,
        backgroundLocationConsent: false,
        dataSharingConsent: true,
        analyticsConsent: false,
        locationAccuracy: LocationAccuracy.high,
        dataRetentionPeriod: DataRetentionPeriod.oneYear,
      ),
    ),
    (result) => 'Privacy settings updated successfully',
  );

  // Test 2: Delete User Data (partial)
  await _testEndpoint(
    logger,
    'DELETE /user/data (partial)',
    () => settingsDataSource.deleteUserData(deleteAll: false),
    (result) => 'Partial user data deleted successfully',
  );

  // Test 3: Delete User Data (complete)
  await _testEndpoint(
    logger,
    'DELETE /user/data (complete)',
    () => settingsDataSource.deleteUserData(deleteAll: true),
    (result) => 'Complete user data deleted successfully',
  );
}

/// Generic endpoint testing helper
Future<void> _testEndpoint<T>(
  Logger logger,
  String endpointName,
  Future<T> Function() apiCall,
  String Function(T) successMessage,
) async {
  final stopwatch = Stopwatch()..start();

  try {
    logger.d('🔄 Testing: $endpointName');

    final result = await apiCall();
    stopwatch.stop();

    logger.i('✅ $endpointName - ${successMessage(result)}');
    logger.d('   ⏱️  Response time: ${stopwatch.elapsedMilliseconds}ms');
  } catch (e) {
    stopwatch.stop();

    logger.e('❌ $endpointName - FAILED');
    logger.e('   💥 Error: $e');
    logger.d('   ⏱️  Failed after: ${stopwatch.elapsedMilliseconds}ms');

    // Log additional error details
    if (e.toString().contains('SocketException')) {
      logger.w('   🌐 Network connectivity issue detected');
    } else if (e.toString().contains('404')) {
      logger.w('   🔍 Endpoint not found - check backend implementation');
    } else if (e.toString().contains('500')) {
      logger.w('   🔥 Server error - check backend logs');
    } else if (e.toString().contains('timeout')) {
      logger.w('   ⏰ Request timeout - check network or server performance');
    }
  }

  // Add small delay between requests
  await Future.delayed(const Duration(milliseconds: 500));
}
