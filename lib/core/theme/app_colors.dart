import 'package:flutter/material.dart';

/// Application color constants with sophisticated gradient-based palette
class AppColors {
  // Primary gradient colors - Sophisticated blue to purple
  static const Color primary = Color(0xFF2563EB); // Bright blue
  static const Color primaryLight = Color(0xFF3B82F6); // Lighter blue
  static const Color primaryDark = Color(0xFF1D4ED8); // Darker blue
  static const Color primaryVariant = Color(0xFF7C3AED); // Purple accent

  // Secondary gradient colors - Teal to emerald
  static const Color secondary = Color(0xFF06B6D4); // Bright cyan
  static const Color secondaryLight = Color(0xFF22D3EE); // Light cyan
  static const Color secondaryDark = Color(0xFF0891B2); // Dark cyan
  static const Color secondaryVariant = Color(0xFF10B981); // Emerald

  // Accent colors for visual distinction
  static const Color accent = Color(0xFFEC4899); // Pink accent
  static const Color accentLight = Color(0xFFF472B6); // Light pink
  static const Color accentOrange = Color(0xFFF59E0B); // Amber
  static const Color accentPurple = Color(0xFF8B5CF6); // Violet

  // Surface colors with subtle gradients
  static const Color surface = Color(0xFFFAFAFA); // Slightly warmer white
  static const Color surfaceVariant = Color(0xFFF1F5F9); // Cool gray
  static const Color surfaceContainer = Color(0xFFF8FAFC); // Subtle blue tint
  static const Color surfaceContainerHigh = Color(0xFFE2E8F0); // Light slate
  static const Color surfaceContainerHighest = Color(
    0xFFCBD5E1,
  ); // Medium slate

  // Text colors with enhanced contrast
  static const Color textPrimary = Color(0xFF0F172A); // Slate 900
  static const Color textSecondary = Color(0xFF475569); // Slate 600
  static const Color textTertiary = Color(0xFF64748B); // Slate 500
  static const Color onSurface = Color(0xFF0F172A);
  static const Color onSurfaceVariant = Color(0xFF475569);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onAccent = Color(0xFFFFFFFF);

  // Enhanced state colors
  static const Color error = Color(0xFFDC2626); // Red 600
  static const Color errorLight = Color(0xFFF87171); // Red 400
  static const Color onError = Color(0xFFFFFFFF);
  static const Color success = Color(0xFF059669); // Emerald 600
  static const Color successLight = Color(0xFF34D399); // Emerald 400
  static const Color warning = Color(0xFFD97706); // Amber 600
  static const Color warningLight = Color(0xFFFBBF24); // Amber 400
  static const Color info = Color(0xFF0284C7); // Sky 600
  static const Color infoLight = Color(0xFF38BDF8); // Sky 400

  // Border and outline colors
  static const Color outline = Color(0xFF94A3B8); // Slate 400
  static const Color outlineVariant = Color(0xFFCBD5E1); // Slate 300
  static const Color border = Color(0xFFE2E8F0); // Slate 200
  static const Color borderLight = Color(0xFFF1F5F9); // Slate 100

  // Background colors with gradient support
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundSecondary = Color(0xFFF8FAFC); // Slate 50
  static const Color onBackground = Color(0xFF0F172A);

  // Disabled colors
  static const Color disabled = Color(0xFF94A3B8); // Slate 400
  static const Color onDisabled = Color(0xFFCBD5E1); // Slate 300

  // Shadow and elevation colors
  static const Color shadow = Color(0xFF0F172A);
  static const Color shadowLight = Color(0xFF64748B);
  static const Color scrim = Color(0xFF000000);

  // Inverse colors for dark themes
  static const Color inverseSurface = Color(0xFF1E293B); // Slate 800
  static const Color onInverseSurface = Color(0xFFF1F5F9); // Slate 100
  static const Color inversePrimary = Color(0xFF93C5FD); // Blue 300

  // Gradient definitions
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryVariant],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryVariant],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentOrange],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient surfaceGradient = LinearGradient(
    colors: [surface, surfaceVariant],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
