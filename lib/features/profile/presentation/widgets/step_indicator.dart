import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.stepLabels,
  });

  final int currentStep;
  final int totalSteps;
  final List<String>? stepLabels;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Column(
      children: [
        // Progress Bar
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: currentStep / totalSteps,
                backgroundColor: colorScheme.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
                minHeight: 4.h,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              '$currentStep of $totalSteps',
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        
        if (stepLabels != null && stepLabels!.isNotEmpty) ...[
          SizedBox(height: 12.h),
          
          // Step Dots with Labels
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              totalSteps,
              (index) {
                final stepNumber = index + 1;
                final isCompleted = stepNumber < currentStep;
                final isCurrent = stepNumber == currentStep;
                
                Color dotColor;
                Color textColor;
                
                if (isCompleted) {
                  dotColor = colorScheme.primary;
                  textColor = colorScheme.primary;
                } else if (isCurrent) {
                  dotColor = colorScheme.primary;
                  textColor = colorScheme.onSurface;
                } else {
                  dotColor = colorScheme.outline;
                  textColor = colorScheme.onSurfaceVariant;
                }
                
                return Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 24.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isCompleted || isCurrent 
                              ? dotColor 
                              : Colors.transparent,
                          border: Border.all(
                            color: dotColor,
                            width: 2,
                          ),
                        ),
                        child: isCompleted
                            ? Icon(
                                Icons.check,
                                size: 14.sp,
                                color: colorScheme.onPrimary,
                              )
                            : Center(
                                child: Text(
                                  stepNumber.toString(),
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: isCurrent 
                                        ? colorScheme.onPrimary 
                                        : dotColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        stepLabels![index],
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: textColor,
                          fontWeight: isCurrent 
                              ? FontWeight.w600 
                              : FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }
}