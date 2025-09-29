class ApiEndpoints {
  // Base API URL
  static const String baseUrl = 'http://localhost:3000/api';
  
  // Dashboard endpoints
  static const String dashboardOverview = 'dashboard/overview';
  static const String dashboardInsights = 'dashboard/insights';
  static const String dashboardGoals = 'dashboard/goals';
  static const String dashboardStats = 'dashboard/stats';
  static const String dashboardSummary = 'dashboard/summary';
  static const String weeklyStats = 'dashboard/weekly-stats';

  // Trip Lifecycle endpoints
  static const String startTrip = 'trips/start';
  static String endTrip(String tripId) => 'trips/$tripId/end';
  static String getUserTrips(String userId) => 'trips/user/$userId';

  // Travel Preferences endpoints
  static const String travelPreferences = 'travel-preferences';
  static const String getTravelPreferences = 'travel-preferences';
  static const String createTravelPreferences = 'travel-preferences';
  static const String updateTravelPreferences = 'travel-preferences';
  static const String deleteTravelPreferences = 'travel-preferences';

  // User profile endpoints
  static const String userProfile = 'users/profile';
  static const String updateUserProfile = 'users/profile';
  static const String getUserProfile = 'users/profile';
  
  // Settings endpoints
  static const String updateUserSettings = 'users/settings';
  static const String deleteUserData = 'users/data';



  
}
