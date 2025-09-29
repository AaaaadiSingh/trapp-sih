import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/error_handler.dart';
import '../models/travel_preferences_model.dart';

abstract class TravelPreferencesRemoteDataSource {
  Future<TravelPreferencesModel> getTravelPreferences();
  Future<TravelPreferencesModel> updateTravelPreferences(
    UpdateTravelPreferencesRequest request,
  );
  Future<TravelPreferencesModel> createTravelPreferences(
    CreateTravelPreferencesRequest request,
  );
  Future<void> deleteTravelPreferences();
}

@LazySingleton(as: TravelPreferencesRemoteDataSource)
class TravelPreferencesRemoteDataSourceImpl
    implements TravelPreferencesRemoteDataSource {
  final ApiService _apiService;

  TravelPreferencesRemoteDataSourceImpl(this._apiService);

  @override
  Future<TravelPreferencesModel> getTravelPreferences() async {
    return handleApiCall(() async {
      final response = await _apiService.get(ApiEndpoints.getTravelPreferences);

      return TravelPreferencesModel.fromJson(response.data['preferences']);
    });
  }

  @override
  Future<TravelPreferencesModel> updateTravelPreferences(
    UpdateTravelPreferencesRequest request,
  ) async {
    return handleApiCall(() async {
      final requestData = request.toJson();

      final response = await _apiService.put(
        ApiEndpoints.updateTravelPreferences,
        data: requestData,
      );

      return TravelPreferencesModel.fromJson(response.data['preferences']);
    });
  }

  @override
  Future<TravelPreferencesModel> createTravelPreferences(
    CreateTravelPreferencesRequest request,
  ) async {
    return handleApiCall(() async {
      final requestData = request.toJson();

      final response = await _apiService.post(
        ApiEndpoints.travelPreferences,
        data: requestData,
      );

      return TravelPreferencesModel.fromJson(response.data['preferences']);
    });
  }

  @override
  Future<void> deleteTravelPreferences() async {
    return handleApiCall(() async {
      await _apiService.delete(ApiEndpoints.travelPreferences);
    });
  }
}
