import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownField<T> extends StatelessWidget {
  const CustomDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
    this.errorText,
    this.isRequired = false,
    this.enabled = true,
  });

  final String label;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;
  final T? value;
  final String? hint;
  final String? errorText;
  final bool isRequired;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        RichText(
          text: TextSpan(
            text: label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.primary,
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
        SizedBox(height: 8.h),
        
        // Dropdown Field
        DropdownButtonFormField<T>(
          value: value,
          items: items,
          onChanged: enabled ? onChanged : null,
          decoration: InputDecoration(
            hintText: hint ?? 'Select $label',
            errorText: errorText,
            suffixIcon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: enabled 
                  ? colorScheme.onSurfaceVariant 
                  : colorScheme.onSurface.withValues(alpha: 0.38),
            ),
          ),
          style: theme.textTheme.bodyLarge?.copyWith(
            color: enabled 
                ? Colors.black 
                : colorScheme.onSurface.withValues(alpha: 0.38),
          ),
          dropdownColor: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          menuMaxHeight: 300.h,
          isExpanded: true,
          icon: const SizedBox.shrink(), // Hide default icon
        ),
      ],
    );
  }
}