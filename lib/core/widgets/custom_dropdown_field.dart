import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final String? errorText;
  final String? hintText;
  final bool isRequired;
  final bool enabled;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? padding;

  const CustomDropdownField({
    super.key,
    required this.label,
    this.value,
    required this.items,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.isRequired = false,
    this.enabled = true,
    this.prefixIcon,
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
          // Label
          RichText(
            text: TextSpan(
              text: label,
              style: AppTextStyles.labelLarge.copyWith(
                color: AppColors.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
              children: [
                if (isRequired)
                  TextSpan(
                    text: ' *',
                    style: AppTextStyles.labelLarge.copyWith(
                      color: AppColors.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8.h),

          // Dropdown Field
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color:
                    hasError
                        ? AppColors.error
                        : (enabled
                            ? AppColors.outline
                            : AppColors.outlineVariant),
                width: 1.5,
              ),
              color: enabled ? AppColors.surface : AppColors.surfaceVariant,
            ),
            child: DropdownButtonFormField<T>(
              value: value,
              items: items,
              onChanged: enabled ? onChanged : null,
              decoration: InputDecoration(
                hintText: hintText ?? 'Select $label',
                hintStyle: AppTextStyles.fieldHint,
                prefixIcon: prefixIcon,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                isDense: true,
              ),
              hint:
                  hintText != null
                      ? Text(hintText!, style: AppTextStyles.fieldHint)
                      : null,
              style: AppTextStyles.fieldInput.copyWith(
                color:
                    enabled ? AppColors.onSurface : AppColors.onSurfaceVariant,
              ),
              dropdownColor: AppColors.surface,
              borderRadius: BorderRadius.circular(12.r),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color:
                    enabled ? AppColors.onSurfaceVariant : AppColors.disabled,
                size: 24.sp,
              ),
              isExpanded: true,
            ),
          ),

          // Error Text
          if (hasError) ...[
            SizedBox(height: 8.h),
            Text(errorText!, style: AppTextStyles.fieldError),
          ],
        ],
      ),
    );
  }
}
