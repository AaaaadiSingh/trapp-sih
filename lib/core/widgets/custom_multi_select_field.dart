import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class MultiSelectOption {
  final String value;
  final String label;

  const MultiSelectOption({required this.value, required this.label});
}

class CustomMultiSelectField extends StatelessWidget {
  final String label;
  final String? hint;
  final List<MultiSelectOption> options;
  final List<String> selectedValues;
  final ValueChanged<List<String>> onChanged;
  final String? errorText;
  final bool isRequired;

  const CustomMultiSelectField({
    super.key,
    required this.label,
    this.hint,
    required this.options,
    required this.selectedValues,
    required this.onChanged,
    this.errorText,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: AppTextStyles.labelLarge.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
            children: [
              if (isRequired)
                TextSpan(
                  text: ' *',
                  style: AppTextStyles.labelLarge.copyWith(
                    color: AppColors.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: errorText != null ? AppColors.error : AppColors.outline,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.surface,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hint != null && selectedValues.isEmpty)
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Text(
                    hint!,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ...options.map((option) {
                final isSelected = selectedValues.contains(option.value);
                return InkWell(
                  onTap: () {
                    final newValues = List<String>.from(selectedValues);
                    if (isSelected) {
                      newValues.remove(option.value);
                    } else {
                      newValues.add(option.value);
                    }
                    onChanged(newValues);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 12.h,
                    ),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? AppColors.primary.withOpacity(0.1)
                              : Colors.transparent,
                      border:
                          options.indexOf(option) != options.length - 1
                              ? Border(
                                bottom: BorderSide(
                                  color: AppColors.outline.withOpacity(0.3),
                                  width: 0.5,
                                ),
                              )
                              : null,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  isSelected
                                      ? AppColors.primary
                                      : AppColors.outline,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(4.r),
                            color:
                                isSelected
                                    ? AppColors.primary
                                    : Colors.transparent,
                          ),
                          child:
                              isSelected
                                  ? Icon(
                                    Icons.check,
                                    size: 14.sp,
                                    color: AppColors.onPrimary,
                                  )
                                  : null,
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Text(
                            option.label,
                            style: AppTextStyles.bodyMedium.copyWith(
                              color:
                                  isSelected
                                      ? AppColors.primary
                                      : AppColors.textPrimary,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
        if (errorText != null) ...[
          SizedBox(height: 8.h),
          Text(
            errorText!,
            style: AppTextStyles.bodySmall.copyWith(color: AppColors.error),
          ),
        ],
      ],
    );
  }
}
