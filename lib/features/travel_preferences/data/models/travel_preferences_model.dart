import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_preferences_model.freezed.dart';
part 'travel_preferences_model.g.dart';

@freezed
class TravelPreferencesModel with _$TravelPreferencesModel {
  const factory TravelPreferencesModel({
    required String id,
    required String userId,
    required List<String> preferredTransportModes,
    required bool ecoFriendlyMode,
    required double maxWalkingDistance,
    required bool avoidTolls,
    required bool avoidHighways,
    Map<String, dynamic>? customPreferences,
    DateTime? updatedAt,
  }) = _TravelPreferencesModel;

  factory TravelPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$TravelPreferencesModelFromJson(json);
}

@freezed
class UpdateTravelPreferencesRequest with _$UpdateTravelPreferencesRequest {
  const factory UpdateTravelPreferencesRequest({
    required List<String> preferredTransportModes,
    required bool ecoFriendlyMode,
    required double maxWalkingDistance,
    required bool avoidTolls,
    required bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  }) = _UpdateTravelPreferencesRequest;

  factory UpdateTravelPreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTravelPreferencesRequestFromJson(json);
}

@freezed
class CreateTravelPreferencesRequest with _$CreateTravelPreferencesRequest {
  const factory CreateTravelPreferencesRequest({
    required List<String> preferredTransportModes,
    required bool ecoFriendlyMode,
    required double maxWalkingDistance,
    required bool avoidTolls,
    required bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  }) = _CreateTravelPreferencesRequest;

  factory CreateTravelPreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTravelPreferencesRequestFromJson(json);
}
