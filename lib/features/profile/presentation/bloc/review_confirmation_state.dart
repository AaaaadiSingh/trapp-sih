part of 'review_confirmation_bloc.dart';

@freezed
class ReviewConfirmationState with _$ReviewConfirmationState {
  const factory ReviewConfirmationState({
    @Default(FinalConsentInput.pure()) FinalConsentInput finalConsent,
    @Default(PrivacyPolicyInput.pure()) PrivacyPolicyInput privacyPolicy,
    @Default(TermsOfServiceInput.pure()) TermsOfServiceInput termsOfService,
    @Default(ReviewDataProcessingConsentInput.pure())
    ReviewDataProcessingConsentInput dataProcessingConsent,
    @Default(MarketingConsentInput.pure())
    MarketingConsentInput marketingConsent,
    @Default(false) bool isValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isDataLoaded,
    String? errorMessage,
    PersonalInfo? personalInfo,
    LocationDemographics? locationDemographics,
    DataSummary? dataSummary,
    ReviewConfirmation? reviewConfirmation,
  }) = _ReviewConfirmationState;
}
