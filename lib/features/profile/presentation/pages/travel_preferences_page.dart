import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/step_indicator.dart';
import '../../domain/entities/personal_info.dart';
import '../bloc/travel_preferences_bloc.dart';
import '../widgets/travel_preferences_form.dart';

class TravelPreferencesPage extends StatelessWidget {
  final PersonalInfo personalInfo;

  const TravelPreferencesPage({
    super.key,
    required this.personalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TravelPreferencesBloc>(),
      child: TravelPreferencesView(personalInfo: personalInfo),
    );
  }
}

class TravelPreferencesView extends StatelessWidget {
  final PersonalInfo personalInfo;

  const TravelPreferencesView({
    super.key,
    required this.personalInfo,
  });

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
            size: 20.sp,
          ),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Travel Preferences',
          style: AppTextStyles.headlineSmall.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              const StepIndicator(
                currentStep: 2,
                totalSteps: 4,
                stepTitles: [
                  'Personal Info',
                  'Travel Preferences',
                  'Location & Demographics',
                  'Review & Confirmation',
                ],
              ),
              SizedBox(height: 32.h),
              Text(
                'Tell us about your travel preferences',
                style: AppTextStyles.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'This information helps us provide better recommendations for your travel needs.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: 32.h),
              Expanded(
                child: TravelPreferencesForm(personalInfo: personalInfo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}