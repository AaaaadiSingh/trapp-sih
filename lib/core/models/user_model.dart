import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? profilePicture,
    @Default(false) bool isActive,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// Create a default user for bypassing authentication
  factory UserModel.defaultUser() {
    return UserModel(
      id: '68c20e29997752172d4bd2ee',
      name: 'Default User',
      email: 'user@example.com',
      isActive: true,
      createdAt: DateTime.now(),
      lastLoginAt: DateTime.now(),
    );
  }

  /// Create user from secure storage data
  factory UserModel.fromStorage({
    required String id,
    String? name,
    String? email,
  }) {
    return UserModel(
      id: id,
      name: name ?? 'User',
      email: email ?? 'user@example.com',
      isActive: true,
      lastLoginAt: DateTime.now(),
    );
  }
}
