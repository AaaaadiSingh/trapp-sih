import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomCheckboxField extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String? errorText;
  final bool isRequired;
  final String? description;
  final EdgeInsetsGeometry? padding;

  const CustomCheckboxField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.errorText,
    this.isRequired = false,
    this.description,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasError = errorText != null && errorText!.isNotEmpty;

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => onChanged(!value),
            borderRadius: BorderRadius.circular(8.r),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    child: Checkbox(
                      value: value,
                      onChanged: onChanged,
                      activeColor: AppColors.primary,
                      checkColor: AppColors.onPrimary,
                      side: BorderSide(
                        color: hasError ? AppColors.error : AppColors.outline,
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: label,
                            style: AppTextStyles.bodyMedium.copyWith(
                              color:
                                  hasError
                                      ? AppColors.error
                                      : AppColors.onSurface,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              if (isRequired)
                                TextSpan(
                                  text: ' *',
                                  style: AppTextStyles.bodyMedium.copyWith(
                                    color: AppColors.error,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if (description != null) ...[
                          SizedBox(height: SizeExtension(4).h),
                          Text(
                            description!,
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (hasError) ...[
            SizedBox(height: SizeExtension(4).h),
            Padding(
              padding: EdgeInsets.only(left: SizeExtension(44).w),
              child: Text(errorText!, style: AppTextStyles.fieldError),
            ),
          ],
        ],
      ),
    );
  }
}
