// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isExporting => throw _privateConstructorUsedError;
  bool get isDeleting => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get successMessage =>
      throw _privateConstructorUsedError; // Privacy Settings
  bool get locationConsent => throw _privateConstructorUsedError;
  bool get backgroundLocationConsent => throw _privateConstructorUsedError;
  bool get dataSharingConsent => throw _privateConstructorUsedError;
  bool get analyticsConsent =>
      throw _privateConstructorUsedError; // Location Settings
  String get locationAccuracy =>
      throw _privateConstructorUsedError; // 'high', 'medium', 'low'
  String get dataRetentionPeriod =>
      throw _privateConstructorUsedError; // '1_month', '6_months', '1_year', '2_years'
  // Data Statistics
  int get totalTrips => throw _privateConstructorUsedError;
  int get locationPoints => throw _privateConstructorUsedError;
  int get totalDataPoints => throw _privateConstructorUsedError;
  String get dataSize => throw _privateConstructorUsedError;
  DateTime? get lastBackup => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
    SettingsState value,
    $Res Function(SettingsState) then,
  ) = _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isSaving,
    bool isExporting,
    bool isDeleting,
    String? error,
    String? successMessage,
    bool locationConsent,
    bool backgroundLocationConsent,
    bool dataSharingConsent,
    bool analyticsConsent,
    String locationAccuracy,
    String dataRetentionPeriod,
    int totalTrips,
    int locationPoints,
    int totalDataPoints,
    String dataSize,
    DateTime? lastBackup,
  });
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isExporting = null,
    Object? isDeleting = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? dataSharingConsent = null,
    Object? analyticsConsent = null,
    Object? locationAccuracy = null,
    Object? dataRetentionPeriod = null,
    Object? totalTrips = null,
    Object? locationPoints = null,
    Object? totalDataPoints = null,
    Object? dataSize = null,
    Object? lastBackup = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSaving:
                null == isSaving
                    ? _value.isSaving
                    : isSaving // ignore: cast_nullable_to_non_nullable
                        as bool,
            isExporting:
                null == isExporting
                    ? _value.isExporting
                    : isExporting // ignore: cast_nullable_to_non_nullable
                        as bool,
            isDeleting:
                null == isDeleting
                    ? _value.isDeleting
                    : isDeleting // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            successMessage:
                freezed == successMessage
                    ? _value.successMessage
                    : successMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            dataSharingConsent:
                null == dataSharingConsent
                    ? _value.dataSharingConsent
                    : dataSharingConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            analyticsConsent:
                null == analyticsConsent
                    ? _value.analyticsConsent
                    : analyticsConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            locationAccuracy:
                null == locationAccuracy
                    ? _value.locationAccuracy
                    : locationAccuracy // ignore: cast_nullable_to_non_nullable
                        as String,
            dataRetentionPeriod:
                null == dataRetentionPeriod
                    ? _value.dataRetentionPeriod
                    : dataRetentionPeriod // ignore: cast_nullable_to_non_nullable
                        as String,
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            locationPoints:
                null == locationPoints
                    ? _value.locationPoints
                    : locationPoints // ignore: cast_nullable_to_non_nullable
                        as int,
            totalDataPoints:
                null == totalDataPoints
                    ? _value.totalDataPoints
                    : totalDataPoints // ignore: cast_nullable_to_non_nullable
                        as int,
            dataSize:
                null == dataSize
                    ? _value.dataSize
                    : dataSize // ignore: cast_nullable_to_non_nullable
                        as String,
            lastBackup:
                freezed == lastBackup
                    ? _value.lastBackup
                    : lastBackup // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
    _$SettingsStateImpl value,
    $Res Function(_$SettingsStateImpl) then,
  ) = __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isSaving,
    bool isExporting,
    bool isDeleting,
    String? error,
    String? successMessage,
    bool locationConsent,
    bool backgroundLocationConsent,
    bool dataSharingConsent,
    bool analyticsConsent,
    String locationAccuracy,
    String dataRetentionPeriod,
    int totalTrips,
    int locationPoints,
    int totalDataPoints,
    String dataSize,
    DateTime? lastBackup,
  });
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
    _$SettingsStateImpl _value,
    $Res Function(_$SettingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isExporting = null,
    Object? isDeleting = null,
    Object? error = freezed,
    Object? successMessage = freezed,
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? dataSharingConsent = null,
    Object? analyticsConsent = null,
    Object? locationAccuracy = null,
    Object? dataRetentionPeriod = null,
    Object? totalTrips = null,
    Object? locationPoints = null,
    Object? totalDataPoints = null,
    Object? dataSize = null,
    Object? lastBackup = freezed,
  }) {
    return _then(
      _$SettingsStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSaving:
            null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                    as bool,
        isExporting:
            null == isExporting
                ? _value.isExporting
                : isExporting // ignore: cast_nullable_to_non_nullable
                    as bool,
        isDeleting:
            null == isDeleting
                ? _value.isDeleting
                : isDeleting // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        successMessage:
            freezed == successMessage
                ? _value.successMessage
                : successMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        dataSharingConsent:
            null == dataSharingConsent
                ? _value.dataSharingConsent
                : dataSharingConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        analyticsConsent:
            null == analyticsConsent
                ? _value.analyticsConsent
                : analyticsConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        locationAccuracy:
            null == locationAccuracy
                ? _value.locationAccuracy
                : locationAccuracy // ignore: cast_nullable_to_non_nullable
                    as String,
        dataRetentionPeriod:
            null == dataRetentionPeriod
                ? _value.dataRetentionPeriod
                : dataRetentionPeriod // ignore: cast_nullable_to_non_nullable
                    as String,
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        locationPoints:
            null == locationPoints
                ? _value.locationPoints
                : locationPoints // ignore: cast_nullable_to_non_nullable
                    as int,
        totalDataPoints:
            null == totalDataPoints
                ? _value.totalDataPoints
                : totalDataPoints // ignore: cast_nullable_to_non_nullable
                    as int,
        dataSize:
            null == dataSize
                ? _value.dataSize
                : dataSize // ignore: cast_nullable_to_non_nullable
                    as String,
        lastBackup:
            freezed == lastBackup
                ? _value.lastBackup
                : lastBackup // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({
    this.isLoading = false,
    this.isSaving = false,
    this.isExporting = false,
    this.isDeleting = false,
    this.error,
    this.successMessage,
    this.locationConsent = true,
    this.backgroundLocationConsent = false,
    this.dataSharingConsent = false,
    this.analyticsConsent = false,
    this.locationAccuracy = 'high',
    this.dataRetentionPeriod = '1_year',
    this.totalTrips = 0,
    this.locationPoints = 0,
    this.totalDataPoints = 0,
    this.dataSize = '0 MB',
    this.lastBackup,
  });

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool isExporting;
  @override
  @JsonKey()
  final bool isDeleting;
  @override
  final String? error;
  @override
  final String? successMessage;
  // Privacy Settings
  @override
  @JsonKey()
  final bool locationConsent;
  @override
  @JsonKey()
  final bool backgroundLocationConsent;
  @override
  @JsonKey()
  final bool dataSharingConsent;
  @override
  @JsonKey()
  final bool analyticsConsent;
  // Location Settings
  @override
  @JsonKey()
  final String locationAccuracy;
  // 'high', 'medium', 'low'
  @override
  @JsonKey()
  final String dataRetentionPeriod;
  // '1_month', '6_months', '1_year', '2_years'
  // Data Statistics
  @override
  @JsonKey()
  final int totalTrips;
  @override
  @JsonKey()
  final int locationPoints;
  @override
  @JsonKey()
  final int totalDataPoints;
  @override
  @JsonKey()
  final String dataSize;
  @override
  final DateTime? lastBackup;

  @override
  String toString() {
    return 'SettingsState(isLoading: $isLoading, isSaving: $isSaving, isExporting: $isExporting, isDeleting: $isDeleting, error: $error, successMessage: $successMessage, locationConsent: $locationConsent, backgroundLocationConsent: $backgroundLocationConsent, dataSharingConsent: $dataSharingConsent, analyticsConsent: $analyticsConsent, locationAccuracy: $locationAccuracy, dataRetentionPeriod: $dataRetentionPeriod, totalTrips: $totalTrips, locationPoints: $locationPoints, totalDataPoints: $totalDataPoints, dataSize: $dataSize, lastBackup: $lastBackup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isExporting, isExporting) ||
                other.isExporting == isExporting) &&
            (identical(other.isDeleting, isDeleting) ||
                other.isDeleting == isDeleting) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.locationConsent, locationConsent) ||
                other.locationConsent == locationConsent) &&
            (identical(
                  other.backgroundLocationConsent,
                  backgroundLocationConsent,
                ) ||
                other.backgroundLocationConsent == backgroundLocationConsent) &&
            (identical(other.dataSharingConsent, dataSharingConsent) ||
                other.dataSharingConsent == dataSharingConsent) &&
            (identical(other.analyticsConsent, analyticsConsent) ||
                other.analyticsConsent == analyticsConsent) &&
            (identical(other.locationAccuracy, locationAccuracy) ||
                other.locationAccuracy == locationAccuracy) &&
            (identical(other.dataRetentionPeriod, dataRetentionPeriod) ||
                other.dataRetentionPeriod == dataRetentionPeriod) &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.locationPoints, locationPoints) ||
                other.locationPoints == locationPoints) &&
            (identical(other.totalDataPoints, totalDataPoints) ||
                other.totalDataPoints == totalDataPoints) &&
            (identical(other.dataSize, dataSize) ||
                other.dataSize == dataSize) &&
            (identical(other.lastBackup, lastBackup) ||
                other.lastBackup == lastBackup));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSaving,
    isExporting,
    isDeleting,
    error,
    successMessage,
    locationConsent,
    backgroundLocationConsent,
    dataSharingConsent,
    analyticsConsent,
    locationAccuracy,
    dataRetentionPeriod,
    totalTrips,
    locationPoints,
    totalDataPoints,
    dataSize,
    lastBackup,
  );

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({
    final bool isLoading,
    final bool isSaving,
    final bool isExporting,
    final bool isDeleting,
    final String? error,
    final String? successMessage,
    final bool locationConsent,
    final bool backgroundLocationConsent,
    final bool dataSharingConsent,
    final bool analyticsConsent,
    final String locationAccuracy,
    final String dataRetentionPeriod,
    final int totalTrips,
    final int locationPoints,
    final int totalDataPoints,
    final String dataSize,
    final DateTime? lastBackup,
  }) = _$SettingsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get isExporting;
  @override
  bool get isDeleting;
  @override
  String? get error;
  @override
  String? get successMessage; // Privacy Settings
  @override
  bool get locationConsent;
  @override
  bool get backgroundLocationConsent;
  @override
  bool get dataSharingConsent;
  @override
  bool get analyticsConsent; // Location Settings
  @override
  String get locationAccuracy; // 'high', 'medium', 'low'
  @override
  String get dataRetentionPeriod; // '1_month', '6_months', '1_year', '2_years'
  // Data Statistics
  @override
  int get totalTrips;
  @override
  int get locationPoints;
  @override
  int get totalDataPoints;
  @override
  String get dataSize;
  @override
  DateTime? get lastBackup;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
