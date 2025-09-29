// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
mixin _$TripModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get startLocation => throw _privateConstructorUsedError;
  String get endLocation => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  String get transportMode => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  double? get carbonFootprint => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this TripModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res, TripModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String startLocation,
    String endLocation,
    DateTime startTime,
    DateTime? endTime,
    String transportMode,
    double? distance,
    double? duration,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res, $Val extends TripModel>
    implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? startLocation = null,
    Object? endLocation = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? transportMode = null,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? carbonFootprint = freezed,
    Object? metadata = freezed,
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
            startLocation:
                null == startLocation
                    ? _value.startLocation
                    : startLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            endLocation:
                null == endLocation
                    ? _value.endLocation
                    : endLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endTime:
                freezed == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            distance:
                freezed == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double?,
            duration:
                freezed == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as double?,
            carbonFootprint:
                freezed == carbonFootprint
                    ? _value.carbonFootprint
                    : carbonFootprint // ignore: cast_nullable_to_non_nullable
                        as double?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripModelImplCopyWith<$Res>
    implements $TripModelCopyWith<$Res> {
  factory _$$TripModelImplCopyWith(
    _$TripModelImpl value,
    $Res Function(_$TripModelImpl) then,
  ) = __$$TripModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String startLocation,
    String endLocation,
    DateTime startTime,
    DateTime? endTime,
    String transportMode,
    double? distance,
    double? duration,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$TripModelImplCopyWithImpl<$Res>
    extends _$TripModelCopyWithImpl<$Res, _$TripModelImpl>
    implements _$$TripModelImplCopyWith<$Res> {
  __$$TripModelImplCopyWithImpl(
    _$TripModelImpl _value,
    $Res Function(_$TripModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? startLocation = null,
    Object? endLocation = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? transportMode = null,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? carbonFootprint = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$TripModelImpl(
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
        startLocation:
            null == startLocation
                ? _value.startLocation
                : startLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        endLocation:
            null == endLocation
                ? _value.endLocation
                : endLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endTime:
            freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        distance:
            freezed == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double?,
        duration:
            freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as double?,
        carbonFootprint:
            freezed == carbonFootprint
                ? _value.carbonFootprint
                : carbonFootprint // ignore: cast_nullable_to_non_nullable
                    as double?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripModelImpl implements _TripModel {
  const _$TripModelImpl({
    required this.id,
    required this.userId,
    required this.startLocation,
    required this.endLocation,
    required this.startTime,
    this.endTime,
    required this.transportMode,
    this.distance,
    this.duration,
    this.carbonFootprint,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$TripModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String startLocation;
  @override
  final String endLocation;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final String transportMode;
  @override
  final double? distance;
  @override
  final double? duration;
  @override
  final double? carbonFootprint;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TripModel(id: $id, userId: $userId, startLocation: $startLocation, endLocation: $endLocation, startTime: $startTime, endTime: $endTime, transportMode: $transportMode, distance: $distance, duration: $duration, carbonFootprint: $carbonFootprint, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.carbonFootprint, carbonFootprint) ||
                other.carbonFootprint == carbonFootprint) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    startLocation,
    endLocation,
    startTime,
    endTime,
    transportMode,
    distance,
    duration,
    carbonFootprint,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of TripModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripModelImplCopyWith<_$TripModelImpl> get copyWith =>
      __$$TripModelImplCopyWithImpl<_$TripModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripModelImplToJson(this);
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel({
    required final String id,
    required final String userId,
    required final String startLocation,
    required final String endLocation,
    required final DateTime startTime,
    final DateTime? endTime,
    required final String transportMode,
    final double? distance,
    final double? duration,
    final double? carbonFootprint,
    final Map<String, dynamic>? metadata,
  }) = _$TripModelImpl;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$TripModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get startLocation;
  @override
  String get endLocation;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  String get transportMode;
  @override
  double? get distance;
  @override
  double? get duration;
  @override
  double? get carbonFootprint;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of TripModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripModelImplCopyWith<_$TripModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StartTripRequest _$StartTripRequestFromJson(Map<String, dynamic> json) {
  return _StartTripRequest.fromJson(json);
}

/// @nodoc
mixin _$StartTripRequest {
  String get startLocation => throw _privateConstructorUsedError;
  String get transportMode => throw _privateConstructorUsedError;
  String? get plannedDestination => throw _privateConstructorUsedError;
  int? get estimatedDuration => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this StartTripRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StartTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartTripRequestCopyWith<StartTripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTripRequestCopyWith<$Res> {
  factory $StartTripRequestCopyWith(
    StartTripRequest value,
    $Res Function(StartTripRequest) then,
  ) = _$StartTripRequestCopyWithImpl<$Res, StartTripRequest>;
  @useResult
  $Res call({
    String startLocation,
    String transportMode,
    String? plannedDestination,
    int? estimatedDuration,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$StartTripRequestCopyWithImpl<$Res, $Val extends StartTripRequest>
    implements $StartTripRequestCopyWith<$Res> {
  _$StartTripRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? transportMode = null,
    Object? plannedDestination = freezed,
    Object? estimatedDuration = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            startLocation:
                null == startLocation
                    ? _value.startLocation
                    : startLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            plannedDestination:
                freezed == plannedDestination
                    ? _value.plannedDestination
                    : plannedDestination // ignore: cast_nullable_to_non_nullable
                        as String?,
            estimatedDuration:
                freezed == estimatedDuration
                    ? _value.estimatedDuration
                    : estimatedDuration // ignore: cast_nullable_to_non_nullable
                        as int?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StartTripRequestImplCopyWith<$Res>
    implements $StartTripRequestCopyWith<$Res> {
  factory _$$StartTripRequestImplCopyWith(
    _$StartTripRequestImpl value,
    $Res Function(_$StartTripRequestImpl) then,
  ) = __$$StartTripRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String startLocation,
    String transportMode,
    String? plannedDestination,
    int? estimatedDuration,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$StartTripRequestImplCopyWithImpl<$Res>
    extends _$StartTripRequestCopyWithImpl<$Res, _$StartTripRequestImpl>
    implements _$$StartTripRequestImplCopyWith<$Res> {
  __$$StartTripRequestImplCopyWithImpl(
    _$StartTripRequestImpl _value,
    $Res Function(_$StartTripRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? transportMode = null,
    Object? plannedDestination = freezed,
    Object? estimatedDuration = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$StartTripRequestImpl(
        startLocation:
            null == startLocation
                ? _value.startLocation
                : startLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        plannedDestination:
            freezed == plannedDestination
                ? _value.plannedDestination
                : plannedDestination // ignore: cast_nullable_to_non_nullable
                    as String?,
        estimatedDuration:
            freezed == estimatedDuration
                ? _value.estimatedDuration
                : estimatedDuration // ignore: cast_nullable_to_non_nullable
                    as int?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StartTripRequestImpl implements _StartTripRequest {
  const _$StartTripRequestImpl({
    required this.startLocation,
    required this.transportMode,
    this.plannedDestination,
    this.estimatedDuration,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$StartTripRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartTripRequestImplFromJson(json);

  @override
  final String startLocation;
  @override
  final String transportMode;
  @override
  final String? plannedDestination;
  @override
  final int? estimatedDuration;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StartTripRequest(startLocation: $startLocation, transportMode: $transportMode, plannedDestination: $plannedDestination, estimatedDuration: $estimatedDuration, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTripRequestImpl &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.plannedDestination, plannedDestination) ||
                other.plannedDestination == plannedDestination) &&
            (identical(other.estimatedDuration, estimatedDuration) ||
                other.estimatedDuration == estimatedDuration) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    startLocation,
    transportMode,
    plannedDestination,
    estimatedDuration,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of StartTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTripRequestImplCopyWith<_$StartTripRequestImpl> get copyWith =>
      __$$StartTripRequestImplCopyWithImpl<_$StartTripRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StartTripRequestImplToJson(this);
  }
}

abstract class _StartTripRequest implements StartTripRequest {
  const factory _StartTripRequest({
    required final String startLocation,
    required final String transportMode,
    final String? plannedDestination,
    final int? estimatedDuration,
    final Map<String, dynamic>? metadata,
  }) = _$StartTripRequestImpl;

  factory _StartTripRequest.fromJson(Map<String, dynamic> json) =
      _$StartTripRequestImpl.fromJson;

  @override
  String get startLocation;
  @override
  String get transportMode;
  @override
  String? get plannedDestination;
  @override
  int? get estimatedDuration;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of StartTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTripRequestImplCopyWith<_$StartTripRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EndTripRequest _$EndTripRequestFromJson(Map<String, dynamic> json) {
  return _EndTripRequest.fromJson(json);
}

/// @nodoc
mixin _$EndTripRequest {
  String get endLocation => throw _privateConstructorUsedError;
  int? get actualDuration => throw _privateConstructorUsedError;
  double? get totalDistance => throw _privateConstructorUsedError;
  double? get fuelConsumed => throw _privateConstructorUsedError;
  double? get carbonFootprint => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this EndTripRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EndTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EndTripRequestCopyWith<EndTripRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndTripRequestCopyWith<$Res> {
  factory $EndTripRequestCopyWith(
    EndTripRequest value,
    $Res Function(EndTripRequest) then,
  ) = _$EndTripRequestCopyWithImpl<$Res, EndTripRequest>;
  @useResult
  $Res call({
    String endLocation,
    int? actualDuration,
    double? totalDistance,
    double? fuelConsumed,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$EndTripRequestCopyWithImpl<$Res, $Val extends EndTripRequest>
    implements $EndTripRequestCopyWith<$Res> {
  _$EndTripRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EndTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endLocation = null,
    Object? actualDuration = freezed,
    Object? totalDistance = freezed,
    Object? fuelConsumed = freezed,
    Object? carbonFootprint = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            endLocation:
                null == endLocation
                    ? _value.endLocation
                    : endLocation // ignore: cast_nullable_to_non_nullable
                        as String,
            actualDuration:
                freezed == actualDuration
                    ? _value.actualDuration
                    : actualDuration // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalDistance:
                freezed == totalDistance
                    ? _value.totalDistance
                    : totalDistance // ignore: cast_nullable_to_non_nullable
                        as double?,
            fuelConsumed:
                freezed == fuelConsumed
                    ? _value.fuelConsumed
                    : fuelConsumed // ignore: cast_nullable_to_non_nullable
                        as double?,
            carbonFootprint:
                freezed == carbonFootprint
                    ? _value.carbonFootprint
                    : carbonFootprint // ignore: cast_nullable_to_non_nullable
                        as double?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EndTripRequestImplCopyWith<$Res>
    implements $EndTripRequestCopyWith<$Res> {
  factory _$$EndTripRequestImplCopyWith(
    _$EndTripRequestImpl value,
    $Res Function(_$EndTripRequestImpl) then,
  ) = __$$EndTripRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String endLocation,
    int? actualDuration,
    double? totalDistance,
    double? fuelConsumed,
    double? carbonFootprint,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$EndTripRequestImplCopyWithImpl<$Res>
    extends _$EndTripRequestCopyWithImpl<$Res, _$EndTripRequestImpl>
    implements _$$EndTripRequestImplCopyWith<$Res> {
  __$$EndTripRequestImplCopyWithImpl(
    _$EndTripRequestImpl _value,
    $Res Function(_$EndTripRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EndTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endLocation = null,
    Object? actualDuration = freezed,
    Object? totalDistance = freezed,
    Object? fuelConsumed = freezed,
    Object? carbonFootprint = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$EndTripRequestImpl(
        endLocation:
            null == endLocation
                ? _value.endLocation
                : endLocation // ignore: cast_nullable_to_non_nullable
                    as String,
        actualDuration:
            freezed == actualDuration
                ? _value.actualDuration
                : actualDuration // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalDistance:
            freezed == totalDistance
                ? _value.totalDistance
                : totalDistance // ignore: cast_nullable_to_non_nullable
                    as double?,
        fuelConsumed:
            freezed == fuelConsumed
                ? _value.fuelConsumed
                : fuelConsumed // ignore: cast_nullable_to_non_nullable
                    as double?,
        carbonFootprint:
            freezed == carbonFootprint
                ? _value.carbonFootprint
                : carbonFootprint // ignore: cast_nullable_to_non_nullable
                    as double?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EndTripRequestImpl implements _EndTripRequest {
  const _$EndTripRequestImpl({
    required this.endLocation,
    this.actualDuration,
    this.totalDistance,
    this.fuelConsumed,
    this.carbonFootprint,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$EndTripRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EndTripRequestImplFromJson(json);

  @override
  final String endLocation;
  @override
  final int? actualDuration;
  @override
  final double? totalDistance;
  @override
  final double? fuelConsumed;
  @override
  final double? carbonFootprint;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EndTripRequest(endLocation: $endLocation, actualDuration: $actualDuration, totalDistance: $totalDistance, fuelConsumed: $fuelConsumed, carbonFootprint: $carbonFootprint, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndTripRequestImpl &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.actualDuration, actualDuration) ||
                other.actualDuration == actualDuration) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.fuelConsumed, fuelConsumed) ||
                other.fuelConsumed == fuelConsumed) &&
            (identical(other.carbonFootprint, carbonFootprint) ||
                other.carbonFootprint == carbonFootprint) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    endLocation,
    actualDuration,
    totalDistance,
    fuelConsumed,
    carbonFootprint,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of EndTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EndTripRequestImplCopyWith<_$EndTripRequestImpl> get copyWith =>
      __$$EndTripRequestImplCopyWithImpl<_$EndTripRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EndTripRequestImplToJson(this);
  }
}

abstract class _EndTripRequest implements EndTripRequest {
  const factory _EndTripRequest({
    required final String endLocation,
    final int? actualDuration,
    final double? totalDistance,
    final double? fuelConsumed,
    final double? carbonFootprint,
    final Map<String, dynamic>? metadata,
  }) = _$EndTripRequestImpl;

  factory _EndTripRequest.fromJson(Map<String, dynamic> json) =
      _$EndTripRequestImpl.fromJson;

  @override
  String get endLocation;
  @override
  int? get actualDuration;
  @override
  double? get totalDistance;
  @override
  double? get fuelConsumed;
  @override
  double? get carbonFootprint;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of EndTripRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EndTripRequestImplCopyWith<_$EndTripRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
