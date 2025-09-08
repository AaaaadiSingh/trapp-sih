// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  int get totalTrips => throw _privateConstructorUsedError;
  double get estimatedDistance => throw _privateConstructorUsedError;
  int get estimatedTravelTime => throw _privateConstructorUsedError;
  List<TripData> get currentTrips => throw _privateConstructorUsedError;

  /// Serializes this DashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
    DashboardData value,
    $Res Function(DashboardData) then,
  ) = _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call({
    int totalTrips,
    double estimatedDistance,
    int estimatedTravelTime,
    List<TripData> currentTrips,
  });
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? estimatedDistance = null,
    Object? estimatedTravelTime = null,
    Object? currentTrips = null,
  }) {
    return _then(
      _value.copyWith(
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            estimatedDistance:
                null == estimatedDistance
                    ? _value.estimatedDistance
                    : estimatedDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            estimatedTravelTime:
                null == estimatedTravelTime
                    ? _value.estimatedTravelTime
                    : estimatedTravelTime // ignore: cast_nullable_to_non_nullable
                        as int,
            currentTrips:
                null == currentTrips
                    ? _value.currentTrips
                    : currentTrips // ignore: cast_nullable_to_non_nullable
                        as List<TripData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
    _$DashboardDataImpl value,
    $Res Function(_$DashboardDataImpl) then,
  ) = __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalTrips,
    double estimatedDistance,
    int estimatedTravelTime,
    List<TripData> currentTrips,
  });
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
    _$DashboardDataImpl _value,
    $Res Function(_$DashboardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? estimatedDistance = null,
    Object? estimatedTravelTime = null,
    Object? currentTrips = null,
  }) {
    return _then(
      _$DashboardDataImpl(
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        estimatedDistance:
            null == estimatedDistance
                ? _value.estimatedDistance
                : estimatedDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        estimatedTravelTime:
            null == estimatedTravelTime
                ? _value.estimatedTravelTime
                : estimatedTravelTime // ignore: cast_nullable_to_non_nullable
                    as int,
        currentTrips:
            null == currentTrips
                ? _value._currentTrips
                : currentTrips // ignore: cast_nullable_to_non_nullable
                    as List<TripData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl({
    required this.totalTrips,
    required this.estimatedDistance,
    required this.estimatedTravelTime,
    required final List<TripData> currentTrips,
  }) : _currentTrips = currentTrips;

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  final int totalTrips;
  @override
  final double estimatedDistance;
  @override
  final int estimatedTravelTime;
  final List<TripData> _currentTrips;
  @override
  List<TripData> get currentTrips {
    if (_currentTrips is EqualUnmodifiableListView) return _currentTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTrips);
  }

  @override
  String toString() {
    return 'DashboardData(totalTrips: $totalTrips, estimatedDistance: $estimatedDistance, estimatedTravelTime: $estimatedTravelTime, currentTrips: $currentTrips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.estimatedDistance, estimatedDistance) ||
                other.estimatedDistance == estimatedDistance) &&
            (identical(other.estimatedTravelTime, estimatedTravelTime) ||
                other.estimatedTravelTime == estimatedTravelTime) &&
            const DeepCollectionEquality().equals(
              other._currentTrips,
              _currentTrips,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalTrips,
    estimatedDistance,
    estimatedTravelTime,
    const DeepCollectionEquality().hash(_currentTrips),
  );

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(this);
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData({
    required final int totalTrips,
    required final double estimatedDistance,
    required final int estimatedTravelTime,
    required final List<TripData> currentTrips,
  }) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  int get totalTrips;
  @override
  double get estimatedDistance;
  @override
  int get estimatedTravelTime;
  @override
  List<TripData> get currentTrips;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripData _$TripDataFromJson(Map<String, dynamic> json) {
  return _TripData.fromJson(json);
}

/// @nodoc
mixin _$TripData {
  String get id => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  TripStatus get status => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  /// Serializes this TripData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripDataCopyWith<TripData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDataCopyWith<$Res> {
  factory $TripDataCopyWith(TripData value, $Res Function(TripData) then) =
      _$TripDataCopyWithImpl<$Res, TripData>;
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime startTime,
    DateTime endTime,
    TripStatus status,
    double distance,
    int duration,
  });
}

/// @nodoc
class _$TripDataCopyWithImpl<$Res, $Val extends TripData>
    implements $TripDataCopyWith<$Res> {
  _$TripDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as String,
            destination:
                null == destination
                    ? _value.destination
                    : destination // ignore: cast_nullable_to_non_nullable
                        as String,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as TripStatus,
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripDataImplCopyWith<$Res>
    implements $TripDataCopyWith<$Res> {
  factory _$$TripDataImplCopyWith(
    _$TripDataImpl value,
    $Res Function(_$TripDataImpl) then,
  ) = __$$TripDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime startTime,
    DateTime endTime,
    TripStatus status,
    double distance,
    int duration,
  });
}

/// @nodoc
class __$$TripDataImplCopyWithImpl<$Res>
    extends _$TripDataCopyWithImpl<$Res, _$TripDataImpl>
    implements _$$TripDataImplCopyWith<$Res> {
  __$$TripDataImplCopyWithImpl(
    _$TripDataImpl _value,
    $Res Function(_$TripDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(
      _$TripDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as String,
        destination:
            null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                    as String,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as TripStatus,
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDataImpl implements _TripData {
  const _$TripDataImpl({
    required this.id,
    required this.origin,
    required this.destination,
    required this.startTime,
    required this.endTime,
    required this.status,
    this.distance = 0.0,
    this.duration = 0,
  });

  factory _$TripDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDataImplFromJson(json);

  @override
  final String id;
  @override
  final String origin;
  @override
  final String destination;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final TripStatus status;
  @override
  @JsonKey()
  final double distance;
  @override
  @JsonKey()
  final int duration;

  @override
  String toString() {
    return 'TripData(id: $id, origin: $origin, destination: $destination, startTime: $startTime, endTime: $endTime, status: $status, distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    origin,
    destination,
    startTime,
    endTime,
    status,
    distance,
    duration,
  );

  /// Create a copy of TripData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDataImplCopyWith<_$TripDataImpl> get copyWith =>
      __$$TripDataImplCopyWithImpl<_$TripDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDataImplToJson(this);
  }
}

abstract class _TripData implements TripData {
  const factory _TripData({
    required final String id,
    required final String origin,
    required final String destination,
    required final DateTime startTime,
    required final DateTime endTime,
    required final TripStatus status,
    final double distance,
    final int duration,
  }) = _$TripDataImpl;

  factory _TripData.fromJson(Map<String, dynamic> json) =
      _$TripDataImpl.fromJson;

  @override
  String get id;
  @override
  String get origin;
  @override
  String get destination;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  TripStatus get status;
  @override
  double get distance;
  @override
  int get duration;

  /// Create a copy of TripData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripDataImplCopyWith<_$TripDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
