import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

enum ButtonVariant { primary, secondary, outline, outlined, text, filled }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final bool isLoading;
  final bool isFullWidth;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
    this.isFullWidth = false,
    this.padding,
    this.icon,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget button;

    switch (variant) {
      case ButtonVariant.primary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            padding:
                padding ??
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            minimumSize: Size(
              width ?? (isFullWidth ? double.infinity : 0),
              height ?? 48.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: _buildButtonContent(),
        );
        break;
      case ButtonVariant.secondary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondary,
            foregroundColor: AppColors.onSecondary,
            padding:
                padding ??
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            minimumSize: Size(
              width ?? (isFullWidth ? double.infinity : 0),
              height ?? 48.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: _buildButtonContent(),
        );
        break;
      case ButtonVariant.outline:
      case ButtonVariant.outlined:
        button = OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding:
                padding ??
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            minimumSize: Size(
              width ?? (isFullWidth ? double.infinity : 0),
              height ?? 48.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: _buildButtonContent(),
        );
        break;
      case ButtonVariant.filled:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
            padding:
                padding ??
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            minimumSize: Size(
              width ?? (isFullWidth ? double.infinity : 0),
              height ?? 48.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: _buildButtonContent(),
        );
        break;
      case ButtonVariant.text:
        button = TextButton(
          onPressed: isLoading ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            padding:
                padding ??
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            minimumSize: Size(
              width ?? (isFullWidth ? double.infinity : 0),
              height ?? 48.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          child: _buildButtonContent(),
        );
        break;
    }

    return button;
  }

  Widget _buildButtonContent() {
    if (isLoading) {
      return SizedBox(
        height: 20.h,
        width: 20.w,
        child: const CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.onPrimary),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          SizedBox(width: 8.w),
          Text(text, style: AppTextStyles.buttonMedium),
        ],
      );
    }

    return Text(text, style: AppTextStyles.buttonMedium);
  }
}
