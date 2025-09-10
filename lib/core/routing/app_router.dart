import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';

import '../../features/profile/presentation/pages/personal_info_page.dart';
import '../../features/profile/presentation/pages/travel_preferences_page.dart';
import '../../features/profile/presentation/pages/location_demographics_page.dart';
import '../../features/profile/presentation/pages/review_confirmation_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/profile/domain/entities/personal_info.dart';
import '../../features/profile/domain/entities/travel_preferences.dart';
import '../../features/profile/domain/entities/location_demographics.dart';
import '../../features/debug/debug_screen.dart';
import '../../features/dashboard/presentation/screens/trip_map_screen.dart';
import '../constants/app_constants.dart';
import '../di/injection_container.dart';
import '../services/trip_detection_service.dart';

class AppRouter {
  static const String personalInfo = '/personal-info';
  static const String travelPreferences = '/travel-preferences';
  static const String locationDemographics = '/location-demographics';
  static const String reviewConfirmation = '/review-confirmation';
  static const String dashboard = '/dashboard';
  static const String settings = '/settings';
  static const String debug = '/debug';
  static const String tripMap = '/trip-map';

  static final GoRouter router = GoRouter(
    initialLocation: personalInfo,
    redirect: (context, state) async {
      // Check if onboarding is completed
      final prefs = sl<SharedPreferences>();
      final isOnboardingCompleted = prefs.getBool(AppConstants.onboardingCompletedKey) ?? false;
      
      // If user is on onboarding pages and onboarding is completed, redirect to dashboard
      if (isOnboardingCompleted && 
          (state.matchedLocation == personalInfo || 
           state.matchedLocation == travelPreferences ||
           state.matchedLocation == locationDemographics ||
           state.matchedLocation == reviewConfirmation)) {
        return dashboard;
      }
      
      // If user is trying to access dashboard but onboarding is not completed, redirect to onboarding
      if (!isOnboardingCompleted && state.matchedLocation == dashboard) {
        return personalInfo;
      }
      
      return null; // No redirect needed
    },
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
      GoRoute(
        path: debug,
        name: 'debug',
        builder: (context, state) => const DebugScreen(),
      ),
      GoRoute(
        path: tripMap,
        name: 'trip-map',
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>?;
          return TripMapScreen(
            trip: data?['trip'] as DetectedTrip?,
            currentLocation: data?['currentLocation'] as Position?,
          );
        },
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

  static void toDebug(BuildContext context) {
    context.go(AppRouter.debug);
  }

  static void toTripMap(BuildContext context, {
    DetectedTrip? trip,
    Position? currentLocation,
  }) {
    context.push(
      AppRouter.tripMap,
      extra: {
        'trip': trip,
        'currentLocation': currentLocation,
      },
    );
  }

  static void goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }
}
