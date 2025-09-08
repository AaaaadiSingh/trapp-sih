part of 'travel_preferences_bloc.dart';

@freezed
class TravelPreferencesEvent with _$TravelPreferencesEvent {
  const factory TravelPreferencesEvent.transportationModesChanged({
    required List<String> modes,
  }) = TransportationModesChanged;

  const factory TravelPreferencesEvent.travelFrequencyChanged({
    required String frequency,
  }) = TravelFrequencyChanged;

  const factory TravelPreferencesEvent.travelPrivacyConsentChanged({
    required bool consent,
  }) = TravelPrivacyConsentChanged;

  const factory TravelPreferencesEvent.travelDataProcessingConsentChanged({
    required bool consent,
  }) = TravelDataProcessingConsentChanged;

  const factory TravelPreferencesEvent.travelFormSubmitted() = TravelFormSubmitted;

  const factory TravelPreferencesEvent.travelFormReset() = TravelFormReset;
}