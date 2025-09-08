import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckboxTile extends StatelessWidget {
  const CustomCheckboxTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
    this.isRequired = false,
    this.errorText,
    this.enabled = true,
  });

  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isRequired;
  final String? errorText;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: errorText != null 
                  ? colorScheme.error 
                  : colorScheme.outline,
              width: errorText != null ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(12.r),
            color: enabled 
                ? colorScheme.surface 
                : colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
          ),
          child: CheckboxListTile(
            value: value,
            onChanged: enabled ? onChanged : null,
            title: RichText(
              text: TextSpan(
                text: title,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: enabled 
                      ? colorScheme.onSurface 
                      : colorScheme.onSurface.withValues(alpha: 0.38),
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  if (isRequired)
                    TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
            subtitle: subtitle != null
                ? Text(
                    subtitle!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: enabled 
                          ? colorScheme.onSurfaceVariant 
                          : colorScheme.onSurface.withValues(alpha: 0.38),
                      height: 1.4,
                    ),
                  )
                : null,
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            checkboxShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            activeColor: colorScheme.primary,
            checkColor: colorScheme.onPrimary,
            side: BorderSide(
              color: colorScheme.outline,
              width: 2,
            ),
          ),
        ),
        
        // Error Text
        if (errorText != null) ...[
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              errorText!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.error,
              ),
            ),
          ),
        ],
      ],
    );
  }
}