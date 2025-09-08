import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/step_indicator.dart';
import '../bloc/review_confirmation_bloc.dart';
import '../widgets/review_confirmation_form.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/travel_preferences.dart';
import '../../domain/entities/location_demographics.dart';

class ReviewConfirmationPage extends StatelessWidget {
  final PersonalInfo personalInfo;
  final LocationDemographics locationDemographics;

  const ReviewConfirmationPage({
    super.key,
    required this.personalInfo,
    required this.locationDemographics,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReviewConfirmationBloc>()
        ..add(ReviewConfirmationEvent.loadReviewData(
          personalInfo: personalInfo,
          locationDemographics: locationDemographics,
        )),
      child: ReviewConfirmationView(
        personalInfo: personalInfo,
        locationDemographics: locationDemographics,
      ),
    );
  }
}

class ReviewConfirmationView extends StatelessWidget {
  final PersonalInfo personalInfo;
  final LocationDemographics locationDemographics;

  const ReviewConfirmationView({
    super.key,
    required this.personalInfo,
    required this.locationDemographics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Review & Confirmation',
        showBackButton: true,
      ),
      body: ResponsiveBreakpoints.of(context).isMobile
          ? _buildMobileLayout(context)
          : _buildDesktopLayout(context),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 24),
            Expanded(
              child: ReviewConfirmationForm(
                personalInfo: personalInfo,
                locationDemographics: locationDemographics,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 32),
              Expanded(
                child: ReviewConfirmationForm(
                  personalInfo: personalInfo,
                  locationDemographics: locationDemographics,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepIndicator(
          currentStep: 3,
          totalSteps: 3,
          stepTitles: [
            'Personal Info',
            'Location & Demographics',
            'Review & Confirm',
          ],
        ),
        const SizedBox(height: 16),
        Text(
          'Review & Confirmation',
          style: AppTextStyles.headlineLarge.copyWith(
            color: AppColors.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Please review all your information and provide final consent to submit your profile.',
          style: AppTextStyles.bodyLarge.copyWith(
            color: AppColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}