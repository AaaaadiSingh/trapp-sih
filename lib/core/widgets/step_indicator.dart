import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final List<String> stepTitles;
  final EdgeInsetsGeometry? padding;
  final bool showLabels;

  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.stepTitles,
    this.padding,
    this.showLabels = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          // Progress indicators
          Row(
            children: List.generate(
              totalSteps,
              (index) => Expanded(
                child: Row(
                  children: [
                    // Step circle
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _getStepColor(index),
                        border: Border.all(
                          color: _getStepBorderColor(index),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: _getStepContent(index),
                      ),
                    ),
                    
                    // Connector line (except for last step)
                    if (index < totalSteps - 1)
                      Expanded(
                        child: Container(
                          height: 2.h,
                          margin: EdgeInsets.symmetric(horizontal: 8.w),
                          color: index < currentStep
                              ? AppColors.primary
                              : AppColors.outlineVariant,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          
          // Step labels
          if (showLabels) ...[
            SizedBox(height: SizeExtension(16).h),
            Row(
              children: List.generate(
                totalSteps,
                (index) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      stepTitles[index],
                      style: AppTextStyles.labelSmall.copyWith(
                        color: _getStepTextColor(index),
                        fontWeight: _getStepTextWeight(index),
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getStepColor(int index) {
    if (index < currentStep) {
      return AppColors.primary; // Completed - unfilled
    } else if (index == currentStep) {
      return Colors.transparent; // Current - blue filled
    } else {
      return Colors.transparent; // Upcoming - unfilled
    }
  }

  Color _getStepBorderColor(int index) {
    if (index <= currentStep) {
      return AppColors.primary;
    } else {
      return AppColors.primary;
    }
  }

  Color _getStepTextColor(int index) {
    if (index == 0 && currentStep > 1) {
      // Step 1 completed
      return AppColors.primary;
    } else if (index == currentStep) {
      // Current step
      return AppColors.primary;
    } else if (index < currentStep) {
      // Other completed steps
      return AppColors.primary;
    } else {
      // Upcoming steps
      return AppColors.onSurfaceVariant;
    }
  }

  FontWeight _getStepTextWeight(int index) {
    if (index == currentStep) {
      return FontWeight.w600;
    } else if (index == 0 && currentStep > 1) {
      // Step 1 completed
      return FontWeight.w500;
    } else {
      return FontWeight.w400;
    }
  }

  Widget _getStepContent(int index) {
    // Show step number for all steps - checkmarks will be handled by form validation
    return Text(
      '${index + 1}',
      style: AppTextStyles.labelSmall.copyWith(
        color: index == currentStep
            ? AppColors.disabled // White text on blue background for active step
            : (index < currentStep 
                ? AppColors.background // Blue text for visited steps
                : AppColors.onSurfaceVariant), // Gray text for upcoming steps
        fontWeight: FontWeight.w600,
      ),
    );
  }
}