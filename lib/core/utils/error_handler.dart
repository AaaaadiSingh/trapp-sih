import 'package:dio/dio.dart';
import '../error/failures.dart';
import '../error/exceptions.dart';

/// Comprehensive error handler for API failures
/// Provides consistent error messages and user feedback
class ApiErrorHandler {
  /// Convert DioException to user-friendly failure
  static Failure handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure(
          message:
              'Connection timeout. Please check your internet connection and try again.',
        );

      case DioExceptionType.badResponse:
        return _handleHttpError(error.response!);

      case DioExceptionType.cancel:
        return const GeneralFailure(message: 'Request was cancelled.');

      case DioExceptionType.connectionError:
        return const NetworkFailure(
          message:
              'No internet connection. Please check your network settings.',
        );

      case DioExceptionType.badCertificate:
        return const NetworkFailure(
          message: 'Security certificate error. Please try again later.',
        );

      case DioExceptionType.unknown:
      default:
        return GeneralFailure(
          message: 'An unexpected error occurred: ${error.message}',
        );
    }
  }

  /// Handle HTTP status code errors
  static Failure _handleHttpError(Response response) {
    final statusCode = response.statusCode;
    final endpoint = response.requestOptions.path;

    switch (statusCode) {
      case 400:
        return ValidationFailure(message: _getBadRequestMessage(endpoint));

      case 401:
        return const PermissionFailure(
          message: 'Authentication required. Please log in again.',
        );

      case 403:
        return PermissionFailure(message: _getForbiddenMessage(endpoint));

      case 404:
        return ServerFailure(message: _getNotFoundMessage(endpoint));

      case 409:
        return ValidationFailure(message: _getConflictMessage(endpoint));

      case 422:
        return ValidationFailure(message: _getValidationMessage(response));

      case 429:
        return const ServerFailure(
          message: 'Too many requests. Please wait a moment and try again.',
        );

      case 500:
      case 502:
      case 503:
      case 504:
        return ServerFailure(
          message: _getServerErrorMessage(endpoint, statusCode!),
        );

      default:
        return ServerFailure(
          message: 'Server error (${statusCode}). Please try again later.',
        );
    }
  }

  /// Get user-friendly message for 400 Bad Request
  static String _getBadRequestMessage(String endpoint) {
    if (endpoint.contains('travel-preferences')) {
      return 'Invalid preference settings. Please check your input and try again.';
    } else if (endpoint.contains('trips')) {
      return 'Invalid trip data. Please verify your trip details.';
    } else if (endpoint.contains('settings')) {
      return 'Invalid settings data. Please check your configuration.';
    }
    return 'Invalid request data. Please check your input and try again.';
  }

  /// Get user-friendly message for 403 Forbidden
  static String _getForbiddenMessage(String endpoint) {
    if (endpoint.contains('travel-preferences')) {
      return 'You do not have permission to modify these preferences.';
    } else if (endpoint.contains('trips')) {
      return 'You do not have permission to access this trip.';
    } else if (endpoint.contains('settings')) {
      return 'You do not have permission to change these settings.';
    } else if (endpoint.contains('user/data')) {
      return 'You do not have permission to delete user data.';
    }
    return 'You do not have permission to perform this action.';
  }

  /// Get user-friendly message for 404 Not Found
  static String _getNotFoundMessage(String endpoint) {
    if (endpoint.contains('dashboard')) {
      return 'Dashboard data is currently unavailable. Using local data instead.';
    } else if (endpoint.contains('travel-preferences')) {
      return 'Travel preferences feature is not available yet. Settings saved locally.';
    } else if (endpoint.contains('trips/')) {
      return 'Trip not found. It may have been deleted or does not exist.';
    } else if (endpoint.contains('trips')) {
      return 'Trip management service is temporarily unavailable.';
    } else if (endpoint.contains('settings/privacy')) {
      return 'Privacy settings sync is not available. Settings saved locally only.';
    } else if (endpoint.contains('user/data')) {
      return 'User data deletion service is not available. Data deleted locally only.';
    }
    return 'The requested resource was not found. This feature may not be available yet.';
  }

  /// Get user-friendly message for 409 Conflict
  static String _getConflictMessage(String endpoint) {
    if (endpoint.contains('trips')) {
      return 'Cannot modify trip. It may be part of an active journey.';
    } else if (endpoint.contains('user/data')) {
      return 'Cannot delete user data. Some data may be in use.';
    }
    return 'Conflict detected. The resource may be in use by another process.';
  }

  /// Get validation error message from response
  static String _getValidationMessage(Response response) {
    try {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        if (data.containsKey('message')) {
          return data['message'] as String;
        }
        if (data.containsKey('errors')) {
          final errors = data['errors'];
          if (errors is List && errors.isNotEmpty) {
            return errors.first.toString();
          }
        }
      }
    } catch (e) {
      // Ignore parsing errors
    }
    return 'Validation failed. Please check your input and try again.';
  }

  /// Get user-friendly message for server errors
  static String _getServerErrorMessage(String endpoint, int statusCode) {
    if (endpoint.contains('travel-preferences')) {
      return 'Server error while processing preferences. Your changes may not be saved. Please try again later.';
    } else if (endpoint.contains('trips')) {
      return 'Server error while processing trip data. Please try again later.';
    } else if (endpoint.contains('dashboard')) {
      return 'Dashboard service is temporarily unavailable. Showing cached data.';
    } else if (endpoint.contains('settings')) {
      return 'Settings service is temporarily unavailable. Changes saved locally only.';
    }

    switch (statusCode) {
      case 500:
        return 'Internal server error. Please try again later or contact support.';
      case 502:
        return 'Service temporarily unavailable. Please try again in a few minutes.';
      case 503:
        return 'Service is under maintenance. Please try again later.';
      case 504:
        return 'Server timeout. Please try again later.';
      default:
        return 'Server error ($statusCode). Please try again later.';
    }
  }

  /// Convert general exceptions to failures
  static Failure handleGeneralException(Exception exception) {
    if (exception is ServerException) {
      return ServerFailure(message: exception.message);
    } else if (exception is CacheException) {
      return CacheFailure(message: exception.message);
    } else if (exception is NetworkException) {
      return NetworkFailure(message: exception.message);
    } else if (exception is ValidationException) {
      return ValidationFailure(message: exception.message);
    }

    return GeneralFailure(
      message: 'An unexpected error occurred: ${exception.toString()}',
    );
  }

  /// Get user action suggestions based on failure type
  static List<String> getUserActionSuggestions(Failure failure) {
    if (failure is NetworkFailure) {
      return [
        'Check your internet connection',
        'Try again in a few moments',
        'Switch to a different network if available',
      ];
    } else if (failure is ServerFailure) {
      return [
        'Try again later',
        'Check if the service is under maintenance',
        'Contact support if the problem persists',
      ];
    } else if (failure is ValidationFailure) {
      return [
        'Check your input data',
        'Ensure all required fields are filled',
        'Verify data format is correct',
      ];
    } else if (failure is PermissionFailure) {
      return [
        'Log in again if needed',
        'Check your account permissions',
        'Contact support for access issues',
      ];
    } else if (failure is CacheFailure) {
      return [
        'Clear app cache and try again',
        'Restart the application',
        'Free up device storage space',
      ];
    }

    return [
      'Try again later',
      'Restart the application',
      'Contact support if the issue persists',
    ];
  }

  /// Check if error should trigger fallback to local data
  static bool shouldUseFallback(Failure failure) {
    return failure is NetworkFailure ||
        failure is ServerFailure ||
        (failure is ServerFailure &&
            failure.message?.contains('not found') == true);
  }

  /// Get retry delay based on failure type
  static Duration getRetryDelay(Failure failure) {
    if (failure is NetworkFailure) {
      return const Duration(seconds: 5);
    } else if (failure is ServerFailure) {
      return const Duration(seconds: 10);
    }
    return const Duration(seconds: 3);
  }
}

/// Extension to add error handling to data sources
extension DataSourceErrorHandling on Object {
  /// Wrap API calls with comprehensive error handling
  Future<T> handleApiCall<T>(Future<T> Function() apiCall) async {
    try {
      return await apiCall();
    } on DioException catch (e) {
      final failure = ApiErrorHandler.handleDioException(e);
      throw Exception(failure.message ?? 'Unknown error occurred');
    } on Exception catch (e) {
      final failure = ApiErrorHandler.handleGeneralException(e);
      throw Exception(failure.message ?? 'Unknown error occurred');
    }
  }
}
