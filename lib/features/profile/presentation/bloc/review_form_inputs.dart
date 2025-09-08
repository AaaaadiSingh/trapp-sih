import 'package:formz/formz.dart';

// Final Consent Input
class FinalConsentInput extends FormzInput<bool, FinalConsentValidationError> {
  const FinalConsentInput.pure() : super.pure(false);
  const FinalConsentInput.dirty([bool value = false]) : super.dirty(value);

  @override
  FinalConsentValidationError? validator(bool value) {
    if (!value) {
      return FinalConsentValidationError.required;
    }
    return null;
  }
}

enum FinalConsentValidationError {
  required('Final consent is required to submit your information');

  const FinalConsentValidationError(this.message);
  final String message;
}

// Privacy Policy Acceptance Input
class PrivacyPolicyInput
    extends FormzInput<bool, PrivacyPolicyValidationError> {
  const PrivacyPolicyInput.pure() : super.pure(false);
  const PrivacyPolicyInput.dirty([bool value = false]) : super.dirty(value);

  @override
  PrivacyPolicyValidationError? validator(bool value) {
    if (!value) {
      return PrivacyPolicyValidationError.required;
    }
    return null;
  }
}

enum PrivacyPolicyValidationError {
  required('You must accept the Privacy Policy to continue');

  const PrivacyPolicyValidationError(this.message);
  final String message;
}

// Terms of Service Acceptance Input
class TermsOfServiceInput
    extends FormzInput<bool, TermsOfServiceValidationError> {
  const TermsOfServiceInput.pure() : super.pure(false);
  const TermsOfServiceInput.dirty([bool value = false]) : super.dirty(value);

  @override
  TermsOfServiceValidationError? validator(bool value) {
    if (!value) {
      return TermsOfServiceValidationError.required;
    }
    return null;
  }
}

enum TermsOfServiceValidationError {
  required('You must accept the Terms of Service to continue');

  const TermsOfServiceValidationError(this.message);
  final String message;
}

// Data Processing Consent Input (Optional)
class ReviewDataProcessingConsentInput
    extends FormzInput<bool, ReviewDataProcessingConsentValidationError> {
  const ReviewDataProcessingConsentInput.pure() : super.pure(false);
  const ReviewDataProcessingConsentInput.dirty([bool value = false])
    : super.dirty(value);

  @override
  ReviewDataProcessingConsentValidationError? validator(bool value) {
    // This is optional, so no validation required
    return null;
  }
}

enum ReviewDataProcessingConsentValidationError {
  none, // No validation errors for optional field
}

// Marketing Consent Input (Optional)
class MarketingConsentInput
    extends FormzInput<bool, MarketingConsentValidationError> {
  const MarketingConsentInput.pure() : super.pure(false);
  const MarketingConsentInput.dirty([bool value = false]) : super.dirty(value);

  @override
  MarketingConsentValidationError? validator(bool value) {
    // This is optional, so no validation required
    return null;
  }
}

enum MarketingConsentValidationError {
  none, // No validation errors for optional field
}
