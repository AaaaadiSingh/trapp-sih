// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_confirmation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewConfirmation _$ReviewConfirmationFromJson(Map<String, dynamic> json) {
  return _ReviewConfirmation.fromJson(json);
}

/// @nodoc
mixin _$ReviewConfirmation {
  PersonalInfo get personalInfo => throw _privateConstructorUsedError;
  LocationDemographics get locationDemographics =>
      throw _privateConstructorUsedError;
  bool get finalConsent => throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  bool get privacyPolicyAccepted => throw _privateConstructorUsedError;
  bool get termsOfServiceAccepted => throw _privateConstructorUsedError;
  bool get marketingConsent => throw _privateConstructorUsedError;
  DateTime get submittedAt => throw _privateConstructorUsedError;
  String? get submissionId => throw _privateConstructorUsedError;

  /// Serializes this ReviewConfirmation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewConfirmationCopyWith<ReviewConfirmation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewConfirmationCopyWith<$Res> {
  factory $ReviewConfirmationCopyWith(
    ReviewConfirmation value,
    $Res Function(ReviewConfirmation) then,
  ) = _$ReviewConfirmationCopyWithImpl<$Res, ReviewConfirmation>;
  @useResult
  $Res call({
    PersonalInfo personalInfo,
    LocationDemographics locationDemographics,
    bool finalConsent,
    bool dataProcessingConsent,
    bool privacyPolicyAccepted,
    bool termsOfServiceAccepted,
    bool marketingConsent,
    DateTime submittedAt,
    String? submissionId,
  });

  $PersonalInfoCopyWith<$Res> get personalInfo;
  $LocationDemographicsCopyWith<$Res> get locationDemographics;
}

/// @nodoc
class _$ReviewConfirmationCopyWithImpl<$Res, $Val extends ReviewConfirmation>
    implements $ReviewConfirmationCopyWith<$Res> {
  _$ReviewConfirmationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalInfo = null,
    Object? locationDemographics = null,
    Object? finalConsent = null,
    Object? dataProcessingConsent = null,
    Object? privacyPolicyAccepted = null,
    Object? termsOfServiceAccepted = null,
    Object? marketingConsent = null,
    Object? submittedAt = null,
    Object? submissionId = freezed,
  }) {
    return _then(
      _value.copyWith(
            personalInfo:
                null == personalInfo
                    ? _value.personalInfo
                    : personalInfo // ignore: cast_nullable_to_non_nullable
                        as PersonalInfo,
            locationDemographics:
                null == locationDemographics
                    ? _value.locationDemographics
                    : locationDemographics // ignore: cast_nullable_to_non_nullable
                        as LocationDemographics,
            finalConsent:
                null == finalConsent
                    ? _value.finalConsent
                    : finalConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            dataProcessingConsent:
                null == dataProcessingConsent
                    ? _value.dataProcessingConsent
                    : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            privacyPolicyAccepted:
                null == privacyPolicyAccepted
                    ? _value.privacyPolicyAccepted
                    : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
                        as bool,
            termsOfServiceAccepted:
                null == termsOfServiceAccepted
                    ? _value.termsOfServiceAccepted
                    : termsOfServiceAccepted // ignore: cast_nullable_to_non_nullable
                        as bool,
            marketingConsent:
                null == marketingConsent
                    ? _value.marketingConsent
                    : marketingConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            submittedAt:
                null == submittedAt
                    ? _value.submittedAt
                    : submittedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            submissionId:
                freezed == submissionId
                    ? _value.submissionId
                    : submissionId // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res> get personalInfo {
    return $PersonalInfoCopyWith<$Res>(_value.personalInfo, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDemographicsCopyWith<$Res> get locationDemographics {
    return $LocationDemographicsCopyWith<$Res>(_value.locationDemographics, (
      value,
    ) {
      return _then(_value.copyWith(locationDemographics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewConfirmationImplCopyWith<$Res>
    implements $ReviewConfirmationCopyWith<$Res> {
  factory _$$ReviewConfirmationImplCopyWith(
    _$ReviewConfirmationImpl value,
    $Res Function(_$ReviewConfirmationImpl) then,
  ) = __$$ReviewConfirmationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PersonalInfo personalInfo,
    LocationDemographics locationDemographics,
    bool finalConsent,
    bool dataProcessingConsent,
    bool privacyPolicyAccepted,
    bool termsOfServiceAccepted,
    bool marketingConsent,
    DateTime submittedAt,
    String? submissionId,
  });

  @override
  $PersonalInfoCopyWith<$Res> get personalInfo;
  @override
  $LocationDemographicsCopyWith<$Res> get locationDemographics;
}

/// @nodoc
class __$$ReviewConfirmationImplCopyWithImpl<$Res>
    extends _$ReviewConfirmationCopyWithImpl<$Res, _$ReviewConfirmationImpl>
    implements _$$ReviewConfirmationImplCopyWith<$Res> {
  __$$ReviewConfirmationImplCopyWithImpl(
    _$ReviewConfirmationImpl _value,
    $Res Function(_$ReviewConfirmationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalInfo = null,
    Object? locationDemographics = null,
    Object? finalConsent = null,
    Object? dataProcessingConsent = null,
    Object? privacyPolicyAccepted = null,
    Object? termsOfServiceAccepted = null,
    Object? marketingConsent = null,
    Object? submittedAt = null,
    Object? submissionId = freezed,
  }) {
    return _then(
      _$ReviewConfirmationImpl(
        personalInfo:
            null == personalInfo
                ? _value.personalInfo
                : personalInfo // ignore: cast_nullable_to_non_nullable
                    as PersonalInfo,
        locationDemographics:
            null == locationDemographics
                ? _value.locationDemographics
                : locationDemographics // ignore: cast_nullable_to_non_nullable
                    as LocationDemographics,
        finalConsent:
            null == finalConsent
                ? _value.finalConsent
                : finalConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        dataProcessingConsent:
            null == dataProcessingConsent
                ? _value.dataProcessingConsent
                : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        privacyPolicyAccepted:
            null == privacyPolicyAccepted
                ? _value.privacyPolicyAccepted
                : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
                    as bool,
        termsOfServiceAccepted:
            null == termsOfServiceAccepted
                ? _value.termsOfServiceAccepted
                : termsOfServiceAccepted // ignore: cast_nullable_to_non_nullable
                    as bool,
        marketingConsent:
            null == marketingConsent
                ? _value.marketingConsent
                : marketingConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        submittedAt:
            null == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        submissionId:
            freezed == submissionId
                ? _value.submissionId
                : submissionId // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewConfirmationImpl implements _ReviewConfirmation {
  const _$ReviewConfirmationImpl({
    required this.personalInfo,
    required this.locationDemographics,
    required this.finalConsent,
    required this.dataProcessingConsent,
    required this.privacyPolicyAccepted,
    required this.termsOfServiceAccepted,
    this.marketingConsent = false,
    required this.submittedAt,
    this.submissionId,
  });

  factory _$ReviewConfirmationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewConfirmationImplFromJson(json);

  @override
  final PersonalInfo personalInfo;
  @override
  final LocationDemographics locationDemographics;
  @override
  final bool finalConsent;
  @override
  final bool dataProcessingConsent;
  @override
  final bool privacyPolicyAccepted;
  @override
  final bool termsOfServiceAccepted;
  @override
  @JsonKey()
  final bool marketingConsent;
  @override
  final DateTime submittedAt;
  @override
  final String? submissionId;

  @override
  String toString() {
    return 'ReviewConfirmation(personalInfo: $personalInfo, locationDemographics: $locationDemographics, finalConsent: $finalConsent, dataProcessingConsent: $dataProcessingConsent, privacyPolicyAccepted: $privacyPolicyAccepted, termsOfServiceAccepted: $termsOfServiceAccepted, marketingConsent: $marketingConsent, submittedAt: $submittedAt, submissionId: $submissionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewConfirmationImpl &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.locationDemographics, locationDemographics) ||
                other.locationDemographics == locationDemographics) &&
            (identical(other.finalConsent, finalConsent) ||
                other.finalConsent == finalConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.privacyPolicyAccepted, privacyPolicyAccepted) ||
                other.privacyPolicyAccepted == privacyPolicyAccepted) &&
            (identical(other.termsOfServiceAccepted, termsOfServiceAccepted) ||
                other.termsOfServiceAccepted == termsOfServiceAccepted) &&
            (identical(other.marketingConsent, marketingConsent) ||
                other.marketingConsent == marketingConsent) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    personalInfo,
    locationDemographics,
    finalConsent,
    dataProcessingConsent,
    privacyPolicyAccepted,
    termsOfServiceAccepted,
    marketingConsent,
    submittedAt,
    submissionId,
  );

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewConfirmationImplCopyWith<_$ReviewConfirmationImpl> get copyWith =>
      __$$ReviewConfirmationImplCopyWithImpl<_$ReviewConfirmationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewConfirmationImplToJson(this);
  }
}

abstract class _ReviewConfirmation implements ReviewConfirmation {
  const factory _ReviewConfirmation({
    required final PersonalInfo personalInfo,
    required final LocationDemographics locationDemographics,
    required final bool finalConsent,
    required final bool dataProcessingConsent,
    required final bool privacyPolicyAccepted,
    required final bool termsOfServiceAccepted,
    final bool marketingConsent,
    required final DateTime submittedAt,
    final String? submissionId,
  }) = _$ReviewConfirmationImpl;

  factory _ReviewConfirmation.fromJson(Map<String, dynamic> json) =
      _$ReviewConfirmationImpl.fromJson;

  @override
  PersonalInfo get personalInfo;
  @override
  LocationDemographics get locationDemographics;
  @override
  bool get finalConsent;
  @override
  bool get dataProcessingConsent;
  @override
  bool get privacyPolicyAccepted;
  @override
  bool get termsOfServiceAccepted;
  @override
  bool get marketingConsent;
  @override
  DateTime get submittedAt;
  @override
  String? get submissionId;

  /// Create a copy of ReviewConfirmation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewConfirmationImplCopyWith<_$ReviewConfirmationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSummary _$DataSummaryFromJson(Map<String, dynamic> json) {
  return _DataSummary.fromJson(json);
}

/// @nodoc
mixin _$DataSummary {
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get ageGroup => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get employmentStatus => throw _privateConstructorUsedError;
  String get homeLocation => throw _privateConstructorUsedError;
  String get workLocation => throw _privateConstructorUsedError;
  String get privacyLevel => throw _privateConstructorUsedError;
  bool get shareLocationData => throw _privateConstructorUsedError;
  int get totalConsentItems => throw _privateConstructorUsedError;
  int get acceptedConsentItems => throw _privateConstructorUsedError;

  /// Serializes this DataSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataSummaryCopyWith<DataSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSummaryCopyWith<$Res> {
  factory $DataSummaryCopyWith(
    DataSummary value,
    $Res Function(DataSummary) then,
  ) = _$DataSummaryCopyWithImpl<$Res, DataSummary>;
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String ageGroup,
    String gender,
    String employmentStatus,
    String homeLocation,
    String workLocation,
    String privacyLevel,
    bool shareLocationData,
    int totalConsentItems,
    int acceptedConsentItems,
  });
}

/// @nodoc
class _$DataSummaryCopyWithImpl<$Res, $Val extends DataSummary>
    implements $DataSummaryCopyWith<$Res> {
  _$DataSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataSummary
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
    Object? homeLocation = null,
    Object? workLocation = null,
    Object? privacyLevel = null,
    Object? shareLocationData = null,
    Object? totalConsentItems = null,
    Object? acceptedConsentItems = null,
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
            homeLocation:
                null == homeLocation
                    ? _value.homeLocation
                    : homeLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            workLocation:
                null == workLocation
                    ? _value.workLocation
                    : workLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            privacyLevel:
                null == privacyLevel
                    ? _value.privacyLevel
                    : privacyLevel // ignore: cast_nullable_to_non_nullable
                        as String,
            shareLocationData:
                null == shareLocationData
                    ? _value.shareLocationData
                    : shareLocationData // ignore: cast_nullable_to_non_nullable
                        as bool,
            totalConsentItems:
                null == totalConsentItems
                    ? _value.totalConsentItems
                    : totalConsentItems // ignore: cast_nullable_to_non_nullable
                        as int,
            acceptedConsentItems:
                null == acceptedConsentItems
                    ? _value.acceptedConsentItems
                    : acceptedConsentItems // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DataSummaryImplCopyWith<$Res>
    implements $DataSummaryCopyWith<$Res> {
  factory _$$DataSummaryImplCopyWith(
    _$DataSummaryImpl value,
    $Res Function(_$DataSummaryImpl) then,
  ) = __$$DataSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String email,
    String phoneNumber,
    String ageGroup,
    String gender,
    String employmentStatus,
    String homeLocation,
    String workLocation,
    String privacyLevel,
    bool shareLocationData,
    int totalConsentItems,
    int acceptedConsentItems,
  });
}

/// @nodoc
class __$$DataSummaryImplCopyWithImpl<$Res>
    extends _$DataSummaryCopyWithImpl<$Res, _$DataSummaryImpl>
    implements _$$DataSummaryImplCopyWith<$Res> {
  __$$DataSummaryImplCopyWithImpl(
    _$DataSummaryImpl _value,
    $Res Function(_$DataSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DataSummary
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
    Object? homeLocation = null,
    Object? workLocation = null,
    Object? privacyLevel = null,
    Object? shareLocationData = null,
    Object? totalConsentItems = null,
    Object? acceptedConsentItems = null,
  }) {
    return _then(
      _$DataSummaryImpl(
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
        homeLocation:
            null == homeLocation
                ? _value.homeLocation
                : homeLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        workLocation:
            null == workLocation
                ? _value.workLocation
                : workLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        privacyLevel:
            null == privacyLevel
                ? _value.privacyLevel
                : privacyLevel // ignore: cast_nullable_to_non_nullable
                    as String,
        shareLocationData:
            null == shareLocationData
                ? _value.shareLocationData
                : shareLocationData // ignore: cast_nullable_to_non_nullable
                    as bool,
        totalConsentItems:
            null == totalConsentItems
                ? _value.totalConsentItems
                : totalConsentItems // ignore: cast_nullable_to_non_nullable
                    as int,
        acceptedConsentItems:
            null == acceptedConsentItems
                ? _value.acceptedConsentItems
                : acceptedConsentItems // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSummaryImpl implements _DataSummary {
  const _$DataSummaryImpl({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.ageGroup,
    required this.gender,
    required this.employmentStatus,
    required this.homeLocation,
    required this.workLocation,
    required this.privacyLevel,
    required this.shareLocationData,
    required this.totalConsentItems,
    required this.acceptedConsentItems,
  });

  factory _$DataSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSummaryImplFromJson(json);

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String ageGroup;
  @override
  final String gender;
  @override
  final String employmentStatus;
  @override
  final String homeLocation;
  @override
  final String workLocation;
  @override
  final String privacyLevel;
  @override
  final bool shareLocationData;
  @override
  final int totalConsentItems;
  @override
  final int acceptedConsentItems;

  @override
  String toString() {
    return 'DataSummary(fullName: $fullName, email: $email, phoneNumber: $phoneNumber, ageGroup: $ageGroup, gender: $gender, employmentStatus: $employmentStatus, homeLocation: $homeLocation, workLocation: $workLocation, privacyLevel: $privacyLevel, shareLocationData: $shareLocationData, totalConsentItems: $totalConsentItems, acceptedConsentItems: $acceptedConsentItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSummaryImpl &&
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
            (identical(other.homeLocation, homeLocation) ||
                other.homeLocation == homeLocation) &&
            (identical(other.workLocation, workLocation) ||
                other.workLocation == workLocation) &&
            (identical(other.privacyLevel, privacyLevel) ||
                other.privacyLevel == privacyLevel) &&
            (identical(other.shareLocationData, shareLocationData) ||
                other.shareLocationData == shareLocationData) &&
            (identical(other.totalConsentItems, totalConsentItems) ||
                other.totalConsentItems == totalConsentItems) &&
            (identical(other.acceptedConsentItems, acceptedConsentItems) ||
                other.acceptedConsentItems == acceptedConsentItems));
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
    homeLocation,
    workLocation,
    privacyLevel,
    shareLocationData,
    totalConsentItems,
    acceptedConsentItems,
  );

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSummaryImplCopyWith<_$DataSummaryImpl> get copyWith =>
      __$$DataSummaryImplCopyWithImpl<_$DataSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSummaryImplToJson(this);
  }
}

abstract class _DataSummary implements DataSummary {
  const factory _DataSummary({
    required final String fullName,
    required final String email,
    required final String phoneNumber,
    required final String ageGroup,
    required final String gender,
    required final String employmentStatus,
    required final String homeLocation,
    required final String workLocation,
    required final String privacyLevel,
    required final bool shareLocationData,
    required final int totalConsentItems,
    required final int acceptedConsentItems,
  }) = _$DataSummaryImpl;

  factory _DataSummary.fromJson(Map<String, dynamic> json) =
      _$DataSummaryImpl.fromJson;

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
  String get homeLocation;
  @override
  String get workLocation;
  @override
  String get privacyLevel;
  @override
  bool get shareLocationData;
  @override
  int get totalConsentItems;
  @override
  int get acceptedConsentItems;

  /// Create a copy of DataSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataSummaryImplCopyWith<_$DataSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
