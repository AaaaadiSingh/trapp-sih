// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TravelPreferences _$TravelPreferencesFromJson(Map<String, dynamic> json) {
  return _TravelPreferences.fromJson(json);
}

/// @nodoc
mixin _$TravelPreferences {
  List<String> get transportationModes => throw _privateConstructorUsedError;
  String get travelFrequency => throw _privateConstructorUsedError;
  bool get privacyConsent => throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TravelPreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelPreferencesCopyWith<TravelPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPreferencesCopyWith<$Res> {
  factory $TravelPreferencesCopyWith(
    TravelPreferences value,
    $Res Function(TravelPreferences) then,
  ) = _$TravelPreferencesCopyWithImpl<$Res, TravelPreferences>;
  @useResult
  $Res call({
    List<String> transportationModes,
    String travelFrequency,
    bool privacyConsent,
    bool dataProcessingConsent,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$TravelPreferencesCopyWithImpl<$Res, $Val extends TravelPreferences>
    implements $TravelPreferencesCopyWith<$Res> {
  _$TravelPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportationModes = null,
    Object? travelFrequency = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            transportationModes:
                null == transportationModes
                    ? _value.transportationModes
                    : transportationModes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            travelFrequency:
                null == travelFrequency
                    ? _value.travelFrequency
                    : travelFrequency // ignore: cast_nullable_to_non_nullable
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
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TravelPreferencesImplCopyWith<$Res>
    implements $TravelPreferencesCopyWith<$Res> {
  factory _$$TravelPreferencesImplCopyWith(
    _$TravelPreferencesImpl value,
    $Res Function(_$TravelPreferencesImpl) then,
  ) = __$$TravelPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> transportationModes,
    String travelFrequency,
    bool privacyConsent,
    bool dataProcessingConsent,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$TravelPreferencesImplCopyWithImpl<$Res>
    extends _$TravelPreferencesCopyWithImpl<$Res, _$TravelPreferencesImpl>
    implements _$$TravelPreferencesImplCopyWith<$Res> {
  __$$TravelPreferencesImplCopyWithImpl(
    _$TravelPreferencesImpl _value,
    $Res Function(_$TravelPreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportationModes = null,
    Object? travelFrequency = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TravelPreferencesImpl(
        transportationModes:
            null == transportationModes
                ? _value._transportationModes
                : transportationModes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        travelFrequency:
            null == travelFrequency
                ? _value.travelFrequency
                : travelFrequency // ignore: cast_nullable_to_non_nullable
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
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelPreferencesImpl implements _TravelPreferences {
  const _$TravelPreferencesImpl({
    required final List<String> transportationModes,
    required this.travelFrequency,
    required this.privacyConsent,
    this.dataProcessingConsent = false,
    required this.createdAt,
    required this.updatedAt,
  }) : _transportationModes = transportationModes;

  factory _$TravelPreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelPreferencesImplFromJson(json);

  final List<String> _transportationModes;
  @override
  List<String> get transportationModes {
    if (_transportationModes is EqualUnmodifiableListView)
      return _transportationModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportationModes);
  }

  @override
  final String travelFrequency;
  @override
  final bool privacyConsent;
  @override
  @JsonKey()
  final bool dataProcessingConsent;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TravelPreferences(transportationModes: $transportationModes, travelFrequency: $travelFrequency, privacyConsent: $privacyConsent, dataProcessingConsent: $dataProcessingConsent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPreferencesImpl &&
            const DeepCollectionEquality().equals(
              other._transportationModes,
              _transportationModes,
            ) &&
            (identical(other.travelFrequency, travelFrequency) ||
                other.travelFrequency == travelFrequency) &&
            (identical(other.privacyConsent, privacyConsent) ||
                other.privacyConsent == privacyConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_transportationModes),
    travelFrequency,
    privacyConsent,
    dataProcessingConsent,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TravelPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPreferencesImplCopyWith<_$TravelPreferencesImpl> get copyWith =>
      __$$TravelPreferencesImplCopyWithImpl<_$TravelPreferencesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPreferencesImplToJson(this);
  }
}

abstract class _TravelPreferences implements TravelPreferences {
  const factory _TravelPreferences({
    required final List<String> transportationModes,
    required final String travelFrequency,
    required final bool privacyConsent,
    final bool dataProcessingConsent,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$TravelPreferencesImpl;

  factory _TravelPreferences.fromJson(Map<String, dynamic> json) =
      _$TravelPreferencesImpl.fromJson;

  @override
  List<String> get transportationModes;
  @override
  String get travelFrequency;
  @override
  bool get privacyConsent;
  @override
  bool get dataProcessingConsent;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TravelPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelPreferencesImplCopyWith<_$TravelPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
