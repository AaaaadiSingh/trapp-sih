# API Endpoint Usage Guide for Backend Team

This document provides a comprehensive overview of how each API endpoint is called from the Flutter application. All API calls are made through the `ApiService` class located in `lib/core/network/api_service.dart`.

## Base Configuration

```dart
// Base URL and common headers
static const String baseUrl = 'http://localhost:3000/api';

// All requests automatically include:
// - User ID in query parameters (via interceptor)
// - Content-Type: application/json
// - No authentication headers (authentication removed)
```

## Authentication

**Note:** Authentication endpoints have been removed from the API service. The application now operates without authentication for simplified development and testing.

## Dashboard Endpoints

### 1. Get Dashboard Overview
**Endpoint:** `GET /dashboard/overview`
```dart
// Method call
final response = await apiService.getDashboardStats(
  additionalParams: {
    'period': 'weekly',
    'includeComparison': true,
  }, // optional
);

// Request: GET /dashboard/overview?period=weekly&includeComparison=true&userId=123
```

### 2. Get Dashboard Insights
**Endpoint:** `GET /dashboard/insights`
```dart
// Method call
final response = await apiService.getDashboardSummary(
  additionalParams: {
    'limit': 10,
  }, // optional
);

// Request: GET /dashboard/insights?limit=10&userId=123
```

### 3. Get Goals and Challenges
**Endpoint:** `GET /dashboard/goals`
```dart
// Method call
final response = await apiService.getGoalsAndChallenges(
  additionalParams: {
    'includeProgress': true,
  }, // optional
);

// Request: GET /dashboard/goals?includeProgress=true&userId=123
```

## Trip Lifecycle Endpoints

### 1. Start Trip
**Endpoint:** `POST /trips/start`
```dart
// Method call
final response = await apiService.startTrip(
  data: {
    'startLocation': {
      'latitude': 40.7128,
      'longitude': -74.0060,
      'address': 'New York, NY'
    },
    'transportMode': 'car',
    'plannedDestination': 'Beach Resort',
    'estimatedDuration': 120, // minutes
  },
  additionalParams: {
    'trackLocation': true,
  }, // optional
);

// Request body sent to backend:
{
  "startLocation": {
    "latitude": 40.7128,
    "longitude": -74.0060,
    "address": "New York, NY"
  },
  "transportMode": "car",
  "plannedDestination": "Beach Resort",
  "estimatedDuration": 120
}
```

### 2. End Trip
**Endpoint:** `POST /trips/{tripId}/end`
```dart
// Method call
final response = await apiService.endTrip(
  'trip_123',
  data: {
    'endLocation': {
      'latitude': 40.7589,
      'longitude': -73.9851,
      'address': 'Beach Resort, NY'
    },
    'actualDuration': 135, // minutes
    'totalDistance': 25.5, // km
    'fuelConsumed': 3.2, // liters
    'carbonFootprint': 7.6, // kg CO2
  },
  additionalParams: {
    'saveRoute': true,
  }, // optional
);

// Request body sent to backend:
{
  "endLocation": {
    "latitude": 40.7589,
    "longitude": -73.9851,
    "address": "Beach Resort, NY"
  },
  "actualDuration": 135,
  "totalDistance": 25.5,
  "fuelConsumed": 3.2,
  "carbonFootprint": 7.6
}
```

### 3. Get User Trips
**Endpoint:** `GET /trips/user/{userId}`
```dart
// Method call
final response = await apiService.getUserTrips(
  'user_123',
  additionalParams: {
    'page': 1,
    'limit': 20,
    'status': 'completed',
    'startDate': '2024-01-01',
    'endDate': '2024-12-31',
  }, // optional
);

// Request: GET /trips/user/user_123?page=1&limit=20&status=completed&startDate=2024-01-01&endDate=2024-12-31
```

## Travel Preferences Endpoints

### 1. Get Travel Preferences
**Endpoint:** `GET /travel-preferences`
```dart
// Method call
final response = await apiService.getTravelPreferences();

// Request: GET /travel-preferences?userId=123
```

### 2. Create Travel Preferences
**Endpoint:** `POST /travel-preferences`
```dart
// Method call
final response = await apiService.createTravelPreferences(
  preferredTransportModes: ['car', 'train'],
  ecoFriendlyMode: true,
  maxWalkingDistance: 1.5,
  avoidTolls: false,
  avoidHighways: true,
  maxTravelTime: 120.0, // optional
  budgetLimit: 1000.0, // optional
);

// Request body sent to backend:
{
  "preferredTransportModes": ["car", "train"],
  "ecoFriendlyMode": true,
  "maxWalkingDistance": 1.5,
  "avoidTolls": false,
  "avoidHighways": true,
  "maxTravelTime": 120.0,
  "budgetLimit": 1000.0
}
```

### 3. Update Travel Preferences
**Endpoint:** `PUT /travel-preferences`
```dart
// Method call
final response = await apiService.updateTravelPreferences(
  ecoFriendlyMode: false, // optional
  maxWalkingDistance: 2.0, // optional
  budgetLimit: 1500.0, // optional
);

// Request body sent to backend:
{
  "ecoFriendlyMode": false,
  "maxWalkingDistance": 2.0,
  "budgetLimit": 1500.0
}
```

### 4. Delete Travel Preferences
**Endpoint:** `DELETE /travel-preferences`
```dart
// Method call
final response = await apiService.deleteTravelPreferences();

// Request: DELETE /travel-preferences?userId=123
```

## User Profile Endpoints

### 1. Get User Profile
**Endpoint:** `GET /users/profile`
```dart
// Method call
final response = await apiService.getUserProfile(
  additionalParams: {
    'includePreferences': true,
  }, // optional
);

// Request: GET /users/profile?includePreferences=true&userId=123
```

### 2. Update User Profile
**Endpoint:** `PUT /users/profile`
```dart
// Method call
final response = await apiService.updateUserProfile(
  name: 'John Updated', // optional
  email: 'john.updated@example.com', // optional
  phone: '+1987654321', // optional
  city: 'New York', // optional
  country: 'USA', // optional
  additionalParams: {
    'validateEmail': true,
  }, // optional
);

// Request body sent to backend:
{
  "name": "John Updated",
  "email": "john.updated@example.com",
  "phone": "+1987654321",
  "city": "New York",
  "country": "USA"
}
```

## Settings

**Note:** Settings endpoints (privacy settings, user data deletion) have been removed from the API service for simplified development.

## Common Response Format

All API calls return a `Response<Map<String, dynamic>>` object with the following structure:

```dart
// Successful response
{
  "statusCode": 200,
  "data": {
    // Actual response data
  },
  "headers": {
    // Response headers
  }
}

// Error response
{
  "statusCode": 400, // or other error codes
  "statusMessage": "Error message",
  "data": {
    "error": "Detailed error information"
  }
}
```

## Error Handling

All API methods include comprehensive error handling:

1. **Network Errors**: Connection timeouts, no internet
2. **HTTP Errors**: 4xx and 5xx status codes
3. **Parsing Errors**: Invalid JSON responses
4. **Authentication Errors**: Invalid tokens, expired sessions

Errors are logged using the integrated logger and re-thrown for handling at the UI level.

## Request Interceptors

All requests automatically include:
- User ID in query parameters
- Request/response logging
- Error logging with detailed information

## Notes for Backend Team

1. **User ID**: Automatically added to all requests via interceptor
2. **Content-Type**: Always `application/json` for POST/PUT requests
3. **Query Parameters**: Optional parameters are only included if provided
4. **Error Responses**: Should follow standard HTTP status codes
5. **Authentication**: No authentication required (removed for simplified development)
6. **CORS**: Ensure proper CORS headers for web deployment
7. **Base URL**: Updated to use localhost:3000 for local development
8. **Trip Lifecycle**: Trips now use start/end lifecycle instead of CRUD operations
9. **Dashboard**: Updated to use overview/insights/goals structure

This documentation covers all API endpoints currently implemented in the Flutter application. Each endpoint includes the exact method signature, request format, and expected usage patterns.