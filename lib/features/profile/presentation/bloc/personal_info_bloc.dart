import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/personal_info.dart';
import 'form_inputs.dart';

part 'personal_info_bloc.freezed.dart';
part 'personal_info_event.dart';
part 'personal_info_state.dart';

@injectable
class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc() : super(const PersonalInfoState()) {
    on<AgeGroupChanged>(_onAgeGroupChanged);
    on<GenderChanged>(_onGenderChanged);
    on<EmploymentStatusChanged>(_onEmploymentStatusChanged);
    on<LocationConsentChanged>(_onLocationConsentChanged);
    on<BackgroundLocationConsentChanged>(_onBackgroundLocationConsentChanged);
    on<FormSubmitted>(_onFormSubmitted);
    on<FormReset>(_onFormReset);
  }

  void _onAgeGroupChanged(
    AgeGroupChanged event,
    Emitter<PersonalInfoState> emit,
  ) {
    final ageGroup = AgeGroupInput.dirty(event.ageGroup);
    emit(
      state.copyWith(
        ageGroup: ageGroup,
        isValid: Formz.validate([
          ageGroup,
          state.gender,
          state.employmentStatus,
        ]),
      ),
    );
  }

  void _onGenderChanged(GenderChanged event, Emitter<PersonalInfoState> emit) {
    final gender = GenderInput.dirty(event.gender);
    emit(
      state.copyWith(
        gender: gender,
        isValid: Formz.validate([
          state.ageGroup,
          gender,
          state.employmentStatus,
        ]),
      ),
    );
  }

  void _onEmploymentStatusChanged(
    EmploymentStatusChanged event,
    Emitter<PersonalInfoState> emit,
  ) {
    final employmentStatus = EmploymentStatusInput.dirty(
      event.employmentStatus,
    );
    emit(
      state.copyWith(
        employmentStatus: employmentStatus,
        isValid: Formz.validate([
          state.ageGroup,
          state.gender,
          employmentStatus,
        ]),
      ),
    );
  }

  void _onLocationConsentChanged(
    LocationConsentChanged event,
    Emitter<PersonalInfoState> emit,
  ) {
    emit(
      state.copyWith(
        locationConsent: event.consent,
        // If location consent is disabled, also disable background location
        backgroundLocationConsent: event.consent ? state.backgroundLocationConsent : false,
      ),
    );
  }

  void _onBackgroundLocationConsentChanged(
    BackgroundLocationConsentChanged event,
    Emitter<PersonalInfoState> emit,
  ) {
    emit(
      state.copyWith(
        backgroundLocationConsent: event.consent,
      ),
    );
  }

  void _onFormSubmitted(
    FormSubmitted event,
    Emitter<PersonalInfoState> emit,
  ) async {
    if (!state.isValid) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Please fill all required fields correctly',
        ),
      );
      return;
    }

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      final personalInfo = PersonalInfo(
        ageGroup: state.ageGroup.value,
        gender: state.gender.value,
        employmentStatus: state.employmentStatus.value,
        annualIncome: '', // Remove this field
        privacyConsent: false, // Will be handled in final review
        dataProcessingConsent: false, // Will be handled in final review
        locationConsent: state.locationConsent,
        backgroundLocationConsent: state.backgroundLocationConsent,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          personalInfo: personalInfo,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage:
              'Failed to save personal information. Please try again.',
        ),
      );
    }
  }

  void _onFormReset(FormReset event, Emitter<PersonalInfoState> emit) {
    emit(const PersonalInfoState());
  }
}
