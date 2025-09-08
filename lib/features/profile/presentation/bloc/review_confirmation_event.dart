part of 'review_confirmation_bloc.dart';

@freezed
class ReviewConfirmationEvent with _$ReviewConfirmationEvent {
  const factory ReviewConfirmationEvent.loadReviewData({
    required PersonalInfo personalInfo,
    required LocationDemographics locationDemographics,
  }) = LoadReviewData;

  const factory ReviewConfirmationEvent.finalConsentChanged({
    required bool consent,
  }) = FinalConsentChanged;

  const factory ReviewConfirmationEvent.privacyPolicyChanged({
    required bool accepted,
  }) = PrivacyPolicyChanged;

  const factory ReviewConfirmationEvent.termsOfServiceChanged({
    required bool accepted,
  }) = TermsOfServiceChanged;

  const factory ReviewConfirmationEvent.reviewDataProcessingConsentChanged({
    required bool consent,
  }) = ReviewDataProcessingConsentChanged;

  const factory ReviewConfirmationEvent.marketingConsentChanged({
    required bool consent,
  }) = MarketingConsentChanged;

  const factory ReviewConfirmationEvent.reviewFormSubmitted() =
      ReviewFormSubmitted;

  const factory ReviewConfirmationEvent.reviewFormReset() = ReviewFormReset;
}
