import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? value;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final String? hintText;
  final bool isRequired;
  final bool enabled;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomTextField({
    super.key,
    required this.label,
    this.value,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.isRequired = false,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.padding,
    this.controller,
    this.focusNode,
    this.onTap,
    this.readOnly = false,
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

          // Text Field
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
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              initialValue: controller == null ? value : null,
              onChanged: onChanged,
              onTap: onTap,
              enabled: enabled,
              readOnly: readOnly,
              obscureText: obscureText,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              maxLines: maxLines,
              minLines: minLines,
              maxLength: maxLength,
              style: AppTextStyles.fieldInput.copyWith(
                color:
                    enabled ? AppColors.onSurface : AppColors.onSurfaceVariant,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextStyles.fieldHint,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                isDense: true,
                counterText: maxLength != null ? null : '',
              ),
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
