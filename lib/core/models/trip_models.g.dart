// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  startLocation: LocationPoint.fromJson(
    json['start_location'] as Map<String, dynamic>,
  ),
  endLocation: LocationPoint.fromJson(
    json['end_location'] as Map<String, dynamic>,
  ),
  transportMode: json['transport_mode'] as String,
  startTime: DateTime.parse(json['start_time'] as String),
  endTime:
      json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
  durationMinutes: (json['duration_minutes'] as num?)?.toInt(),
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
  cost: (json['cost'] as num?)?.toDouble(),
  emissionsKg: (json['emissions_kg'] as num?)?.toDouble(),
  tripStatus: json['trip_status'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_location': instance.startLocation,
      'end_location': instance.endLocation,
      'transport_mode': instance.transportMode,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'duration_minutes': instance.durationMinutes,
      'distance_km': instance.distanceKm,
      'cost': instance.cost,
      'emissions_kg': instance.emissionsKg,
      'trip_status': instance.tripStatus,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$LocationPointImpl _$$LocationPointImplFromJson(Map<String, dynamic> json) =>
    _$LocationPointImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String?,
      name: json['name'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$LocationPointImplToJson(_$LocationPointImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'name': instance.name,
      'city': instance.city,
      'country': instance.country,
      'postal_code': instance.postalCode,
    };

_$WeatherConditionsImpl _$$WeatherConditionsImplFromJson(
  Map<String, dynamic> json,
) => _$WeatherConditionsImpl(
  temperatureCelsius: (json['temperature_celsius'] as num).toDouble(),
  feelsLikeCelsius: (json['feels_like_celsius'] as num).toDouble(),
  condition: json['condition'] as String,
  description: json['description'] as String,
  humidity: (json['humidity'] as num).toInt(),
  windSpeedKmh: (json['wind_speed_kmh'] as num).toDouble(),
  windDirection: json['wind_direction'] as String,
  visibilityKm: (json['visibility_km'] as num).toDouble(),
  uvIndex: (json['uv_index'] as num).toInt(),
  airQualityIndex: (json['air_quality_index'] as num?)?.toInt(),
);

Map<String, dynamic> _$$WeatherConditionsImplToJson(
  _$WeatherConditionsImpl instance,
) => <String, dynamic>{
  'temperature_celsius': instance.temperatureCelsius,
  'feels_like_celsius': instance.feelsLikeCelsius,
  'condition': instance.condition,
  'description': instance.description,
  'humidity': instance.humidity,
  'wind_speed_kmh': instance.windSpeedKmh,
  'wind_direction': instance.windDirection,
  'visibility_km': instance.visibilityKm,
  'uv_index': instance.uvIndex,
  'air_quality_index': instance.airQualityIndex,
};
