import 'package:formz/formz.dart';

/// Age group validation input
enum AgeGroupValidationError { empty }

class AgeGroupInput extends FormzInput<String, AgeGroupValidationError> {
  const AgeGroupInput.pure() : super.pure('');
  const AgeGroupInput.dirty([super.value = '']) : super.dirty();

  @override
  AgeGroupValidationError? validator(String value) {
    if (value.isEmpty) return AgeGroupValidationError.empty;
    return null;
  }
}

/// Gender validation input
enum GenderValidationError { empty }

class GenderInput extends FormzInput<String, GenderValidationError> {
  const GenderInput.pure() : super.pure('');
  const GenderInput.dirty([super.value = '']) : super.dirty();

  @override
  GenderValidationError? validator(String value) {
    if (value.isEmpty) return GenderValidationError.empty;
    return null;
  }
}

/// Employment status validation input
enum EmploymentStatusValidationError { empty }

class EmploymentStatusInput
    extends FormzInput<String, EmploymentStatusValidationError> {
  const EmploymentStatusInput.pure() : super.pure('');
  const EmploymentStatusInput.dirty([super.value = '']) : super.dirty();

  @override
  EmploymentStatusValidationError? validator(String value) {
    if (value.isEmpty) return EmploymentStatusValidationError.empty;
    return null;
  }
}

/// Annual income validation input
enum AnnualIncomeValidationError { empty }

class AnnualIncomeInput
    extends FormzInput<String, AnnualIncomeValidationError> {
  const AnnualIncomeInput.pure() : super.pure('');
  const AnnualIncomeInput.dirty([super.value = '']) : super.dirty();

  @override
  AnnualIncomeValidationError? validator(String value) {
    if (value.isEmpty) return AnnualIncomeValidationError.empty;
    return null;
  }
}

/// Privacy consent validation input
enum PrivacyConsentValidationError { notAccepted }

class PrivacyConsentInput
    extends FormzInput<bool, PrivacyConsentValidationError> {
  const PrivacyConsentInput.pure() : super.pure(false);
  const PrivacyConsentInput.dirty([super.value = false]) : super.dirty();

  @override
  PrivacyConsentValidationError? validator(bool value) {
    if (!value) return PrivacyConsentValidationError.notAccepted;
    return null;
  }
}
