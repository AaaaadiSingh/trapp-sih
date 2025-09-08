import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_demographics.freezed.dart';
part 'location_demographics.g.dart';

@freezed
class LocationDemographics with _$LocationDemographics {
  const factory LocationDemographics({
    required String homeLocation,
    required String workLocation,
    required bool shareLocationData,
    required bool privacyConsent,
    @Default(false) bool dataProcessingConsent,
    @Default(LocationPrivacyLevel.city) LocationPrivacyLevel privacyLevel,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _LocationDemographics;

  factory LocationDemographics.fromJson(Map<String, dynamic> json) =>
      _$LocationDemographicsFromJson(json);
}

// Location Privacy Level Options
enum LocationPrivacyLevel {
  exact('exact', 'Exact Address'),
  neighborhood('neighborhood', 'Neighborhood Only'),
  city('city', 'City Only'),
  region('region', 'Region/State Only');

  const LocationPrivacyLevel(this.value, this.displayName);
  final String value;
  final String displayName;
}

// Location Type for form handling
enum LocationType {
  home('home', 'Home Location'),
  work('work', 'Work Location');

  const LocationType(this.value, this.displayName);
  final String value;
  final String displayName;
}
