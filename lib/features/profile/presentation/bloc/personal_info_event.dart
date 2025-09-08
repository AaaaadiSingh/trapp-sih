part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.ageGroupChanged(String ageGroup) =
      AgeGroupChanged;
  const factory PersonalInfoEvent.genderChanged(String gender) = GenderChanged;
  const factory PersonalInfoEvent.employmentStatusChanged(
    String employmentStatus,
  ) = EmploymentStatusChanged;
  const factory PersonalInfoEvent.privacyConsentChanged(bool consent) =
      PrivacyConsentChanged;
  const factory PersonalInfoEvent.dataProcessingConsentChanged(bool consent) =
      DataProcessingConsentChanged;
  const factory PersonalInfoEvent.formSubmitted() = FormSubmitted;
  const factory PersonalInfoEvent.formReset() = FormReset;
}
