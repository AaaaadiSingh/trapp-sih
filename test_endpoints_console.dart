import 'dart:io';
import 'package:dio/dio.dart';

/// Simple console-based endpoint testing
void main() async {
  print('🚀 Starting API Endpoint Testing');
  print('=' * 60);

  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:3000/api',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // Test Dashboard Endpoints
  await testDashboardEndpoints(dio);

  // Test Trip Endpoints
  await testTripEndpoints(dio);

  // Test Travel Preferences Endpoints
  await testTravelPreferencesEndpoints(dio);

  // Test Settings Endpoints
  await testSettingsEndpoints(dio);

  print('\n✅ All endpoint tests completed!');
}

/// Test Dashboard Endpoints
Future<void> testDashboardEndpoints(Dio dio) async {
  print('\n📊 Testing Dashboard Endpoints');
  print('-' * 40);

  final endpoints = [
    '/dashboard/stats',
    '/dashboard/summary',
    '/dashboard/weekly-stats',
    '/dashboard/recent-trips',
  ];

  for (final endpoint in endpoints) {
    await testEndpoint(dio, 'GET', endpoint);
  }
}

/// Test Trip Endpoints
Future<void> testTripEndpoints(Dio dio) async {
  print('\n🚗 Testing Trip Endpoints');
  print('-' * 40);

  // Test GET endpoints
  await testEndpoint(dio, 'GET', '/trips');
  await testEndpoint(dio, 'GET', '/trips/123');

  // Test POST endpoint
  await testEndpoint(
    dio,
    'POST',
    '/trips',
    data: {
      'name': 'Test Trip',
      'destination': 'Test Destination',
      'startDate': '2024-01-15',
      'endDate': '2024-01-20',
    },
  );

  // Test PUT endpoint
  await testEndpoint(
    dio,
    'PUT',
    '/trips/123',
    data: {'name': 'Updated Test Trip', 'destination': 'Updated Destination'},
  );

  // Test DELETE endpoint
  await testEndpoint(dio, 'DELETE', '/trips/123');
}

/// Test Travel Preferences Endpoints
Future<void> testTravelPreferencesEndpoints(Dio dio) async {
  print('\n⚙️ Testing Travel Preferences Endpoints');
  print('-' * 40);

  // Test GET endpoint
  await testEndpoint(dio, 'GET', '/travel-preferences');

  // Test POST endpoint
  await testEndpoint(
    dio,
    'POST',
    '/travel-preferences',
    data: {
      'transportMode': 'car',
      'budgetRange': 'medium',
      'accommodationType': 'hotel',
    },
  );

  // Test PUT endpoint
  await testEndpoint(
    dio,
    'PUT',
    '/travel-preferences',
    data: {
      'transportMode': 'train',
      'budgetRange': 'high',
      'accommodationType': 'resort',
    },
  );

  // Test DELETE endpoint
  await testEndpoint(dio, 'DELETE', '/travel-preferences');
}

/// Test Settings Endpoints
Future<void> testSettingsEndpoints(Dio dio) async {
  print('\n🔧 Testing Settings Endpoints');
  print('-' * 40);

  // Test GET endpoint
  await testEndpoint(dio, 'GET', '/settings');

  // Test PUT endpoint
  await testEndpoint(
    dio,
    'PUT',
    '/settings',
    data: {'theme': 'dark', 'notifications': true, 'language': 'en'},
  );

  // Test Privacy Settings
  await testEndpoint(
    dio,
    'PUT',
    '/settings/privacy',
    data: {'dataSharing': false, 'locationTracking': true, 'analytics': false},
  );

  // Test User Data Deletion
  await testEndpoint(dio, 'DELETE', '/user/data');
}

/// Test individual endpoint
Future<void> testEndpoint(
  Dio dio,
  String method,
  String endpoint, {
  Map<String, dynamic>? data,
}) async {
  try {
    Response response;

    switch (method.toUpperCase()) {
      case 'GET':
        response = await dio.get(endpoint);
        break;
      case 'POST':
        response = await dio.post(endpoint, data: data);
        break;
      case 'PUT':
        response = await dio.put(endpoint, data: data);
        break;
      case 'DELETE':
        response = await dio.delete(endpoint, data: data);
        break;
      default:
        throw Exception('Unsupported HTTP method: $method');
    }

    print('✅ $method $endpoint - Status: ${response.statusCode}');

    // Print response data if available
    if (response.data != null) {
      final dataStr = response.data.toString();
      if (dataStr.length > 100) {
        print('   Response: ${dataStr.substring(0, 100)}...');
      } else {
        print('   Response: $dataStr');
      }
    }
  } on DioException catch (e) {
    final statusCode = e.response?.statusCode ?? 'Unknown';
    final errorMessage = _getErrorMessage(e);

    if (statusCode == 404) {
      print(
        '⚠️  $method $endpoint - Status: $statusCode (Endpoint not implemented)',
      );
    } else if (statusCode == 500) {
      print('❌ $method $endpoint - Status: $statusCode (Server error)');
    } else {
      print('❌ $method $endpoint - Status: $statusCode');
    }

    print('   Error: $errorMessage');

    // Test our error handling
    _testErrorHandling(e, endpoint);
  } catch (e) {
    print('❌ $method $endpoint - Unexpected error: $e');
  }
}

/// Get user-friendly error message
String _getErrorMessage(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return 'Connection timeout. Please check your internet connection.';

    case DioExceptionType.badResponse:
      final statusCode = error.response?.statusCode;
      switch (statusCode) {
        case 400:
          return 'Bad request. Invalid data provided.';
        case 401:
          return 'Authentication required. Please log in again.';
        case 403:
          return 'Access denied. You do not have permission.';
        case 404:
          return 'Endpoint not found. This feature may not be available yet.';
        case 409:
          return 'Conflict detected. Resource may be in use.';
        case 500:
          return 'Internal server error. Please try again later.';
        default:
          return 'Server error ($statusCode). Please try again later.';
      }

    case DioExceptionType.cancel:
      return 'Request was cancelled.';

    case DioExceptionType.connectionError:
      return 'No internet connection. Please check your network settings.';

    case DioExceptionType.badCertificate:
      return 'Security certificate error. Please try again later.';

    case DioExceptionType.unknown:
    default:
      return 'An unexpected error occurred: ${error.message}';
  }
}

/// Test our error handling logic
void _testErrorHandling(DioException error, String endpoint) {
  final statusCode = error.response?.statusCode;

  // Test fallback scenarios
  if (statusCode == 404) {
    if (endpoint.contains('dashboard')) {
      print('   📝 Fallback: Using cached dashboard data');
    } else if (endpoint.contains('travel-preferences')) {
      print('   📝 Fallback: Settings saved locally only');
    } else if (endpoint.contains('trips')) {
      print('   📝 Fallback: Trip management unavailable');
    } else if (endpoint.contains('settings')) {
      print('   📝 Fallback: Settings saved locally only');
    }
  }

  // Test retry suggestions
  if (statusCode == 500 || error.type == DioExceptionType.connectionTimeout) {
    print('   💡 Suggestion: Retry in a few moments');
  }

  if (error.type == DioExceptionType.connectionError) {
    print('   💡 Suggestion: Check internet connection');
  }
}
