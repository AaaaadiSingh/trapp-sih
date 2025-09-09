import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/profile/presentation/pages/personal_info_page.dart';
import '../../features/profile/presentation/pages/travel_preferences_page.dart';
import '../../features/profile/presentation/pages/location_demographics_page.dart';
import '../../features/profile/presentation/pages/review_confirmation_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/profile/domain/entities/personal_info.dart';
import '../../features/profile/domain/entities/travel_preferences.dart';
import '../../features/profile/domain/entities/location_demographics.dart';

class AppRouter {
  static const String personalInfo = '/personal-info';
  static const String travelPreferences = '/travel-preferences';
  static const String locationDemographics = '/location-demographics';
  static const String reviewConfirmation = '/review-confirmation';
  static const String dashboard = '/dashboard';
  static const String settings = '/settings';

  static final GoRouter router = GoRouter(
    initialLocation: personalInfo,
    routes: [
      GoRoute(
        path: personalInfo,
        name: 'personal-info',
        builder: (context, state) => const PersonalInfoPage(),
      ),
      GoRoute(
        path: travelPreferences,
        name: 'travel-preferences',
        builder: (context, state) {
          final personalInfo = state.extra as PersonalInfo?;
          if (personalInfo == null) {
            // Redirect to first step if no data
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(AppRouter.personalInfo);
            });
            return const SizedBox.shrink();
          }
          return TravelPreferencesPage(personalInfo: personalInfo);
        },
      ),
      GoRoute(
        path: locationDemographics,
        name: 'location-demographics',
        builder: (context, state) {
          final personalInfo = state.extra as PersonalInfo?;
          if (personalInfo == null) {
            // Redirect to first step if no data
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(AppRouter.personalInfo);
            });
            return const SizedBox.shrink();
          }
          return LocationDemographicsPage(
            personalInfo: personalInfo,
          );
        },
      ),
      GoRoute(
        path: reviewConfirmation,
        name: 'review-confirmation',
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>?;
          if (data == null ||
              data['personalInfo'] == null ||
              data['locationDemographics'] == null) {
            // Redirect to first step if no data
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go(AppRouter.personalInfo);
            });
            return const SizedBox.shrink();
          }
          return ReviewConfirmationPage(
            personalInfo: data['personalInfo'] as PersonalInfo,
            locationDemographics:
                data['locationDemographics'] as LocationDemographics,
          );
        },
      ),
      GoRoute(
        path: dashboard,
        name: 'dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: settings,
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}

// Navigation Helper Class
class ProfileNavigator {
  static void toTravelPreferences(
    BuildContext context,
    PersonalInfo personalInfo,
  ) {
    context.go(AppRouter.travelPreferences, extra: personalInfo);
  }

  static void toLocationDemographics(
    BuildContext context,
    PersonalInfo personalInfo,
  ) {
    context.go(
      AppRouter.locationDemographics,
      extra: personalInfo,
    );
  }

  static void toReviewConfirmation(
    BuildContext context,
    PersonalInfo personalInfo,
    LocationDemographics locationDemographics,
  ) {
    context.go(
      AppRouter.reviewConfirmation,
      extra: {
        'personalInfo': personalInfo,
        'locationDemographics': locationDemographics,
      },
    );
  }

  static void toPersonalInfo(BuildContext context) {
    context.go(AppRouter.personalInfo);
  }

  static void toDashboard(BuildContext context) {
    context.go(AppRouter.dashboard);
  }

  static void goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }
}
