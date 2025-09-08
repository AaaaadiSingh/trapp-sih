import 'package:formz/formz.dart';

// Home Location Input
class HomeLocationInput
    extends FormzInput<String, HomeLocationValidationError> {
  const HomeLocationInput.pure() : super.pure('');
  const HomeLocationInput.dirty([String value = '']) : super.dirty(value);

  @override
  HomeLocationValidationError? validator(String value) {
    if (value.isEmpty) {
      return HomeLocationValidationError.empty;
    }
    if (value.length < 3) {
      return HomeLocationValidationError.tooShort;
    }
    return null;
  }
}

enum HomeLocationValidationError {
  empty('Please enter your home location'),
  tooShort('Location must be at least 3 characters');

  const HomeLocationValidationError(this.message);
  final String message;
}

// Work Location Input
class WorkLocationInput
    extends FormzInput<String, WorkLocationValidationError> {
  const WorkLocationInput.pure() : super.pure('');
  const WorkLocationInput.dirty([String value = '']) : super.dirty(value);

  @override
  WorkLocationValidationError? validator(String value) {
    if (value.isEmpty) {
      return WorkLocationValidationError.empty;
    }
    if (value.length < 3) {
      return WorkLocationValidationError.tooShort;
    }
    return null;
  }
}

enum WorkLocationValidationError {
  empty('Please enter your work location'),
  tooShort('Location must be at least 3 characters');

  const WorkLocationValidationError(this.message);
  final String message;
}

// Privacy Level Input
class PrivacyLevelInput
    extends FormzInput<String, PrivacyLevelValidationError> {
  const PrivacyLevelInput.pure() : super.pure('');
  const PrivacyLevelInput.dirty([String value = '']) : super.dirty(value);

  @override
  PrivacyLevelValidationError? validator(String value) {
    if (value.isEmpty) {
      return PrivacyLevelValidationError.empty;
    }
    return null;
  }
}

enum PrivacyLevelValidationError {
  empty('Please select a privacy level');

  const PrivacyLevelValidationError(this.message);
  final String message;
}

// Share Location Data Input
class ShareLocationDataInput
    extends FormzInput<bool, ShareLocationDataValidationError> {
  const ShareLocationDataInput.pure() : super.pure(false);
  const ShareLocationDataInput.dirty([bool value = false]) : super.dirty(value);

  @override
  ShareLocationDataValidationError? validator(bool value) {
    // This is optional, so no validation required
    return null;
  }
}

enum ShareLocationDataValidationError {
  none, // No validation errors for optional field
}

// Location Privacy Consent Input
class LocationPrivacyConsentInput
    extends FormzInput<bool, LocationPrivacyConsentValidationError> {
  const LocationPrivacyConsentInput.pure() : super.pure(false);
  const LocationPrivacyConsentInput.dirty([bool value = false])
    : super.dirty(value);

  @override
  LocationPrivacyConsentValidationError? validator(bool value) {
    if (!value) {
      return LocationPrivacyConsentValidationError.required;
    }
    return null;
  }
}

enum LocationPrivacyConsentValidationError {
  required('Privacy consent is required to continue');

  const LocationPrivacyConsentValidationError(this.message);
  final String message;
}
