import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorageService {
  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  static const String _userIdKey = 'user_id';
  static const String _userNameKey = 'user_name';
  static const String _userEmailKey = 'user_email';

  /// Store user information without authentication tokens
  Future<void> storeUserInfo({
    required String userId,
    String? userName,
    String? userEmail,
  }) async {
    final futures = <Future<void>>[
      _storage.write(key: _userIdKey, value: userId),
    ];

    if (userName != null) {
      futures.add(_storage.write(key: _userNameKey, value: userName));
    }
    if (userEmail != null) {
      futures.add(_storage.write(key: _userEmailKey, value: userEmail));
    }

    await Future.wait(futures);
  }

  /// Get stored user ID
  Future<String?> getUserId() => _storage.read(key: _userIdKey);

  /// Get stored user name
  Future<String?> getUserName() => _storage.read(key: _userNameKey);

  /// Get stored user email
  Future<String?> getUserEmail() => _storage.read(key: _userEmailKey);

  /// Check if user data exists
  Future<bool> hasUserData() async {
    final userId = await getUserId();
    return userId != null && userId.isNotEmpty;
  }

  /// Clear all stored user data
  Future<void> clearUserData() async {
    await Future.wait([
      _storage.delete(key: _userIdKey),
      _storage.delete(key: _userNameKey),
      _storage.delete(key: _userEmailKey),
    ]);
  }

  /// Set default user ID (for bypassing authentication)
  Future<void> setDefaultUser() async {
    await storeUserInfo(
      userId: '68c20e29997752172d4bd2ee',
      userName: 'Default User',
      userEmail: 'user@example.com',
    );
  }
}
