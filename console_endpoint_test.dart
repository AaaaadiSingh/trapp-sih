import 'dart:io';
import 'package:dio/dio.dart';

/// Simple console-based API endpoint testing
void main() async {
  print('🚀 Starting API Endpoint Testing');
  print('=' * 60);

  final dio = Dio();
  dio.options.baseUrl = 'https://trapp-sih-backend.onrender.com/api';
  dio.options.connectTimeout = const Duration(seconds: 30);
  dio.options.receiveTimeout = const Duration(seconds: 30);

  // Default user ID for testing
  const String defaultUserId = 'default-user-123';

  print('\n📋 Base URL: ${dio.options.baseUrl}');
  print('📋 Default User ID: $defaultUserId');
  print('\n' + '=' * 60);

  // Test all endpoints
  await testDashboardEndpoints(dio, defaultUserId);
  await testTripEndpoints(dio, defaultUserId);
  await testTravelPreferencesEndpoints(dio, defaultUserId);
  await testSettingsEndpoints(dio, defaultUserId);

  print('\n✅ All endpoint tests completed!');
  print('Check the results above for each endpoint status.');
}

/// Test Dashboard Endpoints
Future<void> testDashboardEndpoints(Dio dio, String userId) async {
  print('\n📊 Testing Dashboard Endpoints...');
  print('-' * 40);

  await testEndpoint(
    dio,
    'GET',
    '/dashboard/stats',
    queryParams: {'userId': userId},
    description: 'Dashboard Statistics',
  );

  await testEndpoint(
    dio,
    'GET',
    '/dashboard/summary',
    queryParams: {'userId': userId},
    description: 'Dashboard Summary',
  );

  await testEndpoint(
    dio,
    'GET',
    '/dashboard/weekly-stats',
    queryParams: {'userId': userId},
    description: 'Weekly Statistics',
  );

  await testEndpoint(
    dio,
    'GET',
    '/dashboard/recent-trips',
    queryParams: {'userId': userId, 'limit': '5'},
    description: 'Recent Trips',
  );
}

/// Test Trip Management Endpoints
Future<void> testTripEndpoints(Dio dio, String userId) async {
  print('\n🚗 Testing Trip Management Endpoints...');
  print('-' * 40);

  await testEndpoint(
    dio,
    'GET',
    '/trips',
    queryParams: {'userId': userId},
    description: 'Get All Trips',
  );

  await testEndpoint(
    dio,
    'POST',
    '/trips',
    data: {
      'userId': userId,
      'startLocation': 'Test Origin',
      'endLocation': 'Test Destination',
      'startTime': DateTime.now().toIso8601String(),
      'transportMode': 'car',
    },
    description: 'Create New Trip',
  );

  await testEndpoint(
    dio,
    'GET',
    '/trips/test-trip-id',
    queryParams: {'userId': userId},
    description: 'Get Trip by ID',
  );

  await testEndpoint(
    dio,
    'PUT',
    '/trips/test-trip-id',
    data: {
      'userId': userId,
      'endLocation': 'Updated Destination',
      'endTime': DateTime.now().toIso8601String(),
    },
    description: 'Update Trip',
  );

  await testEndpoint(
    dio,
    'DELETE',
    '/trips/test-trip-id',
    queryParams: {'userId': userId},
    description: 'Delete Trip',
  );
}

/// Test Travel Preferences Endpoints
Future<void> testTravelPreferencesEndpoints(Dio dio, String userId) async {
  print('\n⚙️ Testing Travel Preferences Endpoints...');
  print('-' * 40);

  await testEndpoint(
    dio,
    'GET',
    '/travel-preferences',
    queryParams: {'userId': userId},
    description: 'Get Travel Preferences',
  );

  await testEndpoint(
    dio,
    'POST',
    '/travel-preferences',
    data: {
      'userId': userId,
      'preferredTransportModes': ['car', 'public_transport'],
      'ecoFriendlyMode': true,
      'maxWalkingDistance': 1000.0,
      'avoidTolls': true,
      'avoidHighways': false,
    },
    description: 'Create Travel Preferences',
  );

  await testEndpoint(
    dio,
    'PUT',
    '/travel-preferences',
    data: {
      'userId': userId,
      'preferredTransportModes': ['bicycle', 'walking'],
      'ecoFriendlyMode': false,
      'maxWalkingDistance': 500.0,
      'avoidTolls': false,
      'avoidHighways': true,
    },
    description: 'Update Travel Preferences',
  );

  await testEndpoint(
    dio,
    'DELETE',
    '/travel-preferences',
    queryParams: {'userId': userId},
    description: 'Delete Travel Preferences',
  );
}

/// Test Settings Endpoints
Future<void> testSettingsEndpoints(Dio dio, String userId) async {
  print('\n🔒 Testing Settings Endpoints...');
  print('-' * 40);

  await testEndpoint(
    dio,
    'PUT',
    '/settings/privacy',
    data: {
      'userId': userId,
      'locationConsent': true,
      'backgroundLocationConsent': false,
      'dataSharingConsent': true,
      'analyticsConsent': false,
      'locationAccuracy': 'high',
      'dataRetentionPeriod': '1_year',
    },
    description: 'Update Privacy Settings',
  );

  await testEndpoint(
    dio,
    'DELETE',
    '/user/data',
    queryParams: {'userId': userId, 'delete_all': 'false'},
    description: 'Delete User Data (Partial)',
  );

  await testEndpoint(
    dio,
    'DELETE',
    '/user/data',
    queryParams: {'userId': userId, 'delete_all': 'true'},
    description: 'Delete User Data (Complete)',
  );
}

/// Generic endpoint testing function
Future<void> testEndpoint(
  Dio dio,
  String method,
  String path, {
  Map<String, dynamic>? queryParams,
  Map<String, dynamic>? data,
  required String description,
}) async {
  final stopwatch = Stopwatch()..start();

  try {
    print('🔄 Testing: $method $path - $description');

    Response response;

    switch (method.toUpperCase()) {
      case 'GET':
        response = await dio.get(path, queryParameters: queryParams);
        break;
      case 'POST':
        response = await dio.post(
          path,
          data: data,
          queryParameters: queryParams,
        );
        break;
      case 'PUT':
        response = await dio.put(
          path,
          data: data,
          queryParameters: queryParams,
        );
        break;
      case 'DELETE':
        response = await dio.delete(path, queryParameters: queryParams);
        break;
      default:
        throw Exception('Unsupported HTTP method: $method');
    }

    stopwatch.stop();

    print('✅ $method $path - SUCCESS (${response.statusCode})');
    print('   ⏱️  Response time: ${stopwatch.elapsedMilliseconds}ms');

    // Log response data summary
    if (response.data != null) {
      final dataStr = response.data.toString();
      final summary =
          dataStr.length > 100 ? '${dataStr.substring(0, 100)}...' : dataStr;
      print('   📄 Response: $summary');
    }
  } catch (e) {
    stopwatch.stop();

    print('❌ $method $path - FAILED');
    print('   💥 Error: $e');
    print('   ⏱️  Failed after: ${stopwatch.elapsedMilliseconds}ms');

    // Analyze error type
    final errorStr = e.toString().toLowerCase();
    if (errorStr.contains('socketexception') ||
        errorStr.contains('connection')) {
      print('   🌐 Network connectivity issue detected');
    } else if (errorStr.contains('404')) {
      print('   🔍 Endpoint not found - check backend implementation');
    } else if (errorStr.contains('500')) {
      print('   🔥 Server error - check backend logs');
    } else if (errorStr.contains('timeout')) {
      print('   ⏰ Request timeout - check network or server performance');
    } else if (errorStr.contains('401') || errorStr.contains('403')) {
      print('   🔐 Authentication/Authorization issue');
    }
  }

  // Add delay between requests
  await Future.delayed(const Duration(milliseconds: 500));
}
