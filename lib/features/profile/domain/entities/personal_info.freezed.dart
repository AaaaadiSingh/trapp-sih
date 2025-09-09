// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfo {
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get ageGroup => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get employmentStatus => throw _privateConstructorUsedError;
  String get annualIncome => throw _privateConstructorUsedError;
  bool get privacyConsent => throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  bool get locationConsent => throw _privateConstructorUsedError;
  bool get backgroundLocationConsent => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PersonalInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
    PersonalInfo value,
    $Res Function(PersonalInfo) then,
  ) = _$PersonalInfoCopyWithImpl<$Res, PersonalInfo>;
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String ageGroup,
    String gender,
    String employmentStatus,
    String annualIncome,
    bool privacyConsent,
    bool dataProcessingConsent,
    bool locationConsent,
    bool backgroundLocationConsent,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res, $Val extends PersonalInfo>
    implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? ageGroup = null,
    Object? gender = null,
    Object? employmentStatus = null,
    Object? annualIncome = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullName:
                null == fullName
                    ? _value.fullName
                    : fullName // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            ageGroup:
                null == ageGroup
                    ? _value.ageGroup
                    : ageGroup // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            employmentStatus:
                null == employmentStatus
                    ? _value.employmentStatus
                    : employmentStatus // ignore: cast_nullable_to_non_nullable
                        as String,
            annualIncome:
                null == annualIncome
                    ? _value.annualIncome
                    : annualIncome // ignore: cast_nullable_to_non_nullable
                        as String,
            privacyConsent:
                null == privacyConsent
                    ? _value.privacyConsent
                    : privacyConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            dataProcessingConsent:
                null == dataProcessingConsent
                    ? _value.dataProcessingConsent
                    : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            locationConsent:
                null == locationConsent
                    ? _value.locationConsent
                    : locationConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            backgroundLocationConsent:
                null == backgroundLocationConsent
                    ? _value.backgroundLocationConsent
                    : backgroundLocationConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PersonalInfoImplCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$$PersonalInfoImplCopyWith(
    _$PersonalInfoImpl value,
    $Res Function(_$PersonalInfoImpl) then,
  ) = __$$PersonalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String ageGroup,
    String gender,
    String employmentStatus,
    String annualIncome,
    bool privacyConsent,
    bool dataProcessingConsent,
    bool locationConsent,
    bool backgroundLocationConsent,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$PersonalInfoImplCopyWithImpl<$Res>
    extends _$PersonalInfoCopyWithImpl<$Res, _$PersonalInfoImpl>
    implements _$$PersonalInfoImplCopyWith<$Res> {
  __$$PersonalInfoImplCopyWithImpl(
    _$PersonalInfoImpl _value,
    $Res Function(_$PersonalInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? ageGroup = null,
    Object? gender = null,
    Object? employmentStatus = null,
    Object? annualIncome = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$PersonalInfoImpl(
        fullName:
            null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        ageGroup:
            null == ageGroup
                ? _value.ageGroup
                : ageGroup // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        employmentStatus:
            null == employmentStatus
                ? _value.employmentStatus
                : employmentStatus // ignore: cast_nullable_to_non_nullable
                    as String,
        annualIncome:
            null == annualIncome
                ? _value.annualIncome
                : annualIncome // ignore: cast_nullable_to_non_nullable
                    as String,
        privacyConsent:
            null == privacyConsent
                ? _value.privacyConsent
                : privacyConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        dataProcessingConsent:
            null == dataProcessingConsent
                ? _value.dataProcessingConsent
                : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        locationConsent:
            null == locationConsent
                ? _value.locationConsent
                : locationConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        backgroundLocationConsent:
            null == backgroundLocationConsent
                ? _value.backgroundLocationConsent
                : backgroundLocationConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalInfoImpl implements _PersonalInfo {
  const _$PersonalInfoImpl({
    this.fullName = '',
    this.email = '',
    this.phoneNumber = '',
    this.ageGroup = '',
    this.gender = '',
    this.employmentStatus = '',
    this.annualIncome = '',
    this.privacyConsent = false,
    this.dataProcessingConsent = false,
    this.locationConsent = false,
    this.backgroundLocationConsent = false,
    this.createdAt,
    this.updatedAt,
  });

  factory _$PersonalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalInfoImplFromJson(json);

  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String ageGroup;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String employmentStatus;
  @override
  @JsonKey()
  final String annualIncome;
  @override
  @JsonKey()
  final bool privacyConsent;
  @override
  @JsonKey()
  final bool dataProcessingConsent;
  @override
  @JsonKey()
  final bool locationConsent;
  @override
  @JsonKey()
  final bool backgroundLocationConsent;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PersonalInfo(fullName: $fullName, email: $email, phoneNumber: $phoneNumber, ageGroup: $ageGroup, gender: $gender, employmentStatus: $employmentStatus, annualIncome: $annualIncome, privacyConsent: $privacyConsent, dataProcessingConsent: $dataProcessingConsent, locationConsent: $locationConsent, backgroundLocationConsent: $backgroundLocationConsent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.employmentStatus, employmentStatus) ||
                other.employmentStatus == employmentStatus) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.privacyConsent, privacyConsent) ||
                other.privacyConsent == privacyConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.locationConsent, locationConsent) ||
                other.locationConsent == locationConsent) &&
            (identical(
                  other.backgroundLocationConsent,
                  backgroundLocationConsent,
                ) ||
                other.backgroundLocationConsent == backgroundLocationConsent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fullName,
    email,
    phoneNumber,
    ageGroup,
    gender,
    employmentStatus,
    annualIncome,
    privacyConsent,
    dataProcessingConsent,
    locationConsent,
    backgroundLocationConsent,
    createdAt,
    updatedAt,
  );

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      __$$PersonalInfoImplCopyWithImpl<_$PersonalInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalInfoImplToJson(this);
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  const factory _PersonalInfo({
    final String fullName,
    final String email,
    final String phoneNumber,
    final String ageGroup,
    final String gender,
    final String employmentStatus,
    final String annualIncome,
    final bool privacyConsent,
    final bool dataProcessingConsent,
    final bool locationConsent,
    final bool backgroundLocationConsent,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$PersonalInfoImpl;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$PersonalInfoImpl.fromJson;

  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get ageGroup;
  @override
  String get gender;
  @override
  String get employmentStatus;
  @override
  String get annualIncome;
  @override
  bool get privacyConsent;
  @override
  bool get dataProcessingConsent;
  @override
  bool get locationConsent;
  @override
  bool get backgroundLocationConsent;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of PersonalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalInfoImplCopyWith<_$PersonalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
