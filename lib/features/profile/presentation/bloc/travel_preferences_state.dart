part of 'travel_preferences_bloc.dart';

@freezed
class TravelPreferencesState with _$TravelPreferencesState {
  const factory TravelPreferencesState({
    @Default(TransportationModesInput.pure()) TransportationModesInput transportationModes,
    @Default(TravelFrequencyInput.pure()) TravelFrequencyInput travelFrequency,
    @Default(TravelPrivacyConsentInput.pure()) TravelPrivacyConsentInput privacyConsent,
    @Default(false) bool dataProcessingConsent,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? errorMessage,
    TravelPreferences? travelPreferences,
  }) = _TravelPreferencesState;
}