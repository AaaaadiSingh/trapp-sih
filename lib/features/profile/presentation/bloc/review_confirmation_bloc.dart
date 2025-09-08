import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/review_confirmation.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/location_demographics.dart';
import 'review_form_inputs.dart';

part 'review_confirmation_bloc.freezed.dart';
part 'review_confirmation_event.dart';
part 'review_confirmation_state.dart';

@injectable
class ReviewConfirmationBloc
    extends Bloc<ReviewConfirmationEvent, ReviewConfirmationState> {
  ReviewConfirmationBloc() : super(const ReviewConfirmationState()) {
    on<LoadReviewData>(_onLoadReviewData);
    on<FinalConsentChanged>(_onFinalConsentChanged);
    on<PrivacyPolicyChanged>(_onPrivacyPolicyChanged);
    on<TermsOfServiceChanged>(_onTermsOfServiceChanged);
    on<ReviewDataProcessingConsentChanged>(
      _onReviewDataProcessingConsentChanged,
    );
    on<MarketingConsentChanged>(_onMarketingConsentChanged);
    on<ReviewFormSubmitted>(_onReviewFormSubmitted);
    on<ReviewFormReset>(_onReviewFormReset);
  }

  void _onLoadReviewData(
    LoadReviewData event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    // Create data summary from all collected information
    final dataSummary = DataSummary(
      fullName: event.personalInfo.fullName,
      email: event.personalInfo.email,
      phoneNumber: event.personalInfo.phoneNumber,
      ageGroup: event.personalInfo.ageGroup,
      gender: event.personalInfo.gender,
      employmentStatus: event.personalInfo.employmentStatus,
      homeLocation: event.locationDemographics.homeLocation,
      workLocation: event.locationDemographics.workLocation,
      privacyLevel: event.locationDemographics.privacyLevel.displayName,
      shareLocationData: event.locationDemographics.shareLocationData,
      totalConsentItems: 3, // Final, Privacy Policy, Terms of Service
      acceptedConsentItems: 0, // Will be updated as user accepts
    );

    emit(
      state.copyWith(
        personalInfo: event.personalInfo,
        locationDemographics: event.locationDemographics,
        dataSummary: dataSummary,
        isDataLoaded: true,
      ),
    );
  }

  void _onFinalConsentChanged(
    FinalConsentChanged event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    final finalConsent = FinalConsentInput.dirty(event.consent);
    emit(
      state.copyWith(
        finalConsent: finalConsent,
        isValid: Formz.validate([
          finalConsent,
          state.privacyPolicy,
          state.termsOfService,
        ]),
      ),
    );
  }

  void _onPrivacyPolicyChanged(
    PrivacyPolicyChanged event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    final privacyPolicy = PrivacyPolicyInput.dirty(event.accepted);
    emit(
      state.copyWith(
        privacyPolicy: privacyPolicy,
        isValid: Formz.validate([
          state.finalConsent,
          privacyPolicy,
          state.termsOfService,
        ]),
      ),
    );
  }

  void _onTermsOfServiceChanged(
    TermsOfServiceChanged event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    final termsOfService = TermsOfServiceInput.dirty(event.accepted);
    emit(
      state.copyWith(
        termsOfService: termsOfService,
        isValid: Formz.validate([
          state.finalConsent,
          state.privacyPolicy,
          termsOfService,
        ]),
      ),
    );
  }

  void _onReviewDataProcessingConsentChanged(
    ReviewDataProcessingConsentChanged event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    final dataProcessingConsent = ReviewDataProcessingConsentInput.dirty(
      event.consent,
    );
    emit(state.copyWith(dataProcessingConsent: dataProcessingConsent));
  }

  void _onMarketingConsentChanged(
    MarketingConsentChanged event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    final marketingConsent = MarketingConsentInput.dirty(event.consent);
    emit(state.copyWith(marketingConsent: marketingConsent));
  }

  void _onReviewFormSubmitted(
    ReviewFormSubmitted event,
    Emitter<ReviewConfirmationState> emit,
  ) async {
    if (!state.isValid || !state.isDataLoaded) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage:
              'Please complete all required fields and accept all required terms',
        ),
      );
      return;
    }

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      // Simulate API call for final submission
      await Future.delayed(const Duration(seconds: 3));

      final reviewConfirmation = ReviewConfirmation(
        personalInfo: state.personalInfo!,
        locationDemographics: state.locationDemographics!,
        finalConsent: state.finalConsent.value,
        dataProcessingConsent: state.dataProcessingConsent.value,
        privacyPolicyAccepted: state.privacyPolicy.value,
        termsOfServiceAccepted: state.termsOfService.value,
        marketingConsent: state.marketingConsent.value,
        submittedAt: DateTime.now(),
        submissionId: 'SUB_${DateTime.now().millisecondsSinceEpoch}',
      );

      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          reviewConfirmation: reviewConfirmation,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Failed to submit your information. Please try again.',
        ),
      );
    }
  }

  void _onReviewFormReset(
    ReviewFormReset event,
    Emitter<ReviewConfirmationState> emit,
  ) {
    emit(const ReviewConfirmationState());
  }
}
