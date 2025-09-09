// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PrivacySettingsModel _$PrivacySettingsModelFromJson(Map<String, dynamic> json) {
  return _PrivacySettingsModel.fromJson(json);
}

/// @nodoc
mixin _$PrivacySettingsModel {
  bool get locationConsent => throw _privateConstructorUsedError;
  bool get backgroundLocationConsent => throw _privateConstructorUsedError;
  bool get dataSharingConsent => throw _privateConstructorUsedError;
  bool get analyticsConsent => throw _privateConstructorUsedError;
  LocationAccuracy get locationAccuracy => throw _privateConstructorUsedError;
  DataRetentionPeriod get dataRetentionPeriod =>
      throw _privateConstructorUsedError;
  int get totalTrips => throw _privateConstructorUsedError;
  int get totalDataPoints => throw _privateConstructorUsedError;
  String get dataSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_backup')
  DateTime? get lastBackup => throw _privateConstructorUsedError;

  /// Serializes this PrivacySettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivacySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacySettingsModelCopyWith<PrivacySettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingsModelCopyWith<$Res> {
  factory $PrivacySettingsModelCopyWith(
    PrivacySettingsModel value,
    $Res Function(PrivacySettingsModel) then,
  ) = _$PrivacySettingsModelCopyWithImpl<$Res, PrivacySettingsModel>;
  @useResult
  $Res call({
    bool locationConsent,
    bool backgroundLocationConsent,
    bool dataSharingConsent,
    bool analyticsConsent,
    LocationAccuracy locationAccuracy,
    DataRetentionPeriod dataRetentionPeriod,
    int totalTrips,
    int totalDataPoints,
    String dataSize,
    @JsonKey(name: 'last_backup') DateTime? lastBackup,
  });
}

/// @nodoc
class _$PrivacySettingsModelCopyWithImpl<
  $Res,
  $Val extends PrivacySettingsModel
>
    implements $PrivacySettingsModelCopyWith<$Res> {
  _$PrivacySettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? dataSharingConsent = null,
    Object? analyticsConsent = null,
    Object? locationAccuracy = null,
    Object? dataRetentionPeriod = null,
    Object? totalTrips = null,
    Object? totalDataPoints = null,
    Object? dataSize = null,
    Object? lastBackup = freezed,
  }) {
    return _then(
      _value.copyWith(
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
                        as LocationAccuracy,
            dataRetentionPeriod:
                null == dataRetentionPeriod
                    ? _value.dataRetentionPeriod
                    : dataRetentionPeriod // ignore: cast_nullable_to_non_nullable
                        as DataRetentionPeriod,
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PrivacySettingsModelImplCopyWith<$Res>
    implements $PrivacySettingsModelCopyWith<$Res> {
  factory _$$PrivacySettingsModelImplCopyWith(
    _$PrivacySettingsModelImpl value,
    $Res Function(_$PrivacySettingsModelImpl) then,
  ) = __$$PrivacySettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool locationConsent,
    bool backgroundLocationConsent,
    bool dataSharingConsent,
    bool analyticsConsent,
    LocationAccuracy locationAccuracy,
    DataRetentionPeriod dataRetentionPeriod,
    int totalTrips,
    int totalDataPoints,
    String dataSize,
    @JsonKey(name: 'last_backup') DateTime? lastBackup,
  });
}

/// @nodoc
class __$$PrivacySettingsModelImplCopyWithImpl<$Res>
    extends _$PrivacySettingsModelCopyWithImpl<$Res, _$PrivacySettingsModelImpl>
    implements _$$PrivacySettingsModelImplCopyWith<$Res> {
  __$$PrivacySettingsModelImplCopyWithImpl(
    _$PrivacySettingsModelImpl _value,
    $Res Function(_$PrivacySettingsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PrivacySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationConsent = null,
    Object? backgroundLocationConsent = null,
    Object? dataSharingConsent = null,
    Object? analyticsConsent = null,
    Object? locationAccuracy = null,
    Object? dataRetentionPeriod = null,
    Object? totalTrips = null,
    Object? totalDataPoints = null,
    Object? dataSize = null,
    Object? lastBackup = freezed,
  }) {
    return _then(
      _$PrivacySettingsModelImpl(
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
                    as LocationAccuracy,
        dataRetentionPeriod:
            null == dataRetentionPeriod
                ? _value.dataRetentionPeriod
                : dataRetentionPeriod // ignore: cast_nullable_to_non_nullable
                    as DataRetentionPeriod,
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$PrivacySettingsModelImpl implements _PrivacySettingsModel {
  const _$PrivacySettingsModelImpl({
    required this.locationConsent,
    required this.backgroundLocationConsent,
    required this.dataSharingConsent,
    required this.analyticsConsent,
    required this.locationAccuracy,
    required this.dataRetentionPeriod,
    this.totalTrips = 0,
    this.totalDataPoints = 0,
    this.dataSize = '0 MB',
    @JsonKey(name: 'last_backup') this.lastBackup,
  });

  factory _$PrivacySettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivacySettingsModelImplFromJson(json);

  @override
  final bool locationConsent;
  @override
  final bool backgroundLocationConsent;
  @override
  final bool dataSharingConsent;
  @override
  final bool analyticsConsent;
  @override
  final LocationAccuracy locationAccuracy;
  @override
  final DataRetentionPeriod dataRetentionPeriod;
  @override
  @JsonKey()
  final int totalTrips;
  @override
  @JsonKey()
  final int totalDataPoints;
  @override
  @JsonKey()
  final String dataSize;
  @override
  @JsonKey(name: 'last_backup')
  final DateTime? lastBackup;

  @override
  String toString() {
    return 'PrivacySettingsModel(locationConsent: $locationConsent, backgroundLocationConsent: $backgroundLocationConsent, dataSharingConsent: $dataSharingConsent, analyticsConsent: $analyticsConsent, locationAccuracy: $locationAccuracy, dataRetentionPeriod: $dataRetentionPeriod, totalTrips: $totalTrips, totalDataPoints: $totalDataPoints, dataSize: $dataSize, lastBackup: $lastBackup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacySettingsModelImpl &&
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
            (identical(other.totalDataPoints, totalDataPoints) ||
                other.totalDataPoints == totalDataPoints) &&
            (identical(other.dataSize, dataSize) ||
                other.dataSize == dataSize) &&
            (identical(other.lastBackup, lastBackup) ||
                other.lastBackup == lastBackup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    locationConsent,
    backgroundLocationConsent,
    dataSharingConsent,
    analyticsConsent,
    locationAccuracy,
    dataRetentionPeriod,
    totalTrips,
    totalDataPoints,
    dataSize,
    lastBackup,
  );

  /// Create a copy of PrivacySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacySettingsModelImplCopyWith<_$PrivacySettingsModelImpl>
  get copyWith =>
      __$$PrivacySettingsModelImplCopyWithImpl<_$PrivacySettingsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivacySettingsModelImplToJson(this);
  }
}

abstract class _PrivacySettingsModel implements PrivacySettingsModel {
  const factory _PrivacySettingsModel({
    required final bool locationConsent,
    required final bool backgroundLocationConsent,
    required final bool dataSharingConsent,
    required final bool analyticsConsent,
    required final LocationAccuracy locationAccuracy,
    required final DataRetentionPeriod dataRetentionPeriod,
    final int totalTrips,
    final int totalDataPoints,
    final String dataSize,
    @JsonKey(name: 'last_backup') final DateTime? lastBackup,
  }) = _$PrivacySettingsModelImpl;

  factory _PrivacySettingsModel.fromJson(Map<String, dynamic> json) =
      _$PrivacySettingsModelImpl.fromJson;

  @override
  bool get locationConsent;
  @override
  bool get backgroundLocationConsent;
  @override
  bool get dataSharingConsent;
  @override
  bool get analyticsConsent;
  @override
  LocationAccuracy get locationAccuracy;
  @override
  DataRetentionPeriod get dataRetentionPeriod;
  @override
  int get totalTrips;
  @override
  int get totalDataPoints;
  @override
  String get dataSize;
  @override
  @JsonKey(name: 'last_backup')
  DateTime? get lastBackup;

  /// Create a copy of PrivacySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacySettingsModelImplCopyWith<_$PrivacySettingsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
