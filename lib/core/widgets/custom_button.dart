import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../theme/gradient_utils.dart';

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
        button = Container(
          width: width ?? (isFullWidth ? double.infinity : null),
          height: height ?? 52.h,
          decoration: BoxDecoration(
            gradient: isLoading ? null : GradientUtils.primary,
            color: isLoading ? AppColors.disabled : null,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow:
                isLoading
                    ? null
                    : [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPressed,
              borderRadius: BorderRadius.circular(16.r),
              child: Container(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Center(child: _buildButtonContent(AppColors.onPrimary)),
              ),
            ),
          ),
        );
        break;
      case ButtonVariant.secondary:
        button = Container(
          width: width ?? (isFullWidth ? double.infinity : null),
          height: height ?? 52.h,
          decoration: BoxDecoration(
            gradient: isLoading ? null : GradientUtils.secondary,
            color: isLoading ? AppColors.disabled : null,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow:
                isLoading
                    ? null
                    : [
                      BoxShadow(
                        color: AppColors.secondary.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPressed,
              borderRadius: BorderRadius.circular(16.r),
              child: Container(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Center(
                  child: _buildButtonContent(AppColors.onSecondary),
                ),
              ),
            ),
          ),
        );
        break;
      case ButtonVariant.outline:
      case ButtonVariant.outlined:
        button = Container(
          width: width ?? (isFullWidth ? double.infinity : null),
          height: height ?? 52.h,
          decoration: BoxDecoration(
            gradient: isLoading ? null : GradientUtils.surface,
            color: isLoading ? AppColors.disabled.withOpacity(0.1) : null,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              width: 2,
              color: isLoading ? AppColors.disabled : AppColors.primary,
            ),
            boxShadow:
                isLoading
                    ? null
                    : [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPressed,
              borderRadius: BorderRadius.circular(16.r),
              child: Container(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Center(
                  child: _buildButtonContent(
                    isLoading ? AppColors.disabled : AppColors.primary,
                  ),
                ),
              ),
            ),
          ),
        );
        break;
      case ButtonVariant.filled:
        button = Container(
          width: width ?? (isFullWidth ? double.infinity : null),
          height: height ?? 52.h,
          decoration: BoxDecoration(
            gradient: isLoading ? null : GradientUtils.accent,
            color: isLoading ? AppColors.disabled : null,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow:
                isLoading
                    ? null
                    : [
                      BoxShadow(
                        color: AppColors.accent.withOpacity(0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPressed,
              borderRadius: BorderRadius.circular(16.r),
              child: Container(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Center(child: _buildButtonContent(AppColors.onAccent)),
              ),
            ),
          ),
        );
        break;
      case ButtonVariant.text:
        button = Container(
          width: width ?? (isFullWidth ? double.infinity : null),
          height: height ?? 48.h,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isLoading ? null : onPressed,
              borderRadius: BorderRadius.circular(12.r),
              child: Container(
                padding:
                    padding ??
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                child: Center(
                  child: _buildButtonContent(
                    isLoading ? AppColors.disabled : AppColors.primary,
                  ),
                ),
              ),
            ),
          ),
        );
        break;
    }

    return button;
  }

  Widget _buildButtonContent(Color textColor) {
    if (isLoading) {
      return SizedBox(
        height: 20.h,
        width: 20.w,
        child: CircularProgressIndicator(
          strokeWidth: 2.5,
          valueColor: AlwaysStoppedAnimation<Color>(textColor),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          SizedBox(width: 8.w),
          Text(
            text,
            style: AppTextStyles.buttonMedium.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ],
      );
    }

    return Text(
      text,
      style: AppTextStyles.buttonMedium.copyWith(
        color: textColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    );
  }
}
