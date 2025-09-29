import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import '../constants/app_constants.dart';
import '../services/secure_storage_service.dart';
import 'endpoints.dart';

@singleton
class ApiService {
  late final Dio _dio;
  final Logger _logger = Logger();
  final SecureStorageService _secureStorage;

  ApiService(this._secureStorage) {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: AppConstants.requestTimeout,
        receiveTimeout: AppConstants.requestTimeout,
        sendTimeout: AppConstants.requestTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Add user ID to all requests from secure storage
          final userId = await _secureStorage.getUserId();
          if (userId != null) {
            options.queryParameters['userId'] = userId;
          }
          _logger.d('Request: ${options.method} ${options.path}');
          _logger.d('Data: ${options.data}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          _logger.d(
            'Response: ${response.statusCode} ${response.requestOptions.path}',
          );
          handler.next(response);
        },
        onError: (error, handler) {
          _logger.e('Error: ${error.message}');
          _logger.e('Response: ${error.response?.data}');
          handler.next(error);
        },
      ),
    );
  }

  // GET request
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.e('GET request failed: $e');
      rethrow;
    }
  }

  // POST request
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.e('POST request failed: $e');
      rethrow;
    }
  }

  // PUT request
  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.e('PUT request failed: $e');
      rethrow;
    }
  }

  // DELETE request
  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      _logger.e('DELETE request failed: $e');
      rethrow;
    }
  }

  // ==================== DASHBOARD API METHODS ====================
  
  /// Get dashboard statistics
  /// Returns comprehensive dashboard stats including trip counts, preferences, etc.
  Future<Response<Map<String, dynamic>>> getDashboardStats({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching dashboard overview');
      return await get<Map<String, dynamic>>(
        ApiEndpoints.dashboardOverview,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch dashboard overview: $e');
      rethrow;
    }
  }

  /// Get dashboard summary
  /// Returns insights view of user's travel data
  Future<Response<Map<String, dynamic>>> getDashboardSummary({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching dashboard insights');
      return await get<Map<String, dynamic>>(
        ApiEndpoints.dashboardInsights,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch dashboard insights: $e');
      rethrow;
    }
  }

  /// Get goals and challenges
  /// Returns user goals and challenges data
  Future<Response<Map<String, dynamic>>> getGoalsAndChallenges({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching goals and challenges');
      return await get<Map<String, dynamic>>(
        ApiEndpoints.dashboardGoals,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch goals and challenges: $e');
      rethrow;
    }
  }

  // ==================== TRIP MANAGEMENT API METHODS ====================
  
  /// Start a new trip
  /// Initiates a trip with starting location and transport mode
  Future<Response<Map<String, dynamic>>> startTrip({
    required Map<String, dynamic> data,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Starting new trip');
      return await post<Map<String, dynamic>>(
        ApiEndpoints.startTrip,
        data: data,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to start trip: $e');
      rethrow;
    }
  }

  /// End an existing trip
  /// Completes a trip with ending details
  Future<Response<Map<String, dynamic>>> endTrip(
    String tripId, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Ending trip with ID: $tripId');
      return await post<Map<String, dynamic>>(
        ApiEndpoints.endTrip(tripId),
        data: data,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to end trip $tripId: $e');
      rethrow;
    }
  }

  /// Get trips for a specific user
  /// Returns all trips for the specified user ID
  Future<Response<List<dynamic>>> getUserTrips(
    String userId, {
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching trips for user: $userId');
      return await get<List<dynamic>>(
        ApiEndpoints.getUserTrips(userId),
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch trips for user $userId: $e');
      rethrow;
    }
  }

  // ==================== TRAVEL PREFERENCES API METHODS ====================
  
  /// Get travel preferences for the current user
  /// Returns user's travel preferences configuration
  Future<Response<Map<String, dynamic>>> getTravelPreferences({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching travel preferences');
      return await get<Map<String, dynamic>>(
        'travel-preferences',
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch travel preferences: $e');
      rethrow;
    }
  }

  /// Create travel preferences for the current user
  /// Creates new travel preferences configuration
  Future<Response<Map<String, dynamic>>> createTravelPreferences({
    required List<String> preferredTransportModes,
    required bool ecoFriendlyMode,
    required double maxWalkingDistance,
    required bool avoidTolls,
    required bool avoidHighways,
    double? maxTravelTime,
    double? budgetLimit,
    String? preferredDepartureTime,
    Map<String, dynamic>? customSettings,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Creating travel preferences');
      
      final preferencesData = <String, dynamic>{
        'preferredTransportModes': preferredTransportModes,
        'ecoFriendlyMode': ecoFriendlyMode,
        'maxWalkingDistance': maxWalkingDistance,
        'avoidTolls': avoidTolls,
        'avoidHighways': avoidHighways,
      };
      
      if (maxTravelTime != null) preferencesData['maxTravelTime'] = maxTravelTime;
      if (budgetLimit != null) preferencesData['budgetLimit'] = budgetLimit;
      if (preferredDepartureTime != null) preferencesData['preferredDepartureTime'] = preferredDepartureTime;
      if (customSettings != null) preferencesData['customSettings'] = customSettings;
      
      return await post<Map<String, dynamic>>(
        'travel-preferences',
        data: preferencesData,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to create travel preferences: $e');
      rethrow;
    }
  }

  /// Update travel preferences for the current user
  /// Updates existing travel preferences configuration
  Future<Response<Map<String, dynamic>>> updateTravelPreferences({
    List<String>? preferredTransportModes,
    bool? ecoFriendlyMode,
    double? maxWalkingDistance,
    bool? avoidTolls,
    bool? avoidHighways,
    double? maxTravelTime,
    double? budgetLimit,
    String? preferredDepartureTime,
    Map<String, dynamic>? customSettings,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Updating travel preferences');
      
      final updateData = <String, dynamic>{};
      
      if (preferredTransportModes != null) updateData['preferredTransportModes'] = preferredTransportModes;
      if (ecoFriendlyMode != null) updateData['ecoFriendlyMode'] = ecoFriendlyMode;
      if (maxWalkingDistance != null) updateData['maxWalkingDistance'] = maxWalkingDistance;
      if (avoidTolls != null) updateData['avoidTolls'] = avoidTolls;
      if (avoidHighways != null) updateData['avoidHighways'] = avoidHighways;
      if (maxTravelTime != null) updateData['maxTravelTime'] = maxTravelTime;
      if (budgetLimit != null) updateData['budgetLimit'] = budgetLimit;
      if (preferredDepartureTime != null) updateData['preferredDepartureTime'] = preferredDepartureTime;
      if (customSettings != null) updateData['customSettings'] = customSettings;
      
      return await put<Map<String, dynamic>>(
        'travel-preferences',
        data: updateData,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to update travel preferences: $e');
      rethrow;
    }
  }

  /// Delete travel preferences for the current user
  /// Removes all travel preferences configuration
  Future<Response<Map<String, dynamic>>> deleteTravelPreferences({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Deleting travel preferences');
      return await delete<Map<String, dynamic>>(
        'travel-preferences',
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to delete travel preferences: $e');
      rethrow;
     }
   }

  // ==================== USER PROFILE API METHODS ====================
  
  /// Get user profile information
  /// Returns complete user profile data
  Future<Response<Map<String, dynamic>>> getUserProfile({
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Fetching user profile');
      return await get<Map<String, dynamic>>(
        ApiEndpoints.userProfile,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to fetch user profile: $e');
      rethrow;
    }
  }

  /// Update user profile information
  /// Updates user profile with provided data
  Future<Response<Map<String, dynamic>>> updateUserProfile({
    String? name,
    String? email,
    String? phone,
    String? dateOfBirth,
    String? gender,
    String? address,
    String? city,
    String? state,
    String? country,
    String? zipCode,
    String? profilePicture,
    Map<String, dynamic>? preferences,
    Map<String, dynamic>? emergencyContact,
    Map<String, dynamic>? additionalParams,
  }) async {
    try {
      _logger.i('Updating user profile');
      
      final profileData = <String, dynamic>{};
      
      if (name != null) profileData['name'] = name;
      if (email != null) profileData['email'] = email;
      if (phone != null) profileData['phone'] = phone;
      if (dateOfBirth != null) profileData['dateOfBirth'] = dateOfBirth;
      if (gender != null) profileData['gender'] = gender;
      if (address != null) profileData['address'] = address;
      if (city != null) profileData['city'] = city;
      if (state != null) profileData['state'] = state;
      if (country != null) profileData['country'] = country;
      if (zipCode != null) profileData['zipCode'] = zipCode;
      if (profilePicture != null) profileData['profilePicture'] = profilePicture;
      if (preferences != null) profileData['preferences'] = preferences;
      if (emergencyContact != null) profileData['emergencyContact'] = emergencyContact;
      
      return await put<Map<String, dynamic>>(
        ApiEndpoints.userProfile,
        data: profileData,
        queryParameters: additionalParams,
      );
    } catch (e) {
      _logger.e('Failed to update user profile: $e');
      rethrow;
    }
  }


  

  }
