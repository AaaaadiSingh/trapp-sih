part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoState with _$PersonalInfoState {
  const factory PersonalInfoState({
    @Default(AgeGroupInput.pure()) AgeGroupInput ageGroup,
    @Default(GenderInput.pure()) GenderInput gender,
    @Default(EmploymentStatusInput.pure())
    EmploymentStatusInput employmentStatus,
    @Default(PrivacyConsentInput.pure()) PrivacyConsentInput privacyConsent,
    @Default(false) bool dataProcessingConsent,
    @Default(false) bool locationConsent,
    @Default(false) bool backgroundLocationConsent,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    PersonalInfo? personalInfo,
    String? errorMessage,
  }) = _PersonalInfoState;
}

extension PersonalInfoStateX on PersonalInfoState {
  bool get isSubmissionInProgress => status == FormzSubmissionStatus.inProgress;
  bool get isSubmissionSuccess => status == FormzSubmissionStatus.success;
  bool get isSubmissionFailure => status == FormzSubmissionStatus.failure;
}
