# API Integration Implementation

## Overview
This implementation provides a complete API integration layer for the Flutter travel app, enabling communication with a RESTful backend service.

## 🏗️ Architecture

### Clean Architecture Layers
1. **Data Layer**: Models, Data Sources, Repositories
2. **Domain Layer**: Entities, Use Cases, Repository Interfaces
3. **Presentation Layer**: BLoCs, UI Components

### Key Components

#### Core Network Layer
- `ApiService`: Dio-based HTTP client with interceptors
- `Endpoints`: Centralized API endpoint definitions
- `AppConstants`: Configuration including user ID and base URL

#### Feature Modules
- **Dashboard**: Stats, summaries, weekly data, recent trips
- **Trips**: CRUD operations for trip management
- **Travel Preferences**: User preference management
- **Settings**: Privacy settings and user data management

## 🔧 Configuration

### User Configuration
```dart
// Current user ID (configured in app_constants.dart)
static const String userId = '68c20e29997752172d4bd2ee';

// API Base URL
static const String baseUrl = 'http://localhost:3000/api';
```

### API Endpoints
All endpoints automatically include the user ID as a query parameter:
- `GET /dashboard/stats?userId=68c20e29997752172d4bd2ee`
- `GET /trips?userId=68c20e29997752172d4bd2ee`
- `POST /trips?userId=68c20e29997752172d4bd2ee`
- And more...

## 📱 Features Implemented

### Dashboard Integration
- ✅ Real-time dashboard stats from API
- ✅ Weekly statistics and trends
- ✅ Recent trips display
- ✅ Fallback to mock data if API unavailable

### Trip Management
- ✅ Create, read, update, delete trips
- ✅ Trip filtering and pagination
- ✅ Automatic user ID association

### Travel Preferences
- ✅ User preference management
- ✅ Transport mode preferences
- ✅ Route preferences

### Settings Integration
- ✅ Privacy settings sync
- ✅ User data management
- ✅ Account deletion support

## 🚀 Getting Started

### 1. Dependencies
The following dependencies have been added:
```yaml
dependencies:
  dio: ^5.4.0  # HTTP client
  
# Existing dependencies for clean architecture:
# - injectable (dependency injection)
# - freezed (immutable models)
# - json_annotation (JSON serialization)
```

### 2. Code Generation
Run code generation for models and dependency injection:
```bash
flutter packages pub run build_runner build
```

### 3. Backend Requirements
Your backend should implement these endpoints:

#### Dashboard Endpoints
- `GET /api/dashboard/stats?userId={userId}`
- `GET /api/dashboard/summary?userId={userId}`
- `GET /api/dashboard/weekly-stats?userId={userId}`
- `GET /api/dashboard/recent-trips?userId={userId}&limit={limit}`

#### Trip Endpoints
- `GET /api/trips?userId={userId}`
- `POST /api/trips?userId={userId}`
- `PUT /api/trips/{id}?userId={userId}`
- `DELETE /api/trips/{id}?userId={userId}`
- `GET /api/trips/{id}?userId={userId}`

#### Travel Preferences Endpoints
- `GET /api/travel-preferences?userId={userId}`
- `PUT /api/travel-preferences?userId={userId}`
- `POST /api/travel-preferences?userId={userId}`
- `DELETE /api/travel-preferences?userId={userId}`

#### Settings Endpoints
- `PUT /api/settings/privacy?userId={userId}`
- `DELETE /api/user/data?userId={userId}`

## 🧪 Testing

Run the API integration test:
```bash
dart run test_api_integration.dart
```

This will test all API endpoints and show you exactly what data the app expects.

## 📊 Data Models

### Dashboard Stats
```json
{
  "totalTrips": 42,
  "totalDistance": 1250.5,
  "totalDuration": 3600,
  "averageSpeed": 35.2,
  "co2Saved": 125.0
}
```

### Trip Summary
```json
{
  "id": "trip_123",
  "origin": "Home",
  "destination": "Office",
  "startTime": "2024-01-15T08:00:00Z",
  "endTime": "2024-01-15T08:30:00Z",
  "distance": 15.2,
  "duration": 30
}
```

### Travel Preferences
```json
{
  "preferredTransportModes": ["car", "public_transport"],
  "avoidTolls": true,
  "avoidHighways": false,
  "preferredRouteType": "fastest"
}
```

## 🔄 How It Works

1. **App Startup**: Dependency injection configures all services
2. **User Interaction**: UI triggers BLoC events
3. **BLoC Processing**: Use cases are called with parameters
4. **Repository Layer**: Handles business logic and error handling
5. **Data Source**: Makes HTTP requests via ApiService
6. **API Service**: Adds user ID and handles authentication
7. **Response**: Data flows back through the layers to UI

## 🛡️ Error Handling

- Network errors are caught and converted to user-friendly messages
- API failures fall back to cached/mock data where appropriate
- All API calls include proper timeout and retry logic
- User ID is automatically added to all requests

## 🔧 Customization

### Change User ID
Update `AppConstants.userId` in `lib/core/constants/app_constants.dart`

### Change API Base URL
Update `AppConstants.baseUrl` in `lib/core/constants/app_constants.dart`

### Add New Endpoints
1. Add endpoint to `lib/core/network/endpoints.dart`
2. Create model in appropriate feature's `data/models/`
3. Add method to data source
4. Update repository and use cases
5. Run code generation

## 📝 Next Steps

1. **Backend Development**: Implement the API endpoints as documented
2. **Authentication**: Add JWT token handling if needed
3. **Caching**: Implement local caching for offline support
4. **Real-time Updates**: Add WebSocket support for live data
5. **Testing**: Add unit and integration tests

## 🤝 Integration with Existing Features

The API integration seamlessly works with existing app features:
- Location tracking continues to work locally
- Trip detection integrates with API trip creation
- Dashboard shows both local and API data
- Settings sync between local storage and API

---

**Ready to connect your Flutter app to a real backend! 🚀**