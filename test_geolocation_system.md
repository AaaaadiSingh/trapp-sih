# Geolocation Tracking System Testing Guide

## Overview
This guide helps you verify that all components of the geolocation tracking system are working correctly.

## 1. Location Service Testing

### Check Location Permissions
```dart
// Add this test method to your app or create a debug screen
void testLocationPermissions() async {
  final locationService = GetIt.instance<LocationService>();
  
  // Test permission request
  final permissionResult = await locationService.requestLocationPermission();
  print('Permission Result: $permissionResult');
  
  // Test service availability
  final serviceResult = await locationService.isLocationServiceEnabled();
  print('Service Enabled: $serviceResult');
  
  // Test current location
  final locationResult = await locationService.getCurrentLocation();
  print('Current Location: $locationResult');
}
```

### Test Location Tracking
```dart
void testLocationTracking() async {
  final locationService = GetIt.instance<LocationService>();
  
  // Start tracking
  final trackingResult = await locationService.startLocationTracking();
  print('Tracking Started: $trackingResult');
  
  // Listen to location stream
  locationService.locationStream.listen((position) {
    print('Location Update: ${position.latitude}, ${position.longitude}');
    print('Accuracy: ${position.accuracy}m, Speed: ${position.speed}m/s');
  });
}
```

## 2. Trip Detection Service Testing

### Test Trip Detection
```dart
void testTripDetection() async {
  final tripService = GetIt.instance<TripDetectionService>();
  
  // Start trip detection
  final result = await tripService.startTripDetection();
  print('Trip Detection Started: $result');
  
  // Monitor trip events
  tripService.tripEventStream.listen((event) {
    print('Trip Event: ${event.type}');
    print('Trip Number: ${event.metadata?['tripNumber']}');
    print('Trip Label: ${event.metadata?['tripLabel']}');
  });
  
  // Monitor trip counter
  print('Total Trips: ${tripService.totalTrips}');
}
```

### Test Trip States
```dart
void monitorTripStates() {
  final tripService = GetIt.instance<TripDetectionService>();
  
  // Check current state
  print('Current State: ${tripService.currentState}');
  print('Is Detecting: ${tripService.isDetecting}');
  
  // Monitor state changes
  Timer.periodic(Duration(seconds: 5), (timer) {
    print('State: ${tripService.currentState}, Trips: ${tripService.totalTrips}');
  });
}
```

## 3. Notification Service Testing

### Test Notification Setup
```dart
void testNotifications() async {
  final notificationService = GetIt.instance<NotificationService>();
  
  // Initialize notifications
  final initResult = await notificationService.initialize();
  print('Notification Init: $initResult');
  
  // Request permissions
  final permissionResult = await notificationService.requestPermissions();
  print('Notification Permission: $permissionResult');
  
  // Test trip completion notification
  final notificationResult = await notificationService.showTripCompletionNotification(
    tripNumber: 1,
    tripLabel: 'Test Trip 1',
  );
  print('Notification Sent: $notificationResult');
}
```

## 4. Dashboard Integration Testing

### Test Dashboard Data
```dart
void testDashboardIntegration() {
  final dashboardBloc = GetIt.instance<DashboardBloc>();
  final tripService = GetIt.instance<TripDetectionService>();
  
  // Load dashboard data
  dashboardBloc.add(DashboardEvent.loadData());
  
  // Monitor dashboard state
  dashboardBloc.stream.listen((state) {
    state.when(
      loaded: (data) {
        print('Dashboard Total Trips: ${data.totalTrips}');
        print('Trip Service Total: ${tripService.totalTrips}');
        print('Values Match: ${data.totalTrips == tripService.totalTrips}');
      },
      loading: () => print('Dashboard Loading...'),
      error: (message) => print('Dashboard Error: $message'),
    );
  });
}
```

## 5. Battery Optimization Testing

### Test Battery Optimization
```dart
void testBatteryOptimization() {
  final tripService = GetIt.instance<TripDetectionService>();
  
  // Monitor battery optimization activation
  Timer.periodic(Duration(minutes: 1), (timer) {
    // Check if battery optimization is active (you'll need to add a getter)
    print('Battery Optimization Active: ${tripService.batteryOptimizationActive}');
    print('Last Activity: ${tripService.lastActivityTime}');
  });
}
```

## 6. End-to-End Testing Scenarios

### Scenario 1: Complete Trip Flow
1. **Start the app** and ensure location permissions are granted
2. **Begin moving** (walk/drive for at least 50 meters)
3. **Verify trip starts** - check logs for "Trip started" message
4. **Continue moving** for 2-3 minutes
5. **Stop and wait** for 10+ minutes
6. **Verify trip ends** - check for trip completion notification
7. **Check dashboard** - verify trip count increased

### Scenario 2: Multiple Trips
1. Complete Scenario 1
2. **Start moving again** after trip ended
3. **Verify new trip starts** with incremented number
4. **Complete second trip**
5. **Check dashboard** shows correct total (2 trips)

### Scenario 3: Battery Optimization
1. **Leave app running** without movement for 30+ minutes
2. **Check logs** for battery optimization activation
3. **Start moving** and verify tracking resumes normally

## 7. Debug Logging

Add this to your main.dart to enable detailed logging:

```dart
void main() {
  // Enable detailed logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  
  runApp(MyApp());
}
```

## 8. Testing Checklist

- [ ] Location permissions granted
- [ ] Location service enabled
- [ ] Location tracking starts successfully
- [ ] Trip detection starts without errors
- [ ] Trip starts when moving (>10m, >0.5m/s)
- [ ] Trip ends after 10 minutes stationary
- [ ] Trip counter increments correctly
- [ ] Notifications appear on trip completion
- [ ] Dashboard shows real trip counts
- [ ] Battery optimization activates after 30min idle
- [ ] System resumes tracking after movement
- [ ] No memory leaks or crashes during extended use

## 9. Common Issues & Solutions

### Location Not Updating
- Check device location settings
- Verify app has location permissions
- Ensure location services are enabled
- Check if device is in power saving mode

### Notifications Not Showing
- Verify notification permissions
- Check device notification settings
- Ensure app is not in battery optimization

### Trip Not Starting/Ending
- Verify movement threshold (10 meters)
- Check speed threshold (0.5 m/s)
- Ensure 10-minute stationary period for trip end

### Dashboard Not Updating
- Check if services are properly injected
- Verify bloc is listening to trip events
- Ensure UI is subscribed to bloc state changes

Run these tests systematically to verify your geolocation tracking system is working correctly!