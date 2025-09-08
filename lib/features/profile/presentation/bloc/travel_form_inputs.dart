import 'package:formz/formz.dart';

// Transportation Modes Input (Multi-select)
class TransportationModesInput
    extends FormzInput<List<String>, TransportationModesValidationError> {
  const TransportationModesInput.pure() : super.pure(const []);
  const TransportationModesInput.dirty([List<String> value = const []])
    : super.dirty(value);

  @override
  TransportationModesValidationError? validator(List<String> value) {
    if (value.isEmpty) {
      return TransportationModesValidationError.empty;
    }
    return null;
  }
}

enum TransportationModesValidationError {
  empty('Please select at least one transportation mode');

  const TransportationModesValidationError(this.message);
  final String message;
}

// Travel Frequency Input
class TravelFrequencyInput
    extends FormzInput<String, TravelFrequencyValidationError> {
  const TravelFrequencyInput.pure() : super.pure('');
  const TravelFrequencyInput.dirty([String value = '']) : super.dirty(value);

  @override
  TravelFrequencyValidationError? validator(String value) {
    if (value.isEmpty) {
      return TravelFrequencyValidationError.empty;
    }
    return null;
  }
}

enum TravelFrequencyValidationError {
  empty('Please select travel frequency');

  const TravelFrequencyValidationError(this.message);
  final String message;
}

// Privacy Consent Input (reused from personal info)
class TravelPrivacyConsentInput
    extends FormzInput<bool, TravelPrivacyConsentValidationError> {
  const TravelPrivacyConsentInput.pure() : super.pure(false);
  const TravelPrivacyConsentInput.dirty([bool value = false])
    : super.dirty(value);

  @override
  TravelPrivacyConsentValidationError? validator(bool value) {
    if (!value) {
      return TravelPrivacyConsentValidationError.required;
    }
    return null;
  }
}

enum TravelPrivacyConsentValidationError {
  required('Privacy consent is required to continue');

  const TravelPrivacyConsentValidationError(this.message);
  final String message;
}
