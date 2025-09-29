import 'package:injectable/injectable.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/utils/error_handler.dart';
import '../models/trip_model.dart';

abstract class TripsRemoteDataSource {
  Future<List<TripModel>> getUserTrips(String userId);
  Future<TripModel> startTrip(StartTripRequest request);
  Future<TripModel> endTrip(String tripId, EndTripRequest request);
}

@LazySingleton(as: TripsRemoteDataSource)
class TripsRemoteDataSourceImpl implements TripsRemoteDataSource {
  final ApiService _apiService;

  TripsRemoteDataSourceImpl(this._apiService);

  @override
  Future<List<TripModel>> getUserTrips(String userId) async {
    return handleApiCall(() async {
      final response = await _apiService.get(ApiEndpoints.getUserTrips(userId));

      final List<dynamic> data = response.data['trips'] ?? [];
      return data.map((json) => TripModel.fromJson(json)).toList();
    });
  }

  @override
  Future<TripModel> startTrip(StartTripRequest request) async {
    return handleApiCall(() async {
      final requestData = request.toJson();

      final response = await _apiService.post(
        ApiEndpoints.startTrip,
        data: requestData,
      );

      return TripModel.fromJson(response.data['trip']);
    });
  }

  @override
  Future<TripModel> endTrip(String tripId, EndTripRequest request) async {
    return handleApiCall(() async {
      final requestData = request.toJson();

      final response = await _apiService.put(
        ApiEndpoints.endTrip(tripId),
        data: requestData,
      );

      return TripModel.fromJson(response.data['trip']);
    });
  }
}
