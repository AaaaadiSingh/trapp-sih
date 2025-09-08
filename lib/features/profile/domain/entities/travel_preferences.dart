import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_preferences.freezed.dart';
part 'travel_preferences.g.dart';

@freezed
class TravelPreferences with _$TravelPreferences {
  const factory TravelPreferences({
    required List<String> transportationModes,
    required String travelFrequency,
    required bool privacyConsent,
    @Default(false) bool dataProcessingConsent,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TravelPreferences;

  factory TravelPreferences.fromJson(Map<String, dynamic> json) =>
      _$TravelPreferencesFromJson(json);
}

// Transportation Mode Options
enum TransportationMode {
  car('car', 'Car'),
  publicTransit('public_transit', 'Public Transit'),
  walking('walking', 'Walking'),
  cycling('cycling', 'Cycling');

  const TransportationMode(this.value, this.displayName);
  final String value;
  final String displayName;
}

// Travel Frequency Options
enum TravelFrequency {
  daily('daily', 'Daily'),
  weekly('weekly', 'Weekly'),
  monthly('monthly', 'Monthly'),
  occasionally('occasionally', 'Occasionally'),
  rarely('rarely', 'Rarely');

  const TravelFrequency(this.value, this.displayName);
  final String value;
  final String displayName;
}
