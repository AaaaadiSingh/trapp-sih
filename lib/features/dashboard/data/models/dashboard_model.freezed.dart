// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardStatsModel _$DashboardStatsModelFromJson(Map<String, dynamic> json) {
  return _DashboardStatsModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardStatsModel {
  String get userId => throw _privateConstructorUsedError;
  int get totalTrips => throw _privateConstructorUsedError;
  double get totalDistance => throw _privateConstructorUsedError;
  double get totalDuration => throw _privateConstructorUsedError;
  double get totalCarbonSaved => throw _privateConstructorUsedError;
  Map<String, int> get transportModeBreakdown =>
      throw _privateConstructorUsedError;
  List<TripSummary> get recentTrips => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this DashboardStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStatsModelCopyWith<DashboardStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsModelCopyWith<$Res> {
  factory $DashboardStatsModelCopyWith(
    DashboardStatsModel value,
    $Res Function(DashboardStatsModel) then,
  ) = _$DashboardStatsModelCopyWithImpl<$Res, DashboardStatsModel>;
  @useResult
  $Res call({
    String userId,
    int totalTrips,
    double totalDistance,
    double totalDuration,
    double totalCarbonSaved,
    Map<String, int> transportModeBreakdown,
    List<TripSummary> recentTrips,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class _$DashboardStatsModelCopyWithImpl<$Res, $Val extends DashboardStatsModel>
    implements $DashboardStatsModelCopyWith<$Res> {
  _$DashboardStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalTrips = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
    Object? totalCarbonSaved = null,
    Object? transportModeBreakdown = null,
    Object? recentTrips = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            totalDistance:
                null == totalDistance
                    ? _value.totalDistance
                    : totalDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            totalDuration:
                null == totalDuration
                    ? _value.totalDuration
                    : totalDuration // ignore: cast_nullable_to_non_nullable
                        as double,
            totalCarbonSaved:
                null == totalCarbonSaved
                    ? _value.totalCarbonSaved
                    : totalCarbonSaved // ignore: cast_nullable_to_non_nullable
                        as double,
            transportModeBreakdown:
                null == transportModeBreakdown
                    ? _value.transportModeBreakdown
                    : transportModeBreakdown // ignore: cast_nullable_to_non_nullable
                        as Map<String, int>,
            recentTrips:
                null == recentTrips
                    ? _value.recentTrips
                    : recentTrips // ignore: cast_nullable_to_non_nullable
                        as List<TripSummary>,
            lastUpdated:
                freezed == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardStatsModelImplCopyWith<$Res>
    implements $DashboardStatsModelCopyWith<$Res> {
  factory _$$DashboardStatsModelImplCopyWith(
    _$DashboardStatsModelImpl value,
    $Res Function(_$DashboardStatsModelImpl) then,
  ) = __$$DashboardStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int totalTrips,
    double totalDistance,
    double totalDuration,
    double totalCarbonSaved,
    Map<String, int> transportModeBreakdown,
    List<TripSummary> recentTrips,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class __$$DashboardStatsModelImplCopyWithImpl<$Res>
    extends _$DashboardStatsModelCopyWithImpl<$Res, _$DashboardStatsModelImpl>
    implements _$$DashboardStatsModelImplCopyWith<$Res> {
  __$$DashboardStatsModelImplCopyWithImpl(
    _$DashboardStatsModelImpl _value,
    $Res Function(_$DashboardStatsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? totalTrips = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
    Object? totalCarbonSaved = null,
    Object? transportModeBreakdown = null,
    Object? recentTrips = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _$DashboardStatsModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        totalDistance:
            null == totalDistance
                ? _value.totalDistance
                : totalDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        totalDuration:
            null == totalDuration
                ? _value.totalDuration
                : totalDuration // ignore: cast_nullable_to_non_nullable
                    as double,
        totalCarbonSaved:
            null == totalCarbonSaved
                ? _value.totalCarbonSaved
                : totalCarbonSaved // ignore: cast_nullable_to_non_nullable
                    as double,
        transportModeBreakdown:
            null == transportModeBreakdown
                ? _value._transportModeBreakdown
                : transportModeBreakdown // ignore: cast_nullable_to_non_nullable
                    as Map<String, int>,
        recentTrips:
            null == recentTrips
                ? _value._recentTrips
                : recentTrips // ignore: cast_nullable_to_non_nullable
                    as List<TripSummary>,
        lastUpdated:
            freezed == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsModelImpl implements _DashboardStatsModel {
  const _$DashboardStatsModelImpl({
    required this.userId,
    required this.totalTrips,
    required this.totalDistance,
    required this.totalDuration,
    required this.totalCarbonSaved,
    required final Map<String, int> transportModeBreakdown,
    required final List<TripSummary> recentTrips,
    this.lastUpdated,
  }) : _transportModeBreakdown = transportModeBreakdown,
       _recentTrips = recentTrips;

  factory _$DashboardStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsModelImplFromJson(json);

  @override
  final String userId;
  @override
  final int totalTrips;
  @override
  final double totalDistance;
  @override
  final double totalDuration;
  @override
  final double totalCarbonSaved;
  final Map<String, int> _transportModeBreakdown;
  @override
  Map<String, int> get transportModeBreakdown {
    if (_transportModeBreakdown is EqualUnmodifiableMapView)
      return _transportModeBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transportModeBreakdown);
  }

  final List<TripSummary> _recentTrips;
  @override
  List<TripSummary> get recentTrips {
    if (_recentTrips is EqualUnmodifiableListView) return _recentTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTrips);
  }

  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'DashboardStatsModel(userId: $userId, totalTrips: $totalTrips, totalDistance: $totalDistance, totalDuration: $totalDuration, totalCarbonSaved: $totalCarbonSaved, transportModeBreakdown: $transportModeBreakdown, recentTrips: $recentTrips, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.totalCarbonSaved, totalCarbonSaved) ||
                other.totalCarbonSaved == totalCarbonSaved) &&
            const DeepCollectionEquality().equals(
              other._transportModeBreakdown,
              _transportModeBreakdown,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentTrips,
              _recentTrips,
            ) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    totalTrips,
    totalDistance,
    totalDuration,
    totalCarbonSaved,
    const DeepCollectionEquality().hash(_transportModeBreakdown),
    const DeepCollectionEquality().hash(_recentTrips),
    lastUpdated,
  );

  /// Create a copy of DashboardStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsModelImplCopyWith<_$DashboardStatsModelImpl> get copyWith =>
      __$$DashboardStatsModelImplCopyWithImpl<_$DashboardStatsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsModelImplToJson(this);
  }
}

abstract class _DashboardStatsModel implements DashboardStatsModel {
  const factory _DashboardStatsModel({
    required final String userId,
    required final int totalTrips,
    required final double totalDistance,
    required final double totalDuration,
    required final double totalCarbonSaved,
    required final Map<String, int> transportModeBreakdown,
    required final List<TripSummary> recentTrips,
    final DateTime? lastUpdated,
  }) = _$DashboardStatsModelImpl;

  factory _DashboardStatsModel.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsModelImpl.fromJson;

  @override
  String get userId;
  @override
  int get totalTrips;
  @override
  double get totalDistance;
  @override
  double get totalDuration;
  @override
  double get totalCarbonSaved;
  @override
  Map<String, int> get transportModeBreakdown;
  @override
  List<TripSummary> get recentTrips;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of DashboardStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStatsModelImplCopyWith<_$DashboardStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TripSummary _$TripSummaryFromJson(Map<String, dynamic> json) {
  return _TripSummary.fromJson(json);
}

/// @nodoc
mixin _$TripSummary {
  String get id => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get transportMode => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  double? get carbonFootprint => throw _privateConstructorUsedError;

  /// Serializes this TripSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripSummaryCopyWith<TripSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSummaryCopyWith<$Res> {
  factory $TripSummaryCopyWith(
    TripSummary value,
    $Res Function(TripSummary) then,
  ) = _$TripSummaryCopyWithImpl<$Res, TripSummary>;
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime startTime,
    DateTime endTime,
    String transportMode,
    double distance,
    double duration,
    double? carbonFootprint,
  });
}

/// @nodoc
class _$TripSummaryCopyWithImpl<$Res, $Val extends TripSummary>
    implements $TripSummaryCopyWith<$Res> {
  _$TripSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? transportMode = null,
    Object? distance = null,
    Object? duration = null,
    Object? carbonFootprint = freezed,
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
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as double,
            carbonFootprint:
                freezed == carbonFootprint
                    ? _value.carbonFootprint
                    : carbonFootprint // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripSummaryImplCopyWith<$Res>
    implements $TripSummaryCopyWith<$Res> {
  factory _$$TripSummaryImplCopyWith(
    _$TripSummaryImpl value,
    $Res Function(_$TripSummaryImpl) then,
  ) = __$$TripSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime startTime,
    DateTime endTime,
    String transportMode,
    double distance,
    double duration,
    double? carbonFootprint,
  });
}

/// @nodoc
class __$$TripSummaryImplCopyWithImpl<$Res>
    extends _$TripSummaryCopyWithImpl<$Res, _$TripSummaryImpl>
    implements _$$TripSummaryImplCopyWith<$Res> {
  __$$TripSummaryImplCopyWithImpl(
    _$TripSummaryImpl _value,
    $Res Function(_$TripSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? transportMode = null,
    Object? distance = null,
    Object? duration = null,
    Object? carbonFootprint = freezed,
  }) {
    return _then(
      _$TripSummaryImpl(
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
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as double,
        carbonFootprint:
            freezed == carbonFootprint
                ? _value.carbonFootprint
                : carbonFootprint // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripSummaryImpl implements _TripSummary {
  const _$TripSummaryImpl({
    required this.id,
    required this.origin,
    required this.destination,
    required this.startTime,
    required this.endTime,
    required this.transportMode,
    required this.distance,
    required this.duration,
    this.carbonFootprint,
  });

  factory _$TripSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripSummaryImplFromJson(json);

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
  final String transportMode;
  @override
  final double distance;
  @override
  final double duration;
  @override
  final double? carbonFootprint;

  @override
  String toString() {
    return 'TripSummary(id: $id, origin: $origin, destination: $destination, startTime: $startTime, endTime: $endTime, transportMode: $transportMode, distance: $distance, duration: $duration, carbonFootprint: $carbonFootprint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
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
                other.carbonFootprint == carbonFootprint));
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
    transportMode,
    distance,
    duration,
    carbonFootprint,
  );

  /// Create a copy of TripSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSummaryImplCopyWith<_$TripSummaryImpl> get copyWith =>
      __$$TripSummaryImplCopyWithImpl<_$TripSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripSummaryImplToJson(this);
  }
}

abstract class _TripSummary implements TripSummary {
  const factory _TripSummary({
    required final String id,
    required final String origin,
    required final String destination,
    required final DateTime startTime,
    required final DateTime endTime,
    required final String transportMode,
    required final double distance,
    required final double duration,
    final double? carbonFootprint,
  }) = _$TripSummaryImpl;

  factory _TripSummary.fromJson(Map<String, dynamic> json) =
      _$TripSummaryImpl.fromJson;

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
  String get transportMode;
  @override
  double get distance;
  @override
  double get duration;
  @override
  double? get carbonFootprint;

  /// Create a copy of TripSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripSummaryImplCopyWith<_$TripSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardSummaryModel _$DashboardSummaryModelFromJson(
  Map<String, dynamic> json,
) {
  return _DashboardSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardSummaryModel {
  String get userId => throw _privateConstructorUsedError;
  double get weeklyDistance => throw _privateConstructorUsedError;
  double get monthlyDistance => throw _privateConstructorUsedError;
  double get weeklyCarbonSaved => throw _privateConstructorUsedError;
  double get monthlyCarbonSaved => throw _privateConstructorUsedError;
  int get weeklyTrips => throw _privateConstructorUsedError;
  int get monthlyTrips => throw _privateConstructorUsedError;
  String get mostUsedTransportMode => throw _privateConstructorUsedError;
  List<String> get achievements => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this DashboardSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardSummaryModelCopyWith<DashboardSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardSummaryModelCopyWith<$Res> {
  factory $DashboardSummaryModelCopyWith(
    DashboardSummaryModel value,
    $Res Function(DashboardSummaryModel) then,
  ) = _$DashboardSummaryModelCopyWithImpl<$Res, DashboardSummaryModel>;
  @useResult
  $Res call({
    String userId,
    double weeklyDistance,
    double monthlyDistance,
    double weeklyCarbonSaved,
    double monthlyCarbonSaved,
    int weeklyTrips,
    int monthlyTrips,
    String mostUsedTransportMode,
    List<String> achievements,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class _$DashboardSummaryModelCopyWithImpl<
  $Res,
  $Val extends DashboardSummaryModel
>
    implements $DashboardSummaryModelCopyWith<$Res> {
  _$DashboardSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weeklyDistance = null,
    Object? monthlyDistance = null,
    Object? weeklyCarbonSaved = null,
    Object? monthlyCarbonSaved = null,
    Object? weeklyTrips = null,
    Object? monthlyTrips = null,
    Object? mostUsedTransportMode = null,
    Object? achievements = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            weeklyDistance:
                null == weeklyDistance
                    ? _value.weeklyDistance
                    : weeklyDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            monthlyDistance:
                null == monthlyDistance
                    ? _value.monthlyDistance
                    : monthlyDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            weeklyCarbonSaved:
                null == weeklyCarbonSaved
                    ? _value.weeklyCarbonSaved
                    : weeklyCarbonSaved // ignore: cast_nullable_to_non_nullable
                        as double,
            monthlyCarbonSaved:
                null == monthlyCarbonSaved
                    ? _value.monthlyCarbonSaved
                    : monthlyCarbonSaved // ignore: cast_nullable_to_non_nullable
                        as double,
            weeklyTrips:
                null == weeklyTrips
                    ? _value.weeklyTrips
                    : weeklyTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            monthlyTrips:
                null == monthlyTrips
                    ? _value.monthlyTrips
                    : monthlyTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            mostUsedTransportMode:
                null == mostUsedTransportMode
                    ? _value.mostUsedTransportMode
                    : mostUsedTransportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            achievements:
                null == achievements
                    ? _value.achievements
                    : achievements // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            lastUpdated:
                freezed == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardSummaryModelImplCopyWith<$Res>
    implements $DashboardSummaryModelCopyWith<$Res> {
  factory _$$DashboardSummaryModelImplCopyWith(
    _$DashboardSummaryModelImpl value,
    $Res Function(_$DashboardSummaryModelImpl) then,
  ) = __$$DashboardSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    double weeklyDistance,
    double monthlyDistance,
    double weeklyCarbonSaved,
    double monthlyCarbonSaved,
    int weeklyTrips,
    int monthlyTrips,
    String mostUsedTransportMode,
    List<String> achievements,
    DateTime? lastUpdated,
  });
}

/// @nodoc
class __$$DashboardSummaryModelImplCopyWithImpl<$Res>
    extends
        _$DashboardSummaryModelCopyWithImpl<$Res, _$DashboardSummaryModelImpl>
    implements _$$DashboardSummaryModelImplCopyWith<$Res> {
  __$$DashboardSummaryModelImplCopyWithImpl(
    _$DashboardSummaryModelImpl _value,
    $Res Function(_$DashboardSummaryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weeklyDistance = null,
    Object? monthlyDistance = null,
    Object? weeklyCarbonSaved = null,
    Object? monthlyCarbonSaved = null,
    Object? weeklyTrips = null,
    Object? monthlyTrips = null,
    Object? mostUsedTransportMode = null,
    Object? achievements = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _$DashboardSummaryModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        weeklyDistance:
            null == weeklyDistance
                ? _value.weeklyDistance
                : weeklyDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        monthlyDistance:
            null == monthlyDistance
                ? _value.monthlyDistance
                : monthlyDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        weeklyCarbonSaved:
            null == weeklyCarbonSaved
                ? _value.weeklyCarbonSaved
                : weeklyCarbonSaved // ignore: cast_nullable_to_non_nullable
                    as double,
        monthlyCarbonSaved:
            null == monthlyCarbonSaved
                ? _value.monthlyCarbonSaved
                : monthlyCarbonSaved // ignore: cast_nullable_to_non_nullable
                    as double,
        weeklyTrips:
            null == weeklyTrips
                ? _value.weeklyTrips
                : weeklyTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        monthlyTrips:
            null == monthlyTrips
                ? _value.monthlyTrips
                : monthlyTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        mostUsedTransportMode:
            null == mostUsedTransportMode
                ? _value.mostUsedTransportMode
                : mostUsedTransportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        achievements:
            null == achievements
                ? _value._achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        lastUpdated:
            freezed == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardSummaryModelImpl implements _DashboardSummaryModel {
  const _$DashboardSummaryModelImpl({
    required this.userId,
    required this.weeklyDistance,
    required this.monthlyDistance,
    required this.weeklyCarbonSaved,
    required this.monthlyCarbonSaved,
    required this.weeklyTrips,
    required this.monthlyTrips,
    required this.mostUsedTransportMode,
    required final List<String> achievements,
    this.lastUpdated,
  }) : _achievements = achievements;

  factory _$DashboardSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardSummaryModelImplFromJson(json);

  @override
  final String userId;
  @override
  final double weeklyDistance;
  @override
  final double monthlyDistance;
  @override
  final double weeklyCarbonSaved;
  @override
  final double monthlyCarbonSaved;
  @override
  final int weeklyTrips;
  @override
  final int monthlyTrips;
  @override
  final String mostUsedTransportMode;
  final List<String> _achievements;
  @override
  List<String> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'DashboardSummaryModel(userId: $userId, weeklyDistance: $weeklyDistance, monthlyDistance: $monthlyDistance, weeklyCarbonSaved: $weeklyCarbonSaved, monthlyCarbonSaved: $monthlyCarbonSaved, weeklyTrips: $weeklyTrips, monthlyTrips: $monthlyTrips, mostUsedTransportMode: $mostUsedTransportMode, achievements: $achievements, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardSummaryModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weeklyDistance, weeklyDistance) ||
                other.weeklyDistance == weeklyDistance) &&
            (identical(other.monthlyDistance, monthlyDistance) ||
                other.monthlyDistance == monthlyDistance) &&
            (identical(other.weeklyCarbonSaved, weeklyCarbonSaved) ||
                other.weeklyCarbonSaved == weeklyCarbonSaved) &&
            (identical(other.monthlyCarbonSaved, monthlyCarbonSaved) ||
                other.monthlyCarbonSaved == monthlyCarbonSaved) &&
            (identical(other.weeklyTrips, weeklyTrips) ||
                other.weeklyTrips == weeklyTrips) &&
            (identical(other.monthlyTrips, monthlyTrips) ||
                other.monthlyTrips == monthlyTrips) &&
            (identical(other.mostUsedTransportMode, mostUsedTransportMode) ||
                other.mostUsedTransportMode == mostUsedTransportMode) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    weeklyDistance,
    monthlyDistance,
    weeklyCarbonSaved,
    monthlyCarbonSaved,
    weeklyTrips,
    monthlyTrips,
    mostUsedTransportMode,
    const DeepCollectionEquality().hash(_achievements),
    lastUpdated,
  );

  /// Create a copy of DashboardSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardSummaryModelImplCopyWith<_$DashboardSummaryModelImpl>
  get copyWith =>
      __$$DashboardSummaryModelImplCopyWithImpl<_$DashboardSummaryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardSummaryModelImplToJson(this);
  }
}

abstract class _DashboardSummaryModel implements DashboardSummaryModel {
  const factory _DashboardSummaryModel({
    required final String userId,
    required final double weeklyDistance,
    required final double monthlyDistance,
    required final double weeklyCarbonSaved,
    required final double monthlyCarbonSaved,
    required final int weeklyTrips,
    required final int monthlyTrips,
    required final String mostUsedTransportMode,
    required final List<String> achievements,
    final DateTime? lastUpdated,
  }) = _$DashboardSummaryModelImpl;

  factory _DashboardSummaryModel.fromJson(Map<String, dynamic> json) =
      _$DashboardSummaryModelImpl.fromJson;

  @override
  String get userId;
  @override
  double get weeklyDistance;
  @override
  double get monthlyDistance;
  @override
  double get weeklyCarbonSaved;
  @override
  double get monthlyCarbonSaved;
  @override
  int get weeklyTrips;
  @override
  int get monthlyTrips;
  @override
  String get mostUsedTransportMode;
  @override
  List<String> get achievements;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of DashboardSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardSummaryModelImplCopyWith<_$DashboardSummaryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

WeeklyStatsModel _$WeeklyStatsModelFromJson(Map<String, dynamic> json) {
  return _WeeklyStatsModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyStatsModel {
  String get userId => throw _privateConstructorUsedError;
  List<DailyStats> get dailyStats => throw _privateConstructorUsedError;
  double get totalDistance => throw _privateConstructorUsedError;
  double get totalCarbonSaved => throw _privateConstructorUsedError;
  int get totalTrips => throw _privateConstructorUsedError;
  DateTime? get weekStartDate => throw _privateConstructorUsedError;

  /// Serializes this WeeklyStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyStatsModelCopyWith<WeeklyStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyStatsModelCopyWith<$Res> {
  factory $WeeklyStatsModelCopyWith(
    WeeklyStatsModel value,
    $Res Function(WeeklyStatsModel) then,
  ) = _$WeeklyStatsModelCopyWithImpl<$Res, WeeklyStatsModel>;
  @useResult
  $Res call({
    String userId,
    List<DailyStats> dailyStats,
    double totalDistance,
    double totalCarbonSaved,
    int totalTrips,
    DateTime? weekStartDate,
  });
}

/// @nodoc
class _$WeeklyStatsModelCopyWithImpl<$Res, $Val extends WeeklyStatsModel>
    implements $WeeklyStatsModelCopyWith<$Res> {
  _$WeeklyStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dailyStats = null,
    Object? totalDistance = null,
    Object? totalCarbonSaved = null,
    Object? totalTrips = null,
    Object? weekStartDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            dailyStats:
                null == dailyStats
                    ? _value.dailyStats
                    : dailyStats // ignore: cast_nullable_to_non_nullable
                        as List<DailyStats>,
            totalDistance:
                null == totalDistance
                    ? _value.totalDistance
                    : totalDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            totalCarbonSaved:
                null == totalCarbonSaved
                    ? _value.totalCarbonSaved
                    : totalCarbonSaved // ignore: cast_nullable_to_non_nullable
                        as double,
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            weekStartDate:
                freezed == weekStartDate
                    ? _value.weekStartDate
                    : weekStartDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyStatsModelImplCopyWith<$Res>
    implements $WeeklyStatsModelCopyWith<$Res> {
  factory _$$WeeklyStatsModelImplCopyWith(
    _$WeeklyStatsModelImpl value,
    $Res Function(_$WeeklyStatsModelImpl) then,
  ) = __$$WeeklyStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    List<DailyStats> dailyStats,
    double totalDistance,
    double totalCarbonSaved,
    int totalTrips,
    DateTime? weekStartDate,
  });
}

/// @nodoc
class __$$WeeklyStatsModelImplCopyWithImpl<$Res>
    extends _$WeeklyStatsModelCopyWithImpl<$Res, _$WeeklyStatsModelImpl>
    implements _$$WeeklyStatsModelImplCopyWith<$Res> {
  __$$WeeklyStatsModelImplCopyWithImpl(
    _$WeeklyStatsModelImpl _value,
    $Res Function(_$WeeklyStatsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dailyStats = null,
    Object? totalDistance = null,
    Object? totalCarbonSaved = null,
    Object? totalTrips = null,
    Object? weekStartDate = freezed,
  }) {
    return _then(
      _$WeeklyStatsModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        dailyStats:
            null == dailyStats
                ? _value._dailyStats
                : dailyStats // ignore: cast_nullable_to_non_nullable
                    as List<DailyStats>,
        totalDistance:
            null == totalDistance
                ? _value.totalDistance
                : totalDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        totalCarbonSaved:
            null == totalCarbonSaved
                ? _value.totalCarbonSaved
                : totalCarbonSaved // ignore: cast_nullable_to_non_nullable
                    as double,
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        weekStartDate:
            freezed == weekStartDate
                ? _value.weekStartDate
                : weekStartDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyStatsModelImpl implements _WeeklyStatsModel {
  const _$WeeklyStatsModelImpl({
    required this.userId,
    required final List<DailyStats> dailyStats,
    required this.totalDistance,
    required this.totalCarbonSaved,
    required this.totalTrips,
    this.weekStartDate,
  }) : _dailyStats = dailyStats;

  factory _$WeeklyStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyStatsModelImplFromJson(json);

  @override
  final String userId;
  final List<DailyStats> _dailyStats;
  @override
  List<DailyStats> get dailyStats {
    if (_dailyStats is EqualUnmodifiableListView) return _dailyStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyStats);
  }

  @override
  final double totalDistance;
  @override
  final double totalCarbonSaved;
  @override
  final int totalTrips;
  @override
  final DateTime? weekStartDate;

  @override
  String toString() {
    return 'WeeklyStatsModel(userId: $userId, dailyStats: $dailyStats, totalDistance: $totalDistance, totalCarbonSaved: $totalCarbonSaved, totalTrips: $totalTrips, weekStartDate: $weekStartDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyStatsModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._dailyStats,
              _dailyStats,
            ) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalCarbonSaved, totalCarbonSaved) ||
                other.totalCarbonSaved == totalCarbonSaved) &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.weekStartDate, weekStartDate) ||
                other.weekStartDate == weekStartDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    const DeepCollectionEquality().hash(_dailyStats),
    totalDistance,
    totalCarbonSaved,
    totalTrips,
    weekStartDate,
  );

  /// Create a copy of WeeklyStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyStatsModelImplCopyWith<_$WeeklyStatsModelImpl> get copyWith =>
      __$$WeeklyStatsModelImplCopyWithImpl<_$WeeklyStatsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyStatsModelImplToJson(this);
  }
}

abstract class _WeeklyStatsModel implements WeeklyStatsModel {
  const factory _WeeklyStatsModel({
    required final String userId,
    required final List<DailyStats> dailyStats,
    required final double totalDistance,
    required final double totalCarbonSaved,
    required final int totalTrips,
    final DateTime? weekStartDate,
  }) = _$WeeklyStatsModelImpl;

  factory _WeeklyStatsModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyStatsModelImpl.fromJson;

  @override
  String get userId;
  @override
  List<DailyStats> get dailyStats;
  @override
  double get totalDistance;
  @override
  double get totalCarbonSaved;
  @override
  int get totalTrips;
  @override
  DateTime? get weekStartDate;

  /// Create a copy of WeeklyStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyStatsModelImplCopyWith<_$WeeklyStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyStats _$DailyStatsFromJson(Map<String, dynamic> json) {
  return _DailyStats.fromJson(json);
}

/// @nodoc
mixin _$DailyStats {
  DateTime get date => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get carbonSaved => throw _privateConstructorUsedError;
  int get trips => throw _privateConstructorUsedError;
  Map<String, int> get transportModeCount => throw _privateConstructorUsedError;

  /// Serializes this DailyStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyStatsCopyWith<DailyStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyStatsCopyWith<$Res> {
  factory $DailyStatsCopyWith(
    DailyStats value,
    $Res Function(DailyStats) then,
  ) = _$DailyStatsCopyWithImpl<$Res, DailyStats>;
  @useResult
  $Res call({
    DateTime date,
    double distance,
    double carbonSaved,
    int trips,
    Map<String, int> transportModeCount,
  });
}

/// @nodoc
class _$DailyStatsCopyWithImpl<$Res, $Val extends DailyStats>
    implements $DailyStatsCopyWith<$Res> {
  _$DailyStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? distance = null,
    Object? carbonSaved = null,
    Object? trips = null,
    Object? transportModeCount = null,
  }) {
    return _then(
      _value.copyWith(
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double,
            carbonSaved:
                null == carbonSaved
                    ? _value.carbonSaved
                    : carbonSaved // ignore: cast_nullable_to_non_nullable
                        as double,
            trips:
                null == trips
                    ? _value.trips
                    : trips // ignore: cast_nullable_to_non_nullable
                        as int,
            transportModeCount:
                null == transportModeCount
                    ? _value.transportModeCount
                    : transportModeCount // ignore: cast_nullable_to_non_nullable
                        as Map<String, int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyStatsImplCopyWith<$Res>
    implements $DailyStatsCopyWith<$Res> {
  factory _$$DailyStatsImplCopyWith(
    _$DailyStatsImpl value,
    $Res Function(_$DailyStatsImpl) then,
  ) = __$$DailyStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime date,
    double distance,
    double carbonSaved,
    int trips,
    Map<String, int> transportModeCount,
  });
}

/// @nodoc
class __$$DailyStatsImplCopyWithImpl<$Res>
    extends _$DailyStatsCopyWithImpl<$Res, _$DailyStatsImpl>
    implements _$$DailyStatsImplCopyWith<$Res> {
  __$$DailyStatsImplCopyWithImpl(
    _$DailyStatsImpl _value,
    $Res Function(_$DailyStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? distance = null,
    Object? carbonSaved = null,
    Object? trips = null,
    Object? transportModeCount = null,
  }) {
    return _then(
      _$DailyStatsImpl(
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double,
        carbonSaved:
            null == carbonSaved
                ? _value.carbonSaved
                : carbonSaved // ignore: cast_nullable_to_non_nullable
                    as double,
        trips:
            null == trips
                ? _value.trips
                : trips // ignore: cast_nullable_to_non_nullable
                    as int,
        transportModeCount:
            null == transportModeCount
                ? _value._transportModeCount
                : transportModeCount // ignore: cast_nullable_to_non_nullable
                    as Map<String, int>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyStatsImpl implements _DailyStats {
  const _$DailyStatsImpl({
    required this.date,
    required this.distance,
    required this.carbonSaved,
    required this.trips,
    required final Map<String, int> transportModeCount,
  }) : _transportModeCount = transportModeCount;

  factory _$DailyStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyStatsImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double distance;
  @override
  final double carbonSaved;
  @override
  final int trips;
  final Map<String, int> _transportModeCount;
  @override
  Map<String, int> get transportModeCount {
    if (_transportModeCount is EqualUnmodifiableMapView)
      return _transportModeCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transportModeCount);
  }

  @override
  String toString() {
    return 'DailyStats(date: $date, distance: $distance, carbonSaved: $carbonSaved, trips: $trips, transportModeCount: $transportModeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyStatsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.carbonSaved, carbonSaved) ||
                other.carbonSaved == carbonSaved) &&
            (identical(other.trips, trips) || other.trips == trips) &&
            const DeepCollectionEquality().equals(
              other._transportModeCount,
              _transportModeCount,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    distance,
    carbonSaved,
    trips,
    const DeepCollectionEquality().hash(_transportModeCount),
  );

  /// Create a copy of DailyStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyStatsImplCopyWith<_$DailyStatsImpl> get copyWith =>
      __$$DailyStatsImplCopyWithImpl<_$DailyStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyStatsImplToJson(this);
  }
}

abstract class _DailyStats implements DailyStats {
  const factory _DailyStats({
    required final DateTime date,
    required final double distance,
    required final double carbonSaved,
    required final int trips,
    required final Map<String, int> transportModeCount,
  }) = _$DailyStatsImpl;

  factory _DailyStats.fromJson(Map<String, dynamic> json) =
      _$DailyStatsImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get distance;
  @override
  double get carbonSaved;
  @override
  int get trips;
  @override
  Map<String, int> get transportModeCount;

  /// Create a copy of DailyStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyStatsImplCopyWith<_$DailyStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
