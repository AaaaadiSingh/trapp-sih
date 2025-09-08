import 'package:freezed_annotation/freezed_annotation.dart';

import 'personal_info.dart';
import 'location_demographics.dart';

part 'review_confirmation.freezed.dart';
part 'review_confirmation.g.dart';

@freezed
class ReviewConfirmation with _$ReviewConfirmation {
  const factory ReviewConfirmation({
    required PersonalInfo personalInfo,
    required LocationDemographics locationDemographics,
    required bool finalConsent,
    required bool dataProcessingConsent,
    required bool privacyPolicyAccepted,
    required bool termsOfServiceAccepted,
    @Default(false) bool marketingConsent,
    required DateTime submittedAt,
    String? submissionId,
  }) = _ReviewConfirmation;

  factory ReviewConfirmation.fromJson(Map<String, dynamic> json) =>
      _$ReviewConfirmationFromJson(json);
}

// Submission Status for tracking
enum SubmissionStatus {
  draft('draft', 'Draft'),
  submitted('submitted', 'Submitted'),
  processing('processing', 'Processing'),
  completed('completed', 'Completed'),
  failed('failed', 'Failed');

  const SubmissionStatus(this.value, this.displayName);
  final String value;
  final String displayName;
}

// Data Summary for display
@freezed
class DataSummary with _$DataSummary {
  const factory DataSummary({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String ageGroup,
    required String gender,
    required String employmentStatus,
    required String homeLocation,
    required String workLocation,
    required String privacyLevel,
    required bool shareLocationData,
    required int totalConsentItems,
    required int acceptedConsentItems,
  }) = _DataSummary;

  factory DataSummary.fromJson(Map<String, dynamic> json) =>
      _$DataSummaryFromJson(json);
}
