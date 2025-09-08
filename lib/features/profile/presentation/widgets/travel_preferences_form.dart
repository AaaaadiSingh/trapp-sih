import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_checkbox_field.dart';
import '../../../../core/widgets/custom_dropdown_field.dart';
import '../../../../core/widgets/custom_multi_select_field.dart';
import '../../../../core/routing/app_router.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/travel_preferences.dart';
import '../bloc/travel_preferences_bloc.dart';

class TravelPreferencesForm extends StatelessWidget {
  final PersonalInfo personalInfo;

  const TravelPreferencesForm({
    super.key,
    required this.personalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<TravelPreferencesBloc, TravelPreferencesState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Travel preferences saved successfully!',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.onPrimary,
                ),
              ),
              backgroundColor: AppColors.success,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          );
          // Navigate to location demographics step
          ProfileNavigator.toLocationDemographics(
            context,
            personalInfo,
          );
        } else if (state.status == FormzSubmissionStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage ?? 'An error occurred',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.onError,
                ),
              ),
              backgroundColor: AppColors.error,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          );
        }
      },
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Transportation Modes
                  BlocBuilder<TravelPreferencesBloc, TravelPreferencesState>(
                    buildWhen: (previous, current) =>
                        previous.transportationModes != current.transportationModes,
                    builder: (context, state) {
                      return CustomMultiSelectField(
                        label: 'Transportation Modes',
                        hint: 'Select your preferred transportation modes',
                        options: TransportationMode.values
                            .map((mode) => MultiSelectOption(
                                  value: mode.value,
                                  label: mode.displayName,
                                ))
                            .toList(),
                        selectedValues: state.transportationModes.value,
                        onChanged: (values) {
                          context.read<TravelPreferencesBloc>().add(
                                TravelPreferencesEvent.transportationModesChanged(
                                  modes: values,
                                ),
                              );
                        },
                        errorText: state.transportationModes.displayError?.message,
                        isRequired: true,
                      );
                    },
                  ),
                  SizedBox(height: 24.h),

                  // Travel Frequency
                  BlocBuilder<TravelPreferencesBloc, TravelPreferencesState>(
                    buildWhen: (previous, current) =>
                        previous.travelFrequency != current.travelFrequency,
                    builder: (context, state) {
                      return CustomDropdownField(
                        label: 'Travel Frequency',
                        hintText: 'How often do you travel?',
                        value: state.travelFrequency.value.isEmpty
                            ? null
                            : state.travelFrequency.value,
                        items: TravelFrequency.values
                            .map((frequency) => DropdownMenuItem(
                                  value: frequency.value,
                                  child: Text(
                                    frequency.displayName,
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<TravelPreferencesBloc>().add(
                                  TravelPreferencesEvent.travelFrequencyChanged(
                                    frequency: value,
                                  ),
                                );
                          }
                        },
                        errorText: state.travelFrequency.displayError?.message,
                        isRequired: true,
                      );
                    },
                  ),
                  SizedBox(height: 32.h),

                  // Privacy Consent
                  BlocBuilder<TravelPreferencesBloc, TravelPreferencesState>(
                    buildWhen: (previous, current) =>
                        previous.privacyConsent != current.privacyConsent,
                    builder: (context, state) {
                      return CustomCheckboxField(
                        label: 'Privacy Consent',
                        description:
                            'I consent to the collection and processing of my travel preference data for service improvement purposes.',
                        value: state.privacyConsent.value,
                        onChanged: (value) {
                          context.read<TravelPreferencesBloc>().add(
                                TravelPreferencesEvent.travelPrivacyConsentChanged(
                                  consent: value ?? false,
                                ),
                              );
                        },
                        errorText: state.privacyConsent.displayError?.message,
                        isRequired: true,
                      );
                    },
                  ),
                  SizedBox(height: 16.h),

                  // Data Processing Consent (Optional)
                  BlocBuilder<TravelPreferencesBloc, TravelPreferencesState>(
                    buildWhen: (previous, current) =>
                        previous.dataProcessingConsent != current.dataProcessingConsent,
                    builder: (context, state) {
                      return CustomCheckboxField(
                        label: 'Data Processing Consent (Optional)',
                        description:
                            'I agree to allow my travel data to be used for research and analytics to improve transportation services.',
                        value: state.dataProcessingConsent,
                        onChanged: (value) {
                          context.read<TravelPreferencesBloc>().add(
                                TravelPreferencesEvent.travelDataProcessingConsentChanged(
                                  consent: value ?? false,
                                ),
                              );
                        },
                        isRequired: false,
                      );
                    },
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
          // Action Buttons
          BlocBuilder<TravelPreferencesBloc, TravelPreferencesState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Reset',
                          onPressed: () {
                            context.read<TravelPreferencesBloc>().add(
                                  const TravelPreferencesEvent.travelFormReset(),
                                );
                          },
                          variant: ButtonVariant.outlined,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        flex: 2,
                        child: CustomButton(
                          text: 'Continue',
                          onPressed: state.isValid
                              ? () {
                                  context.read<TravelPreferencesBloc>().add(
                                        const TravelPreferencesEvent.travelFormSubmitted(),
                                      );
                                }
                              : null,
                          isLoading: state.status == FormzSubmissionStatus.inProgress,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}