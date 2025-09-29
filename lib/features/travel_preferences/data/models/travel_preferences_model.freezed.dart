// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TravelPreferencesModel _$TravelPreferencesModelFromJson(
  Map<String, dynamic> json,
) {
  return _TravelPreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$TravelPreferencesModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<String> get preferredTransportModes =>
      throw _privateConstructorUsedError;
  bool get ecoFriendlyMode => throw _privateConstructorUsedError;
  double get maxWalkingDistance => throw _privateConstructorUsedError;
  bool get avoidTolls => throw _privateConstructorUsedError;
  bool get avoidHighways => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customPreferences =>
      throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TravelPreferencesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelPreferencesModelCopyWith<TravelPreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPreferencesModelCopyWith<$Res> {
  factory $TravelPreferencesModelCopyWith(
    TravelPreferencesModel value,
    $Res Function(TravelPreferencesModel) then,
  ) = _$TravelPreferencesModelCopyWithImpl<$Res, TravelPreferencesModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$TravelPreferencesModelCopyWithImpl<
  $Res,
  $Val extends TravelPreferencesModel
>
    implements $TravelPreferencesModelCopyWith<$Res> {
  _$TravelPreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            preferredTransportModes:
                null == preferredTransportModes
                    ? _value.preferredTransportModes
                    : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            ecoFriendlyMode:
                null == ecoFriendlyMode
                    ? _value.ecoFriendlyMode
                    : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                        as bool,
            maxWalkingDistance:
                null == maxWalkingDistance
                    ? _value.maxWalkingDistance
                    : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            avoidTolls:
                null == avoidTolls
                    ? _value.avoidTolls
                    : avoidTolls // ignore: cast_nullable_to_non_nullable
                        as bool,
            avoidHighways:
                null == avoidHighways
                    ? _value.avoidHighways
                    : avoidHighways // ignore: cast_nullable_to_non_nullable
                        as bool,
            customPreferences:
                freezed == customPreferences
                    ? _value.customPreferences
                    : customPreferences // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
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
abstract class _$$TravelPreferencesModelImplCopyWith<$Res>
    implements $TravelPreferencesModelCopyWith<$Res> {
  factory _$$TravelPreferencesModelImplCopyWith(
    _$TravelPreferencesModelImpl value,
    $Res Function(_$TravelPreferencesModelImpl) then,
  ) = __$$TravelPreferencesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$TravelPreferencesModelImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesModelCopyWithImpl<$Res, _$TravelPreferencesModelImpl>
    implements _$$TravelPreferencesModelImplCopyWith<$Res> {
  __$$TravelPreferencesModelImplCopyWithImpl(
    _$TravelPreferencesModelImpl _value,
    $Res Function(_$TravelPreferencesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TravelPreferencesModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        preferredTransportModes:
            null == preferredTransportModes
                ? _value._preferredTransportModes
                : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        ecoFriendlyMode:
            null == ecoFriendlyMode
                ? _value.ecoFriendlyMode
                : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                    as bool,
        maxWalkingDistance:
            null == maxWalkingDistance
                ? _value.maxWalkingDistance
                : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        avoidTolls:
            null == avoidTolls
                ? _value.avoidTolls
                : avoidTolls // ignore: cast_nullable_to_non_nullable
                    as bool,
        avoidHighways:
            null == avoidHighways
                ? _value.avoidHighways
                : avoidHighways // ignore: cast_nullable_to_non_nullable
                    as bool,
        customPreferences:
            freezed == customPreferences
                ? _value._customPreferences
                : customPreferences // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
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
class _$TravelPreferencesModelImpl implements _TravelPreferencesModel {
  const _$TravelPreferencesModelImpl({
    required this.id,
    required this.userId,
    required final List<String> preferredTransportModes,
    required this.ecoFriendlyMode,
    required this.maxWalkingDistance,
    required this.avoidTolls,
    required this.avoidHighways,
    final Map<String, dynamic>? customPreferences,
    this.updatedAt,
  }) : _preferredTransportModes = preferredTransportModes,
       _customPreferences = customPreferences;

  factory _$TravelPreferencesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelPreferencesModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  final List<String> _preferredTransportModes;
  @override
  List<String> get preferredTransportModes {
    if (_preferredTransportModes is EqualUnmodifiableListView)
      return _preferredTransportModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTransportModes);
  }

  @override
  final bool ecoFriendlyMode;
  @override
  final double maxWalkingDistance;
  @override
  final bool avoidTolls;
  @override
  final bool avoidHighways;
  final Map<String, dynamic>? _customPreferences;
  @override
  Map<String, dynamic>? get customPreferences {
    final value = _customPreferences;
    if (value == null) return null;
    if (_customPreferences is EqualUnmodifiableMapView)
      return _customPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TravelPreferencesModel(id: $id, userId: $userId, preferredTransportModes: $preferredTransportModes, ecoFriendlyMode: $ecoFriendlyMode, maxWalkingDistance: $maxWalkingDistance, avoidTolls: $avoidTolls, avoidHighways: $avoidHighways, customPreferences: $customPreferences, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPreferencesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._preferredTransportModes,
              _preferredTransportModes,
            ) &&
            (identical(other.ecoFriendlyMode, ecoFriendlyMode) ||
                other.ecoFriendlyMode == ecoFriendlyMode) &&
            (identical(other.maxWalkingDistance, maxWalkingDistance) ||
                other.maxWalkingDistance == maxWalkingDistance) &&
            (identical(other.avoidTolls, avoidTolls) ||
                other.avoidTolls == avoidTolls) &&
            (identical(other.avoidHighways, avoidHighways) ||
                other.avoidHighways == avoidHighways) &&
            const DeepCollectionEquality().equals(
              other._customPreferences,
              _customPreferences,
            ) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    const DeepCollectionEquality().hash(_preferredTransportModes),
    ecoFriendlyMode,
    maxWalkingDistance,
    avoidTolls,
    avoidHighways,
    const DeepCollectionEquality().hash(_customPreferences),
    updatedAt,
  );

  /// Create a copy of TravelPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPreferencesModelImplCopyWith<_$TravelPreferencesModelImpl>
  get copyWith =>
      __$$TravelPreferencesModelImplCopyWithImpl<_$TravelPreferencesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPreferencesModelImplToJson(this);
  }
}

abstract class _TravelPreferencesModel implements TravelPreferencesModel {
  const factory _TravelPreferencesModel({
    required final String id,
    required final String userId,
    required final List<String> preferredTransportModes,
    required final bool ecoFriendlyMode,
    required final double maxWalkingDistance,
    required final bool avoidTolls,
    required final bool avoidHighways,
    final Map<String, dynamic>? customPreferences,
    final DateTime? updatedAt,
  }) = _$TravelPreferencesModelImpl;

  factory _TravelPreferencesModel.fromJson(Map<String, dynamic> json) =
      _$TravelPreferencesModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  List<String> get preferredTransportModes;
  @override
  bool get ecoFriendlyMode;
  @override
  double get maxWalkingDistance;
  @override
  bool get avoidTolls;
  @override
  bool get avoidHighways;
  @override
  Map<String, dynamic>? get customPreferences;
  @override
  DateTime? get updatedAt;

  /// Create a copy of TravelPreferencesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelPreferencesModelImplCopyWith<_$TravelPreferencesModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UpdateTravelPreferencesRequest _$UpdateTravelPreferencesRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateTravelPreferencesRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateTravelPreferencesRequest {
  List<String> get preferredTransportModes =>
      throw _privateConstructorUsedError;
  bool get ecoFriendlyMode => throw _privateConstructorUsedError;
  double get maxWalkingDistance => throw _privateConstructorUsedError;
  bool get avoidTolls => throw _privateConstructorUsedError;
  bool get avoidHighways => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customPreferences =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateTravelPreferencesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTravelPreferencesRequestCopyWith<UpdateTravelPreferencesRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTravelPreferencesRequestCopyWith<$Res> {
  factory $UpdateTravelPreferencesRequestCopyWith(
    UpdateTravelPreferencesRequest value,
    $Res Function(UpdateTravelPreferencesRequest) then,
  ) =
      _$UpdateTravelPreferencesRequestCopyWithImpl<
        $Res,
        UpdateTravelPreferencesRequest
      >;
  @useResult
  $Res call({
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  });
}

/// @nodoc
class _$UpdateTravelPreferencesRequestCopyWithImpl<
  $Res,
  $Val extends UpdateTravelPreferencesRequest
>
    implements $UpdateTravelPreferencesRequestCopyWith<$Res> {
  _$UpdateTravelPreferencesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
  }) {
    return _then(
      _value.copyWith(
            preferredTransportModes:
                null == preferredTransportModes
                    ? _value.preferredTransportModes
                    : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            ecoFriendlyMode:
                null == ecoFriendlyMode
                    ? _value.ecoFriendlyMode
                    : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                        as bool,
            maxWalkingDistance:
                null == maxWalkingDistance
                    ? _value.maxWalkingDistance
                    : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            avoidTolls:
                null == avoidTolls
                    ? _value.avoidTolls
                    : avoidTolls // ignore: cast_nullable_to_non_nullable
                        as bool,
            avoidHighways:
                null == avoidHighways
                    ? _value.avoidHighways
                    : avoidHighways // ignore: cast_nullable_to_non_nullable
                        as bool,
            customPreferences:
                freezed == customPreferences
                    ? _value.customPreferences
                    : customPreferences // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTravelPreferencesRequestImplCopyWith<$Res>
    implements $UpdateTravelPreferencesRequestCopyWith<$Res> {
  factory _$$UpdateTravelPreferencesRequestImplCopyWith(
    _$UpdateTravelPreferencesRequestImpl value,
    $Res Function(_$UpdateTravelPreferencesRequestImpl) then,
  ) = __$$UpdateTravelPreferencesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  });
}

/// @nodoc
class __$$UpdateTravelPreferencesRequestImplCopyWithImpl<$Res>
    extends
        _$UpdateTravelPreferencesRequestCopyWithImpl<
          $Res,
          _$UpdateTravelPreferencesRequestImpl
        >
    implements _$$UpdateTravelPreferencesRequestImplCopyWith<$Res> {
  __$$UpdateTravelPreferencesRequestImplCopyWithImpl(
    _$UpdateTravelPreferencesRequestImpl _value,
    $Res Function(_$UpdateTravelPreferencesRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
  }) {
    return _then(
      _$UpdateTravelPreferencesRequestImpl(
        preferredTransportModes:
            null == preferredTransportModes
                ? _value._preferredTransportModes
                : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        ecoFriendlyMode:
            null == ecoFriendlyMode
                ? _value.ecoFriendlyMode
                : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                    as bool,
        maxWalkingDistance:
            null == maxWalkingDistance
                ? _value.maxWalkingDistance
                : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        avoidTolls:
            null == avoidTolls
                ? _value.avoidTolls
                : avoidTolls // ignore: cast_nullable_to_non_nullable
                    as bool,
        avoidHighways:
            null == avoidHighways
                ? _value.avoidHighways
                : avoidHighways // ignore: cast_nullable_to_non_nullable
                    as bool,
        customPreferences:
            freezed == customPreferences
                ? _value._customPreferences
                : customPreferences // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTravelPreferencesRequestImpl
    implements _UpdateTravelPreferencesRequest {
  const _$UpdateTravelPreferencesRequestImpl({
    required final List<String> preferredTransportModes,
    required this.ecoFriendlyMode,
    required this.maxWalkingDistance,
    required this.avoidTolls,
    required this.avoidHighways,
    final Map<String, dynamic>? customPreferences,
  }) : _preferredTransportModes = preferredTransportModes,
       _customPreferences = customPreferences;

  factory _$UpdateTravelPreferencesRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateTravelPreferencesRequestImplFromJson(json);

  final List<String> _preferredTransportModes;
  @override
  List<String> get preferredTransportModes {
    if (_preferredTransportModes is EqualUnmodifiableListView)
      return _preferredTransportModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTransportModes);
  }

  @override
  final bool ecoFriendlyMode;
  @override
  final double maxWalkingDistance;
  @override
  final bool avoidTolls;
  @override
  final bool avoidHighways;
  final Map<String, dynamic>? _customPreferences;
  @override
  Map<String, dynamic>? get customPreferences {
    final value = _customPreferences;
    if (value == null) return null;
    if (_customPreferences is EqualUnmodifiableMapView)
      return _customPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateTravelPreferencesRequest(preferredTransportModes: $preferredTransportModes, ecoFriendlyMode: $ecoFriendlyMode, maxWalkingDistance: $maxWalkingDistance, avoidTolls: $avoidTolls, avoidHighways: $avoidHighways, customPreferences: $customPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTravelPreferencesRequestImpl &&
            const DeepCollectionEquality().equals(
              other._preferredTransportModes,
              _preferredTransportModes,
            ) &&
            (identical(other.ecoFriendlyMode, ecoFriendlyMode) ||
                other.ecoFriendlyMode == ecoFriendlyMode) &&
            (identical(other.maxWalkingDistance, maxWalkingDistance) ||
                other.maxWalkingDistance == maxWalkingDistance) &&
            (identical(other.avoidTolls, avoidTolls) ||
                other.avoidTolls == avoidTolls) &&
            (identical(other.avoidHighways, avoidHighways) ||
                other.avoidHighways == avoidHighways) &&
            const DeepCollectionEquality().equals(
              other._customPreferences,
              _customPreferences,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_preferredTransportModes),
    ecoFriendlyMode,
    maxWalkingDistance,
    avoidTolls,
    avoidHighways,
    const DeepCollectionEquality().hash(_customPreferences),
  );

  /// Create a copy of UpdateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTravelPreferencesRequestImplCopyWith<
    _$UpdateTravelPreferencesRequestImpl
  >
  get copyWith => __$$UpdateTravelPreferencesRequestImplCopyWithImpl<
    _$UpdateTravelPreferencesRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTravelPreferencesRequestImplToJson(this);
  }
}

abstract class _UpdateTravelPreferencesRequest
    implements UpdateTravelPreferencesRequest {
  const factory _UpdateTravelPreferencesRequest({
    required final List<String> preferredTransportModes,
    required final bool ecoFriendlyMode,
    required final double maxWalkingDistance,
    required final bool avoidTolls,
    required final bool avoidHighways,
    final Map<String, dynamic>? customPreferences,
  }) = _$UpdateTravelPreferencesRequestImpl;

  factory _UpdateTravelPreferencesRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateTravelPreferencesRequestImpl.fromJson;

  @override
  List<String> get preferredTransportModes;
  @override
  bool get ecoFriendlyMode;
  @override
  double get maxWalkingDistance;
  @override
  bool get avoidTolls;
  @override
  bool get avoidHighways;
  @override
  Map<String, dynamic>? get customPreferences;

  /// Create a copy of UpdateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTravelPreferencesRequestImplCopyWith<
    _$UpdateTravelPreferencesRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

CreateTravelPreferencesRequest _$CreateTravelPreferencesRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateTravelPreferencesRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTravelPreferencesRequest {
  List<String> get preferredTransportModes =>
      throw _privateConstructorUsedError;
  bool get ecoFriendlyMode => throw _privateConstructorUsedError;
  double get maxWalkingDistance => throw _privateConstructorUsedError;
  bool get avoidTolls => throw _privateConstructorUsedError;
  bool get avoidHighways => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customPreferences =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateTravelPreferencesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTravelPreferencesRequestCopyWith<CreateTravelPreferencesRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTravelPreferencesRequestCopyWith<$Res> {
  factory $CreateTravelPreferencesRequestCopyWith(
    CreateTravelPreferencesRequest value,
    $Res Function(CreateTravelPreferencesRequest) then,
  ) =
      _$CreateTravelPreferencesRequestCopyWithImpl<
        $Res,
        CreateTravelPreferencesRequest
      >;
  @useResult
  $Res call({
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  });
}

/// @nodoc
class _$CreateTravelPreferencesRequestCopyWithImpl<
  $Res,
  $Val extends CreateTravelPreferencesRequest
>
    implements $CreateTravelPreferencesRequestCopyWith<$Res> {
  _$CreateTravelPreferencesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
  }) {
    return _then(
      _value.copyWith(
            preferredTransportModes:
                null == preferredTransportModes
                    ? _value.preferredTransportModes
                    : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            ecoFriendlyMode:
                null == ecoFriendlyMode
                    ? _value.ecoFriendlyMode
                    : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                        as bool,
            maxWalkingDistance:
                null == maxWalkingDistance
                    ? _value.maxWalkingDistance
                    : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            avoidTolls:
                null == avoidTolls
                    ? _value.avoidTolls
                    : avoidTolls // ignore: cast_nullable_to_non_nullable
                        as bool,
            avoidHighways:
                null == avoidHighways
                    ? _value.avoidHighways
                    : avoidHighways // ignore: cast_nullable_to_non_nullable
                        as bool,
            customPreferences:
                freezed == customPreferences
                    ? _value.customPreferences
                    : customPreferences // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateTravelPreferencesRequestImplCopyWith<$Res>
    implements $CreateTravelPreferencesRequestCopyWith<$Res> {
  factory _$$CreateTravelPreferencesRequestImplCopyWith(
    _$CreateTravelPreferencesRequestImpl value,
    $Res Function(_$CreateTravelPreferencesRequestImpl) then,
  ) = __$$CreateTravelPreferencesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> preferredTransportModes,
    bool ecoFriendlyMode,
    double maxWalkingDistance,
    bool avoidTolls,
    bool avoidHighways,
    Map<String, dynamic>? customPreferences,
  });
}

/// @nodoc
class __$$CreateTravelPreferencesRequestImplCopyWithImpl<$Res>
    extends
        _$CreateTravelPreferencesRequestCopyWithImpl<
          $Res,
          _$CreateTravelPreferencesRequestImpl
        >
    implements _$$CreateTravelPreferencesRequestImplCopyWith<$Res> {
  __$$CreateTravelPreferencesRequestImplCopyWithImpl(
    _$CreateTravelPreferencesRequestImpl _value,
    $Res Function(_$CreateTravelPreferencesRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTransportModes = null,
    Object? ecoFriendlyMode = null,
    Object? maxWalkingDistance = null,
    Object? avoidTolls = null,
    Object? avoidHighways = null,
    Object? customPreferences = freezed,
  }) {
    return _then(
      _$CreateTravelPreferencesRequestImpl(
        preferredTransportModes:
            null == preferredTransportModes
                ? _value._preferredTransportModes
                : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        ecoFriendlyMode:
            null == ecoFriendlyMode
                ? _value.ecoFriendlyMode
                : ecoFriendlyMode // ignore: cast_nullable_to_non_nullable
                    as bool,
        maxWalkingDistance:
            null == maxWalkingDistance
                ? _value.maxWalkingDistance
                : maxWalkingDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        avoidTolls:
            null == avoidTolls
                ? _value.avoidTolls
                : avoidTolls // ignore: cast_nullable_to_non_nullable
                    as bool,
        avoidHighways:
            null == avoidHighways
                ? _value.avoidHighways
                : avoidHighways // ignore: cast_nullable_to_non_nullable
                    as bool,
        customPreferences:
            freezed == customPreferences
                ? _value._customPreferences
                : customPreferences // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTravelPreferencesRequestImpl
    implements _CreateTravelPreferencesRequest {
  const _$CreateTravelPreferencesRequestImpl({
    required final List<String> preferredTransportModes,
    required this.ecoFriendlyMode,
    required this.maxWalkingDistance,
    required this.avoidTolls,
    required this.avoidHighways,
    final Map<String, dynamic>? customPreferences,
  }) : _preferredTransportModes = preferredTransportModes,
       _customPreferences = customPreferences;

  factory _$CreateTravelPreferencesRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CreateTravelPreferencesRequestImplFromJson(json);

  final List<String> _preferredTransportModes;
  @override
  List<String> get preferredTransportModes {
    if (_preferredTransportModes is EqualUnmodifiableListView)
      return _preferredTransportModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTransportModes);
  }

  @override
  final bool ecoFriendlyMode;
  @override
  final double maxWalkingDistance;
  @override
  final bool avoidTolls;
  @override
  final bool avoidHighways;
  final Map<String, dynamic>? _customPreferences;
  @override
  Map<String, dynamic>? get customPreferences {
    final value = _customPreferences;
    if (value == null) return null;
    if (_customPreferences is EqualUnmodifiableMapView)
      return _customPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateTravelPreferencesRequest(preferredTransportModes: $preferredTransportModes, ecoFriendlyMode: $ecoFriendlyMode, maxWalkingDistance: $maxWalkingDistance, avoidTolls: $avoidTolls, avoidHighways: $avoidHighways, customPreferences: $customPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTravelPreferencesRequestImpl &&
            const DeepCollectionEquality().equals(
              other._preferredTransportModes,
              _preferredTransportModes,
            ) &&
            (identical(other.ecoFriendlyMode, ecoFriendlyMode) ||
                other.ecoFriendlyMode == ecoFriendlyMode) &&
            (identical(other.maxWalkingDistance, maxWalkingDistance) ||
                other.maxWalkingDistance == maxWalkingDistance) &&
            (identical(other.avoidTolls, avoidTolls) ||
                other.avoidTolls == avoidTolls) &&
            (identical(other.avoidHighways, avoidHighways) ||
                other.avoidHighways == avoidHighways) &&
            const DeepCollectionEquality().equals(
              other._customPreferences,
              _customPreferences,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_preferredTransportModes),
    ecoFriendlyMode,
    maxWalkingDistance,
    avoidTolls,
    avoidHighways,
    const DeepCollectionEquality().hash(_customPreferences),
  );

  /// Create a copy of CreateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTravelPreferencesRequestImplCopyWith<
    _$CreateTravelPreferencesRequestImpl
  >
  get copyWith => __$$CreateTravelPreferencesRequestImplCopyWithImpl<
    _$CreateTravelPreferencesRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTravelPreferencesRequestImplToJson(this);
  }
}

abstract class _CreateTravelPreferencesRequest
    implements CreateTravelPreferencesRequest {
  const factory _CreateTravelPreferencesRequest({
    required final List<String> preferredTransportModes,
    required final bool ecoFriendlyMode,
    required final double maxWalkingDistance,
    required final bool avoidTolls,
    required final bool avoidHighways,
    final Map<String, dynamic>? customPreferences,
  }) = _$CreateTravelPreferencesRequestImpl;

  factory _CreateTravelPreferencesRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTravelPreferencesRequestImpl.fromJson;

  @override
  List<String> get preferredTransportModes;
  @override
  bool get ecoFriendlyMode;
  @override
  double get maxWalkingDistance;
  @override
  bool get avoidTolls;
  @override
  bool get avoidHighways;
  @override
  Map<String, dynamic>? get customPreferences;

  /// Create a copy of CreateTravelPreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTravelPreferencesRequestImplCopyWith<
    _$CreateTravelPreferencesRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
