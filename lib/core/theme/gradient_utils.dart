import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Utility class for creating consistent gradients across the application
class GradientUtils {
  GradientUtils._();

  /// Primary gradient for main UI elements
  static const LinearGradient primary = LinearGradient(
    colors: [AppColors.primary, AppColors.primaryVariant],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Secondary gradient for accent elements
  static const LinearGradient secondary = LinearGradient(
    colors: [AppColors.secondary, Color.fromARGB(255, 21, 94, 70)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Accent gradient for highlights and special elements
  static const LinearGradient accent = LinearGradient(
    colors: [AppColors.accent, AppColors.accentOrange],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  /// Surface gradient for cards and containers
  static const LinearGradient surface = LinearGradient(
    colors: [AppColors.surface, AppColors.surfaceVariant],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Subtle background gradient
  static const LinearGradient background = LinearGradient(
    colors: [
      AppColors.background,
      AppColors.surfaceContainer,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );

  /// App bar gradient for consistent header styling
  static const LinearGradient appBar = LinearGradient(
    colors: [
      Color(0xFF00BCD4), // Cyan
      Color(0xFF3F51B5), // Indigo
      Color(0xFF9C27B0), // Purple
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.7, 1.0],
  );

  /// Button gradient for elevated buttons
  static const LinearGradient button = LinearGradient(
    colors: [
      AppColors.primary,
      AppColors.primaryLight,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Card overlay gradient for enhanced depth
  static LinearGradient cardOverlay = LinearGradient(
    colors: [
      AppColors.surface.withOpacity(0.95),
      AppColors.surfaceContainer.withOpacity(0.98),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Shimmer gradient for loading states
  static LinearGradient shimmer = LinearGradient(
    colors: [
      AppColors.surfaceContainer.withOpacity(0.3),
      AppColors.surface.withOpacity(0.1),
      AppColors.surfaceContainer.withOpacity(0.3),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: const [0.0, 0.5, 1.0],
  );

  /// Creates a custom gradient with specified colors and direction
  static LinearGradient custom({
    required List<Color> colors,
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
    List<double>? stops,
  }) {
    return LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
      stops: stops,
    );
  }

  /// Creates a radial gradient for circular elements
  static RadialGradient radial({
    required List<Color> colors,
    Alignment center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
  }) {
    return RadialGradient(
      colors: colors,
      center: center,
      radius: radius,
      stops: stops,
    );
  }

  /// Creates a sweep gradient for circular progress indicators
  static SweepGradient sweep({
    required List<Color> colors,
    Alignment center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 6.28318530718, // 2 * pi
    List<double>? stops,
  }) {
    return SweepGradient(
      colors: colors,
      center: center,
      startAngle: startAngle,
      endAngle: endAngle,
      stops: stops,
    );
  }

  /// Gradient for error states
  static LinearGradient get error => LinearGradient(
    colors: [
      AppColors.error,
      AppColors.errorLight,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Gradient for success states
  static LinearGradient get success => LinearGradient(
    colors: [
      AppColors.success,
      AppColors.successLight,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Gradient for warning states
  static LinearGradient get warning => LinearGradient(
    colors: [
      AppColors.warning,
      AppColors.warningLight,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

/// Extension to easily apply gradients to containers
extension GradientExtension on Widget {
  /// Wraps the widget with a gradient container
  Widget withGradient(
    Gradient gradient, {
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? width,
    double? height,
    AlignmentGeometry? alignment,
  }) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: this,
    );
  }

  /// Wraps the widget with the primary gradient
  Widget withPrimaryGradient({
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) {
    return withGradient(
      GradientUtils.primary,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }

  /// Wraps the widget with the surface gradient
  Widget withSurfaceGradient({
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) {
    return withGradient(
      GradientUtils.surface,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }
}