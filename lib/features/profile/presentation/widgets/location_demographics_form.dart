import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_checkbox_field.dart';
import '../../../../core/widgets/custom_dropdown_field.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/routing/app_router.dart';
import '../../domain/entities/location_demographics.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/travel_preferences.dart';
import '../bloc/location_demographics_bloc.dart';

class LocationDemographicsForm extends StatelessWidget {
  final PersonalInfo personalInfo;

  const LocationDemographicsForm({
    super.key,
    required this.personalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationDemographicsBloc, LocationDemographicsState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Location information saved successfully!',
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
          // Navigate to review confirmation step
          ProfileNavigator.toReviewConfirmation(
            context,
            personalInfo,
            state.locationDemographics!,
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
                  // Home Location
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.homeLocation != current.homeLocation,
                    builder: (context, state) {
                      return CustomTextField(
                        label: 'Home Location',
                        hintText: 'Enter your home address or area',
                        value: state.homeLocation.value,
                        onChanged: (value) {
                          context.read<LocationDemographicsBloc>().add(
                                LocationDemographicsEvent.homeLocationChanged(
                                  location: value,
                                ),
                              );
                        },
                        errorText: state.homeLocation.displayError?.message,
                        isRequired: true,
                        prefixIcon: Icon(Icons.home_outlined),
                      );
                    },
                  ),
                  SizedBox(height: 24.h),

                  // Work Location
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.workLocation != current.workLocation,
                    builder: (context, state) {
                      return CustomTextField(
                        label: 'Work Location',
                        hintText: 'Enter your work address or area',
                        value: state.workLocation.value,
                        onChanged: (value) {
                          context.read<LocationDemographicsBloc>().add(
                                LocationDemographicsEvent.workLocationChanged(
                                  location: value,
                                ),
                              );
                        },
                        errorText: state.workLocation.displayError?.message,
                        isRequired: true,
                        prefixIcon: Icon(Icons.work_outline),
                      );
                    },
                  ),
                  SizedBox(height: 24.h),

                  // Privacy Level
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.privacyLevel != current.privacyLevel,
                    builder: (context, state) {
                      return CustomDropdownField(
                        label: 'Location Privacy Level',
                        hintText: 'Choose how detailed your location data should be',
                        value: state.privacyLevel.value.isEmpty
                            ? null
                            : state.privacyLevel.value,
                        items: LocationPrivacyLevel.values
                            .map((level) => DropdownMenuItem(
                                  value: level.value,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        level.displayName,
                                        style: AppTextStyles.bodyMedium.copyWith(
                                          color: AppColors.textPrimary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        _getPrivacyLevelDescription(level),
                                        style: AppTextStyles.bodySmall.copyWith(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            context.read<LocationDemographicsBloc>().add(
                                  LocationDemographicsEvent.privacyLevelChanged(
                                    level: value,
                                  ),
                                );
                          }
                        },
                        errorText: state.privacyLevel.displayError?.message,
                        isRequired: true,
                      );
                    },
                  ),
                  SizedBox(height: 24.h),

                  // Share Location Data
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.shareLocationData != current.shareLocationData,
                    builder: (context, state) {
                      return CustomCheckboxField(
                        label: 'Share Location Data (Optional)',
                        description:
                            'Allow sharing of anonymized location data to improve transportation and urban planning services.',
                        value: state.shareLocationData.value,
                        onChanged: (value) {
                          context.read<LocationDemographicsBloc>().add(
                                LocationDemographicsEvent.shareLocationDataChanged(
                                  share: value ?? false,
                                ),
                              );
                        },
                        isRequired: false,
                      );
                    },
                  ),
                  SizedBox(height: 16.h),

                  // Privacy Consent
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.privacyConsent != current.privacyConsent,
                    builder: (context, state) {
                      return CustomCheckboxField(
                        label: 'Location Privacy Consent',
                        description:
                            'I consent to the collection and processing of my location data according to the selected privacy level.',
                        value: state.privacyConsent.value,
                        onChanged: (value) {
                          context.read<LocationDemographicsBloc>().add(
                                LocationDemographicsEvent.locationPrivacyConsentChanged(
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
                  BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
                    buildWhen: (previous, current) =>
                        previous.dataProcessingConsent != current.dataProcessingConsent,
                    builder: (context, state) {
                      return CustomCheckboxField(
                        label: 'Data Processing Consent (Optional)',
                        description:
                            'I agree to allow my location data to be used for research and analytics to improve city planning and transportation services.',
                        value: state.dataProcessingConsent,
                        onChanged: (value) {
                          context.read<LocationDemographicsBloc>().add(
                                LocationDemographicsEvent.locationDataProcessingConsentChanged(
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
          BlocBuilder<LocationDemographicsBloc, LocationDemographicsState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Reset',
                          onPressed: () {
                            context.read<LocationDemographicsBloc>().add(
                                  const LocationDemographicsEvent.locationFormReset(),
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
                                  context.read<LocationDemographicsBloc>().add(
                                        const LocationDemographicsEvent.locationFormSubmitted(),
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

  String _getPrivacyLevelDescription(LocationPrivacyLevel level) {
    switch (level) {
      case LocationPrivacyLevel.exact:
        return 'Share exact address (highest precision)';
      case LocationPrivacyLevel.neighborhood:
        return 'Share neighborhood only (medium precision)';
      case LocationPrivacyLevel.city:
        return 'Share city only (low precision)';
      case LocationPrivacyLevel.region:
        return 'Share region/state only (lowest precision)';
    }
  }
}