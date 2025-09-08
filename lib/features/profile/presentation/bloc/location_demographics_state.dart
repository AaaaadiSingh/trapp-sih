part of 'location_demographics_bloc.dart';

@freezed
class LocationDemographicsState with _$LocationDemographicsState {
  const factory LocationDemographicsState({
    @Default(HomeLocationInput.pure()) HomeLocationInput homeLocation,
    @Default(WorkLocationInput.pure()) WorkLocationInput workLocation,
    @Default(PrivacyLevelInput.pure()) PrivacyLevelInput privacyLevel,
    @Default(ShareLocationDataInput.pure())
    ShareLocationDataInput shareLocationData,
    @Default(LocationPrivacyConsentInput.pure())
    LocationPrivacyConsentInput privacyConsent,
    @Default(false) bool dataProcessingConsent,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? errorMessage,
    LocationDemographics? locationDemographics,
  }) = _LocationDemographicsState;
}
