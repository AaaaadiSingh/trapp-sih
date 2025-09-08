import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:go_router/go_router.dart';
import 'package:sih/core/routing/app_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_checkbox_field.dart';
import '../../../../core/widgets/loading_overlay.dart';
import '../../domain/entities/location_demographics.dart';
import '../../domain/entities/personal_info.dart';
import '../bloc/review_confirmation_bloc.dart';

class ReviewConfirmationForm extends StatelessWidget {
  final PersonalInfo personalInfo;
  final LocationDemographics locationDemographics;

  const ReviewConfirmationForm({
    super.key,
    required this.personalInfo,
    required this.locationDemographics,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewConfirmationBloc, ReviewConfirmationState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Profile submitted successfully!'),
              backgroundColor: Colors.green,
            ),
          );
          // Navigate to dashboard
          ProfileNavigator.toDashboard(context);
        } else if (state.status == FormzSubmissionStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage ?? 'Failed to submit profile'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (!state.isDataLoaded) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return LoadingOverlay(
          isLoading: state.status == FormzSubmissionStatus.inProgress,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDataSummary(context, state),
                const SizedBox(height: 32),
                _buildPrivacyNotice(context),
                const SizedBox(height: 24),
                _buildConsentSection(context, state),
                const SizedBox(height: 32),
                _buildActionButtons(context, state),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDataSummary(BuildContext context, ReviewConfirmationState state) {
    final dataSummary = state.dataSummary!;
    
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Summary',
              style: AppTextStyles.headlineSmall.copyWith(
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 16),
            _buildSummarySection(
              'Personal Information',
              [
                'Name: ${dataSummary.fullName}',
                'Email: ${dataSummary.email}',
                'Phone: ${dataSummary.phoneNumber}',
                'Age Group: ${dataSummary.ageGroup}',
                'Gender: ${dataSummary.gender}',
                'Employment: ${dataSummary.employmentStatus}',
              ],
            ),
            const SizedBox(height: 16),
            _buildSummarySection(
              'Location & Demographics',
              [
                'Home Location: ${dataSummary.homeLocation}',
                'Work Location: ${dataSummary.workLocation}',
                'Privacy Level: ${dataSummary.privacyLevel}',
                'Share Location: ${dataSummary.shareLocationData ? 'Yes' : 'No'}',
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.titleMedium.copyWith(
            color: AppColors.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Text(
              item,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPrivacyNotice(BuildContext context) {
    return Card(
      elevation: 1,
      color: AppColors.surfaceVariant.withValues(alpha: 0.3),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.privacy_tip_outlined,
                  color: AppColors.primary,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Privacy Notice',
                  style: AppTextStyles.titleMedium.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Your data will be processed in accordance with our Privacy Policy. We collect this information to provide personalized transportation recommendations and improve our services. You have the right to access, modify, or delete your data at any time.',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsentSection(BuildContext context, ReviewConfirmationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Final Consent & Permissions',
          style: AppTextStyles.headlineSmall.copyWith(
            color: AppColors.onBackground,
          ),
        ),
        const SizedBox(height: 16),
        
        // Required Consents
        CustomCheckboxField(
          label: 'I consent to the collection and processing of my personal data',
          value: state.finalConsent.value,
          onChanged: (value) {
            context.read<ReviewConfirmationBloc>().add(
              ReviewConfirmationEvent.finalConsentChanged(consent: value ?? false),
            );
          },
          errorText: state.finalConsent.displayError?.message,
          isRequired: true,
        ),
        const SizedBox(height: 12),
        
        CustomCheckboxField(
          label: 'I have read and accept the Privacy Policy',
          value: state.privacyPolicy.value,
          onChanged: (value) {
            context.read<ReviewConfirmationBloc>().add(
              ReviewConfirmationEvent.privacyPolicyChanged(accepted: value ?? false),
            );
          },
          errorText: state.privacyPolicy.displayError?.message,
          isRequired: true,
        ),
        const SizedBox(height: 12),
        
        CustomCheckboxField(
          label: 'I have read and accept the Terms of Service',
          value: state.termsOfService.value,
          onChanged: (value) {
            context.read<ReviewConfirmationBloc>().add(
              ReviewConfirmationEvent.termsOfServiceChanged(accepted: value ?? false),
            );
          },
          errorText: state.termsOfService.displayError?.message,
          isRequired: true,
        ),
        
        const SizedBox(height: 20),
        const Divider(),
        const SizedBox(height: 16),
        
        Text(
          'Optional Permissions',
          style: AppTextStyles.titleMedium.copyWith(
            color: AppColors.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 12),
        
        // Optional Consents
        CustomCheckboxField(
          label: 'I consent to additional data processing for service improvements',
          value: state.dataProcessingConsent.value,
          onChanged: (value) {
            context.read<ReviewConfirmationBloc>().add(
              ReviewConfirmationEvent.reviewDataProcessingConsentChanged(consent: value ?? false),
            );
          },
          isRequired: false,
        ),
        const SizedBox(height: 12),
        
        CustomCheckboxField(
          label: 'I would like to receive marketing communications and updates',
          value: state.marketingConsent.value,
          onChanged: (value) {
            context.read<ReviewConfirmationBloc>().add(
              ReviewConfirmationEvent.marketingConsentChanged(consent: value ?? false),
            );
          },
          isRequired: false,
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context, ReviewConfirmationState state) {
    return ResponsiveBreakpoints.of(context).isMobile
        ? Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Reset Form',
                  onPressed: () {
                    context.read<ReviewConfirmationBloc>().add(
                      const ReviewConfirmationEvent.reviewFormReset(),
                    );
                  },
                  variant: ButtonVariant.outlined,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  text: 'Submit Profile',
                  onPressed: state.isValid
                      ? () {
                          context.read<ReviewConfirmationBloc>().add(
                            const ReviewConfirmationEvent.reviewFormSubmitted(),
                          );
                        }
                      : null,
                  variant: ButtonVariant.filled,
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Reset Form',
                  onPressed: () {
                    context.read<ReviewConfirmationBloc>().add(
                      const ReviewConfirmationEvent.reviewFormReset(),
                    );
                  },
                  variant: ButtonVariant.outlined,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  text: 'Submit Profile',
                  onPressed: state.isValid
                      ? () {
                          context.read<ReviewConfirmationBloc>().add(
                            const ReviewConfirmationEvent.reviewFormSubmitted(),
                          );
                        }
                      : null,
                  variant: ButtonVariant.filled,
                ),
              ),
            ],
          );
  }
}