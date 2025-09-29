# Frontend Authentication Implementation Guide

## Overview
This guide provides a comprehensive implementation plan for adding JWT-based authentication to the Flutter travel app. This complements the backend authentication changes and ensures secure API communication.

## 🏗️ Current State Analysis

### Existing API Integration
- ✅ Dio-based HTTP client (`ApiService`)
- ✅ Basic interceptors for logging
- ✅ Automatic userId injection
- ❌ No JWT token handling
- ❌ No authentication state management
- ❌ No token refresh mechanism

### Required Changes
1. **Authentication State Management** - BLoC pattern for auth state
2. **Token Storage** - Secure storage for JWT tokens
3. **API Service Enhancement** - Token interceptors and refresh logic
4. **Route Protection** - Authentication guards for protected routes
5. **Login/Logout UI** - Authentication screens and flows

## 🔧 Implementation Plan

### Phase 1: Core Authentication Infrastructure

#### 1.1 Dependencies
Add these dependencies to `pubspec.yaml`:

```yaml
dependencies:
  # Existing dependencies...
  flutter_secure_storage: ^9.0.0  # Secure token storage
  jwt_decoder: ^2.0.1             # JWT token decoding
  
dev_dependencies:
  # Existing dev dependencies...
```

#### 1.2 Authentication Models
Create authentication data models:

**File: `lib/features/auth/domain/entities/user.dart`**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String name,
    String? profilePicture,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```

**File: `lib/features/auth/domain/entities/auth_tokens.dart`**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_tokens.freezed.dart';
part 'auth_tokens.g.dart';

@freezed
class AuthTokens with _$AuthTokens {
  const factory AuthTokens({
    required String accessToken,
    required String refreshToken,
    required DateTime expiresAt,
  }) = _AuthTokens;

  factory AuthTokens.fromJson(Map<String, dynamic> json) => _$AuthTokensFromJson(json);
}
```

#### 1.3 Secure Storage Service
**File: `lib/core/services/secure_storage_service.dart`**
```dart
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorageService {
  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _userIdKey = 'user_id';

  Future<void> storeTokens({
    required String accessToken,
    required String refreshToken,
    required String userId,
  }) async {
    await Future.wait([
      _storage.write(key: _accessTokenKey, value: accessToken),
      _storage.write(key: _refreshTokenKey, value: refreshToken),
      _storage.write(key: _userIdKey, value: userId),
    ]);
  }

  Future<String?> getAccessToken() => _storage.read(key: _accessTokenKey);
  Future<String?> getRefreshToken() => _storage.read(key: _refreshTokenKey);
  Future<String?> getUserId() => _storage.read(key: _userIdKey);

  Future<void> clearTokens() async {
    await Future.wait([
      _storage.delete(key: _accessTokenKey),
      _storage.delete(key: _refreshTokenKey),
      _storage.delete(key: _userIdKey),
    ]);
  }
}
```

### Phase 2: Enhanced API Service

#### 2.1 Authentication Interceptor
**File: `lib/core/network/auth_interceptor.dart`**
```dart
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../services/secure_storage_service.dart';
import 'endpoints.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final SecureStorageService _secureStorage;
  final Dio _dio;

  AuthInterceptor(this._secureStorage, this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Skip auth for login/register endpoints
    if (_isAuthEndpoint(options.path)) {
      return handler.next(options);
    }

    final accessToken = await _secureStorage.getAccessToken();
    if (accessToken != null) {
      // Check if token is expired
      if (JwtDecoder.isExpired(accessToken)) {
        // Try to refresh token
        final refreshed = await _refreshToken();
        if (refreshed) {
          final newToken = await _secureStorage.getAccessToken();
          options.headers['Authorization'] = 'Bearer $newToken';
        } else {
          // Redirect to login
          return handler.reject(
            DioException(
              requestOptions: options,
              type: DioExceptionType.cancel,
              error: 'Authentication required',
            ),
          );
        }
      } else {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    }

    // Add userId from secure storage instead of constants
    final userId = await _secureStorage.getUserId();
    if (userId != null) {
      options.queryParameters['userId'] = userId;
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Token expired, try refresh
      final refreshed = await _refreshToken();
      if (refreshed) {
        // Retry original request
        final newToken = await _secureStorage.getAccessToken();
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
        
        try {
          final response = await _dio.fetch(err.requestOptions);
          return handler.resolve(response);
        } catch (e) {
          return handler.next(err);
        }
      } else {
        // Clear tokens and redirect to login
        await _secureStorage.clearTokens();
      }
    }
    handler.next(err);
  }

  bool _isAuthEndpoint(String path) {
    return path.contains('/auth/') || 
           path.contains('/login') || 
           path.contains('/register');
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await _secureStorage.getRefreshToken();
      if (refreshToken == null) return false;

      final response = await _dio.post(
        ApiEndpoints.refreshToken,
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        await _secureStorage.storeTokens(
          accessToken: data['accessToken'],
          refreshToken: data['refreshToken'],
          userId: data['userId'],
        );
        return true;
      }
    } catch (e) {
      print('Token refresh failed: $e');
    }
    return false;
  }
}
```

#### 2.2 Updated API Service
**Update: `lib/core/network/api_service.dart`**
```dart
// Add to existing ApiService class

@singleton
class ApiService {
  late final Dio _dio;
  final Logger _logger = Logger();
  final AuthInterceptor _authInterceptor;

  ApiService(this._authInterceptor) {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: AppConstants.requestTimeout,
        receiveTimeout: AppConstants.requestTimeout,
        sendTimeout: AppConstants.requestTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _setupInterceptors();
  }

  void _setupInterceptors() {
    // Add auth interceptor first
    _dio.interceptors.add(_authInterceptor);
    
    // Then add logging interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          _logger.d('Request: ${options.method} ${options.path}');
          _logger.d('Headers: ${options.headers}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          _logger.d('Response: ${response.statusCode} ${response.requestOptions.path}');
          handler.next(response);
        },
        onError: (error, handler) {
          _logger.e('Error: ${error.message}');
          _logger.e('Response: ${error.response?.data}');
          handler.next(error);
        },
      ),
    );
  }

  // Add authentication methods
  Future<Response<T>> login<T>({
    required String email,
    required String password,
  }) async {
    return await post<T>(
      ApiEndpoints.login,
      data: {
        'email': email,
        'password': password,
      },
    );
  }

  Future<Response<T>> register<T>({
    required String email,
    required String password,
    required String name,
  }) async {
    return await post<T>(
      ApiEndpoints.register,
      data: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
  }

  // Existing methods remain the same...
}
```

### Phase 3: Authentication State Management

#### 3.1 Authentication BLoC
**File: `lib/features/auth/presentation/bloc/auth_bloc.dart`**
```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/usecases/check_auth_status_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final CheckAuthStatusUseCase _checkAuthStatusUseCase;

  AuthBloc(
    this._loginUseCase,
    this._logoutUseCase,
    this._checkAuthStatusUseCase,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          checkAuthStatus: () => _onCheckAuthStatus(emit),
          login: (email, password) => _onLogin(emit, email, password),
          logout: () => _onLogout(emit),
        );
      },
    );
  }

  Future<void> _onCheckAuthStatus(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    
    final result = await _checkAuthStatusUseCase(NoParams());
    result.fold(
      (failure) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _onLogin(Emitter<AuthState> emit, String email, String password) async {
    emit(const AuthState.loading());
    
    final result = await _loginUseCase(LoginParams(email: email, password: password));
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _onLogout(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    
    final result = await _logoutUseCase(NoParams());
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }
}
```

### Phase 4: Authentication UI

#### 4.1 Login Screen
**File: `lib/features/auth/presentation/pages/login_page.dart`**
```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: (user) {
                context.go('/dashboard');
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome Back',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 32),
                      CustomTextField(
                        controller: _emailController,
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        controller: _passwordController,
                        label: 'Password',
                        obscureText: true,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      CustomButton(
                        text: 'Login',
                        onPressed: state.maybeWhen(
                          loading: () => null,
                          orElse: () => () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  _emailController.text,
                                  _passwordController.text,
                                ),
                              );
                            }
                          },
                        ),
                        isLoading: state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => context.go('/register'),
                        child: const Text('Don\'t have an account? Sign up'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
```

### Phase 5: Route Protection

#### 5.1 Authentication Guard
**File: `lib/core/routing/auth_guard.dart`**
```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../services/secure_storage_service.dart';
import '../di/injection.dart';

class AuthGuard {
  static Future<String?> redirectLogic(BuildContext context, GoRouterState state) async {
    final secureStorage = getIt<SecureStorageService>();
    final accessToken = await secureStorage.getAccessToken();
    
    final isAuthRoute = state.location.startsWith('/auth') || 
                       state.location == '/login' || 
                       state.location == '/register';
    
    final isAuthenticated = accessToken != null;
    
    // If user is authenticated and trying to access auth routes, redirect to dashboard
    if (isAuthenticated && isAuthRoute) {
      return '/dashboard';
    }
    
    // If user is not authenticated and trying to access protected routes, redirect to login
    if (!isAuthenticated && !isAuthRoute && state.location != '/') {
      return '/login';
    }
    
    // No redirect needed
    return null;
  }
}
```

#### 5.2 Updated App Router
**Update: `lib/core/routing/app_router.dart`**
```dart
// Add authentication routes and guards

final appRouter = GoRouter(
  initialLocation: '/splash',
  redirect: AuthGuard.redirectLogic,
  routes: [
    // Splash route
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashPage(),
    ),
    
    // Authentication routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    
    // Protected routes
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardPage(),
    ),
    
    // Other existing routes...
  ],
);
```

## 🔄 Migration Steps

### Step 1: Install Dependencies
```bash
flutter pub add flutter_secure_storage jwt_decoder
flutter pub get
```

### Step 2: Update API Endpoints
Add authentication endpoints to `lib/core/network/endpoints.dart`:
```dart
class ApiEndpoints {
  // Authentication endpoints
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String refreshToken = 'auth/refresh';
  static const String logout = 'auth/logout';
  
  // Existing endpoints...
}
```

### Step 3: Update Dependency Injection
Register new services in your DI container:
```dart
// Add to injection configuration
@module
abstract class AppModule {
  @singleton
  SecureStorageService get secureStorageService => SecureStorageService();
  
  @injectable
  AuthInterceptor authInterceptor(
    SecureStorageService secureStorage,
    @Named('dio') Dio dio,
  ) => AuthInterceptor(secureStorage, dio);
}
```

### Step 4: Update App Constants
Remove hardcoded userId from `AppConstants` since it will come from authentication:
```dart
class AppConstants {
  // Remove: static const String userId = '68c20e29997752172d4bd2ee';
  static const String baseUrl = 'https://trapp-sih-backend.onrender.com/api';
  // Other constants...
}
```

### Step 5: Run Code Generation
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## 🧪 Testing Authentication

### Test Authentication Flow
1. **Login Test**: Verify token storage and API header injection
2. **Token Refresh**: Test automatic token refresh on expiry
3. **Logout Test**: Verify token cleanup and route redirection
4. **Route Protection**: Test access to protected routes

### Debug Authentication
Use the existing debug screen to test authentication:
```dart
// Add to debug_screen.dart
Future<void> _testAuthentication() async {
  final authBloc = getIt<AuthBloc>();
  
  // Test login
  authBloc.add(const AuthEvent.login('test@example.com', 'password'));
  
  // Monitor auth state
  authBloc.stream.listen((state) {
    _addLog('Auth State: ${state.toString()}');
  });
}
```

## 🔒 Security Best Practices

1. **Token Storage**: Use `flutter_secure_storage` for secure token storage
2. **Token Validation**: Always validate JWT tokens before use
3. **Automatic Refresh**: Implement seamless token refresh
4. **Route Protection**: Guard all protected routes
5. **Error Handling**: Graceful handling of authentication errors
6. **Logout Cleanup**: Complete token cleanup on logout

## 📝 Next Steps

1. **Implement Backend Endpoints**: Ensure backend has matching authentication endpoints
2. **Add Biometric Authentication**: Consider fingerprint/face ID for enhanced security
3. **Social Login**: Add Google/Apple sign-in options
4. **Password Reset**: Implement forgot password functionality
5. **Multi-factor Authentication**: Add 2FA support

## 🤝 Integration with Existing Features

The authentication system integrates seamlessly with existing features:
- **Dashboard**: Now shows user-specific data
- **Trips**: Associated with authenticated user
- **Settings**: User-specific privacy settings
- **Location Services**: Tied to authenticated user account

---

**Ready to implement secure authentication in your Flutter app! 🔐**