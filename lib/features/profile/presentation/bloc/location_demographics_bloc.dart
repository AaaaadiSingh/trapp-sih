import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/location_demographics.dart';
import 'location_form_inputs.dart';

part 'location_demographics_bloc.freezed.dart';
part 'location_demographics_event.dart';
part 'location_demographics_state.dart';

@injectable
class LocationDemographicsBloc
    extends Bloc<LocationDemographicsEvent, LocationDemographicsState> {
  LocationDemographicsBloc() : super(const LocationDemographicsState()) {
    on<HomeLocationChanged>(_onHomeLocationChanged);
    on<WorkLocationChanged>(_onWorkLocationChanged);
    on<PrivacyLevelChanged>(_onPrivacyLevelChanged);
    on<ShareLocationDataChanged>(_onShareLocationDataChanged);
    on<LocationPrivacyConsentChanged>(_onLocationPrivacyConsentChanged);
    on<LocationDataProcessingConsentChanged>(
      _onLocationDataProcessingConsentChanged,
    );
    on<LocationFormSubmitted>(_onLocationFormSubmitted);
    on<LocationFormReset>(_onLocationFormReset);
  }

  void _onHomeLocationChanged(
    HomeLocationChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    final homeLocation = HomeLocationInput.dirty(event.location);
    emit(
      state.copyWith(
        homeLocation: homeLocation,
        isValid: Formz.validate([
          homeLocation,
          state.workLocation,
          state.privacyLevel,
          state.privacyConsent,
        ]),
      ),
    );
  }

  void _onWorkLocationChanged(
    WorkLocationChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    final workLocation = WorkLocationInput.dirty(event.location);
    emit(
      state.copyWith(
        workLocation: workLocation,
        isValid: Formz.validate([
          state.homeLocation,
          workLocation,
          state.privacyLevel,
          state.privacyConsent,
        ]),
      ),
    );
  }

  void _onPrivacyLevelChanged(
    PrivacyLevelChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    final privacyLevel = PrivacyLevelInput.dirty(event.level);
    emit(
      state.copyWith(
        privacyLevel: privacyLevel,
        isValid: Formz.validate([
          state.homeLocation,
          state.workLocation,
          privacyLevel,
          state.privacyConsent,
        ]),
      ),
    );
  }

  void _onShareLocationDataChanged(
    ShareLocationDataChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    final shareLocationData = ShareLocationDataInput.dirty(event.share);
    emit(state.copyWith(shareLocationData: shareLocationData));
  }

  void _onLocationPrivacyConsentChanged(
    LocationPrivacyConsentChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    final privacyConsent = LocationPrivacyConsentInput.dirty(event.consent);
    emit(
      state.copyWith(
        privacyConsent: privacyConsent,
        isValid: Formz.validate([
          state.homeLocation,
          state.workLocation,
          state.privacyLevel,
          privacyConsent,
        ]),
      ),
    );
  }

  void _onLocationDataProcessingConsentChanged(
    LocationDataProcessingConsentChanged event,
    Emitter<LocationDemographicsState> emit,
  ) {
    emit(state.copyWith(dataProcessingConsent: event.consent));
  }

  void _onLocationFormSubmitted(
    LocationFormSubmitted event,
    Emitter<LocationDemographicsState> emit,
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

      final locationDemographics = LocationDemographics(
        homeLocation: state.homeLocation.value,
        workLocation: state.workLocation.value,
        shareLocationData: state.shareLocationData.value,
        privacyConsent: state.privacyConsent.value,
        dataProcessingConsent: state.dataProcessingConsent,
        privacyLevel: LocationPrivacyLevel.values.firstWhere(
          (level) => level.value == state.privacyLevel.value,
          orElse: () => LocationPrivacyLevel.city,
        ),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          locationDemographics: locationDemographics,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: 'Failed to save location data. Please try again.',
        ),
      );
    }
  }

  void _onLocationFormReset(
    LocationFormReset event,
    Emitter<LocationDemographicsState> emit,
  ) {
    emit(const LocationDemographicsState());
  }
}
