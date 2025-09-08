import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/step_indicator.dart';
import '../../domain/entities/personal_info.dart';
import '../../domain/entities/travel_preferences.dart';
import '../bloc/location_demographics_bloc.dart';
import '../widgets/location_demographics_form.dart';

class LocationDemographicsPage extends StatelessWidget {
  final PersonalInfo personalInfo;

  const LocationDemographicsPage({
    super.key,
    required this.personalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationDemographicsBloc>(),
      child: LocationDemographicsView(
        personalInfo: personalInfo,
      ),
    );
  }
}

class LocationDemographicsView extends StatelessWidget {
  final PersonalInfo personalInfo;

  const LocationDemographicsView({
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
          'Location & Demographics',
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
                totalSteps: 3,
                stepTitles: [
                  'Personal Info',
                  'Location & Demographics',
                  'Review & Confirm',
                ],
              ),
              SizedBox(height: 32.h),
              Text(
                'Share your location information',
                style: AppTextStyles.headlineMedium.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Your location data helps us provide personalized services while respecting your privacy preferences.',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: 32.h),
              Expanded(
                child: LocationDemographicsForm(
                  personalInfo: personalInfo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}