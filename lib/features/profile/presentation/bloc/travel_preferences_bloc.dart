import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/travel_preferences.dart';
import 'travel_form_inputs.dart';

part 'travel_preferences_bloc.freezed.dart';
part 'travel_preferences_event.dart';
part 'travel_preferences_state.dart';

@injectable
class TravelPreferencesBloc extends Bloc<TravelPreferencesEvent, TravelPreferencesState> {
  TravelPreferencesBloc() : super(const TravelPreferencesState()) {
    on<TransportationModesChanged>(_onTransportationModesChanged);
    on<TravelFrequencyChanged>(_onTravelFrequencyChanged);
    on<TravelPrivacyConsentChanged>(_onTravelPrivacyConsentChanged);
    on<TravelDataProcessingConsentChanged>(_onTravelDataProcessingConsentChanged);
    on<TravelFormSubmitted>(_onTravelFormSubmitted);
    on<TravelFormReset>(_onTravelFormReset);
  }

  void _onTransportationModesChanged(
    TransportationModesChanged event,
    Emitter<TravelPreferencesState> emit,
  ) {
    final transportationModes = TransportationModesInput.dirty(event.modes);
    emit(
      state.copyWith(
        transportationModes: transportationModes,
        isValid: Formz.validate([
          transportationModes,
          state.travelFrequency,
          state.privacyConsent,
        ]),
      ),
    );
  }

  void _onTravelFrequencyChanged(
    TravelFrequencyChanged event,
    Emitter<TravelPreferencesState> emit,
  ) {
    final travelFrequency = TravelFrequencyInput.dirty(event.frequency);
    emit(
      state.copyWith(
        travelFrequency: travelFrequency,
        isValid: Formz.validate([
          state.transportationModes,
          travelFrequency,
          state.privacyConsent,
        ]),
      ),
    );
  }

  void _onTravelPrivacyConsentChanged(
    TravelPrivacyConsentChanged event,
    Emitter<TravelPreferencesState> emit,
  ) {
    final privacyConsent = TravelPrivacyConsentInput.dirty(event.consent);
    emit(
      state.copyWith(
        privacyConsent: privacyConsent,
        isValid: Formz.validate([
          state.transportationModes,
          state.travelFrequency,
          privacyConsent,
        ]),
      ),
    );
  }

  void _onTravelDataProcessingConsentChanged(
    TravelDataProcessingConsentChanged event,
    Emitter<TravelPreferencesState> emit,
  ) {
    emit(
      state.copyWith(
        dataProcessingConsent: event.consent,
      ),
    );
  }

  void _onTravelFormSubmitted(
    TravelFormSubmitted event,
    Emitter<TravelPreferencesState> emit,
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
      
      final travelPreferences = TravelPreferences(
        transportationModes: state.transportationModes.value,
        travelFrequency: state.travelFrequency.value,
        privacyConsent: state.privacyConsent.value,
        dataProcessingConsent: state.dataProcessingConsent,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          travelPreferences: travelPreferences,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Failed to save travel preferences. Please try again.',
        ),
      );
    }
  }

  void _onTravelFormReset(
    TravelFormReset event,
    Emitter<TravelPreferencesState> emit,
  ) {
    emit(const TravelPreferencesState());
  }
}