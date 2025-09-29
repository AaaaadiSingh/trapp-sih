import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_models.freezed.dart';
part 'trip_models.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String id,
    required String title,
    @JsonKey(name: 'start_location') required LocationPoint startLocation,
    @JsonKey(name: 'end_location') required LocationPoint endLocation,
    @JsonKey(name: 'transport_mode') required String transportMode,
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'cost') double? cost,
    @JsonKey(name: 'emissions_kg') double? emissionsKg,
    @JsonKey(name: 'trip_status') required String tripStatus,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
class LocationPoint with _$LocationPoint {
  const factory LocationPoint({
    required double latitude,
    required double longitude,
    String? address,
    String? name,
    String? city,
    String? country,
    @JsonKey(name: 'postal_code') String? postalCode,
  }) = _LocationPoint;

  factory LocationPoint.fromJson(Map<String, dynamic> json) => _$LocationPointFromJson(json);
}

@freezed
class WeatherConditions with _$WeatherConditions {
  const factory WeatherConditions({
    @JsonKey(name: 'temperature_celsius') required double temperatureCelsius,
    @JsonKey(name: 'feels_like_celsius') required double feelsLikeCelsius,
    required String condition,
    required String description,
    required int humidity,
    @JsonKey(name: 'wind_speed_kmh') required double windSpeedKmh,
    @JsonKey(name: 'wind_direction') required String windDirection,
    @JsonKey(name: 'visibility_km') required double visibilityKm,
    @JsonKey(name: 'uv_index') required int uvIndex,
    @JsonKey(name: 'air_quality_index') int? airQualityIndex,
  }) = _WeatherConditions;

  factory WeatherConditions.fromJson(Map<String, dynamic> json) => _$WeatherConditionsFromJson(json);
}