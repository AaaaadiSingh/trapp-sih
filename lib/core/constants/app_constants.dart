/// Application-wide constants
class AppConstants {
  // App Information
  static const String appName = 'NATPAC Trip Tracker';
  static const String appVersion = '1.0.0';

  // API Configuration
  static const String baseUrl = 'https://api.natpac.gov.in';
  static const Duration requestTimeout = Duration(seconds: 30);

  // Storage Keys
  static const String userProfileKey = 'user_profile';
  static const String onboardingCompletedKey = 'onboarding_completed';

  // Validation
  static const int minAge = 13;
  static const int maxAge = 120;

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultRadius = 12.0;
  static const Duration animationDuration = Duration(milliseconds: 300);
}
