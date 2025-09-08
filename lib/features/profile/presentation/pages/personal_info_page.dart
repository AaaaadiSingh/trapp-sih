import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/injection_container.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/entities/personal_info.dart';
import '../bloc/personal_info_bloc.dart';
import '../widgets/custom_dropdown_field.dart';
import '../widgets/custom_checkbox_tile.dart';
import '../../../../core/widgets/step_indicator.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PersonalInfoBloc>(),
      child: const PersonalInfoView(),
    );
  }
}

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.textPrimary,
            size: SizeExtension(20).sp,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Personal Information',
          style: AppTextStyles.headlineSmall.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocListener<PersonalInfoBloc, PersonalInfoState>(
        listener: (context, state) {
          if (state.isSubmissionSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Personal information saved successfully!'),
                backgroundColor: Colors.green,
              ),
            );
            // Navigate to location demographics step
            ProfileNavigator.toLocationDemographics(context, state.personalInfo!);
          } else if (state.isSubmissionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'An error occurred'),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
          }
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(24).w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // Step Indicator
              SizedBox(height: SizeExtension(16).h),
              const StepIndicator(
                currentStep: 1,
                totalSteps: 3,
                stepTitles: [
                  'Personal Info',
                  'Location & Demographics',
                  'Review & Confirm',
                ],
              ),
              
              SizedBox(height: SizeExtension(32).h),
              Text(
                'Tell us about yourself',
                style: AppTextStyles.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: SizeExtension(8).h),
              Text(
                'This information helps us provide personalized insights and better understand travel patterns.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: SizeExtension(32).h),
              Expanded(
                child: const PersonalInfoForm(),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInfoForm extends StatelessWidget {
  const PersonalInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoBloc, PersonalInfoState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            // Age Group Field
            CustomDropdownField<String>(
              label: 'Age Group',
              value: state.ageGroup.value.isEmpty ? null : state.ageGroup.value,
              items: AgeGroup.values
                  .map((age) => DropdownMenuItem(
                        value: age.value,
                        child: Text(age.displayName),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  context.read<PersonalInfoBloc>().add(
                        PersonalInfoEvent.ageGroupChanged(value),
                      );
                }
              },
              errorText: state.ageGroup.displayError?.name,
            ),
            SizedBox(height: 24.h),

            // Gender Field
            CustomDropdownField<String>(
              label: 'Gender',
              value: state.gender.value.isEmpty ? null : state.gender.value,
              items: Gender.values
                  .map((gender) => DropdownMenuItem(
                        value: gender.value,
                        child: Text(gender.displayName),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  context.read<PersonalInfoBloc>().add(
                        PersonalInfoEvent.genderChanged(value),
                      );
                }
              },
              errorText: state.gender.displayError?.name,
            ),
            SizedBox(height: 24.h),

            // Employment Status Field
            CustomDropdownField<String>(
              label: 'Employment Status',
              value: state.employmentStatus.value.isEmpty
                  ? null
                  : state.employmentStatus.value,
              items: EmploymentStatus.values
                  .map((status) => DropdownMenuItem(
                        value: status.value,
                        child: Text(status.displayName),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  context.read<PersonalInfoBloc>().add(
                        PersonalInfoEvent.employmentStatusChanged(value),
                      );
                }
              },
              errorText: state.employmentStatus.displayError?.name,
            ),
            SizedBox(height: SizeExtension(24).h),

            SizedBox(height: SizeExtension(48).h),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<PersonalInfoBloc>().add(
                            const PersonalInfoEvent.formReset(),
                          );
                    },
                    child: const Text('Reset'),
                  ),
                ),
                SizedBox(width: SizeExtension(16).w),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: state.isValid && !state.isSubmissionInProgress
                        ? () {
                            context.read<PersonalInfoBloc>().add(
                                  const PersonalInfoEvent.formSubmitted(),
                                );
                          }
                        : null,
                    child: state.isSubmissionInProgress
                        ? SizedBox(
                            height: SizeExtension(20).h,
                            width: SizeExtension(20).w,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          )
                        : const Text('Continue'),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeExtension(32).h),
          ],
        ),
      );
      },
    );
  }
}