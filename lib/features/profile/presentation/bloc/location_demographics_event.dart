part of 'location_demographics_bloc.dart';

@freezed
class LocationDemographicsEvent with _$LocationDemographicsEvent {
  const factory LocationDemographicsEvent.homeLocationChanged({
    required String location,
  }) = HomeLocationChanged;

  const factory LocationDemographicsEvent.workLocationChanged({
    required String location,
  }) = WorkLocationChanged;

  const factory LocationDemographicsEvent.privacyLevelChanged({
    required String level,
  }) = PrivacyLevelChanged;

  const factory LocationDemographicsEvent.shareLocationDataChanged({
    required bool share,
  }) = ShareLocationDataChanged;

  const factory LocationDemographicsEvent.locationPrivacyConsentChanged({
    required bool consent,
  }) = LocationPrivacyConsentChanged;

  const factory LocationDemographicsEvent.locationDataProcessingConsentChanged({
    required bool consent,
  }) = LocationDataProcessingConsentChanged;

  const factory LocationDemographicsEvent.locationFormSubmitted() =
      LocationFormSubmitted;

  const factory LocationDemographicsEvent.locationFormReset() =
      LocationFormReset;
}
