// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_models.dart';

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
  @JsonKey(name: 'user_stats')
  UserStats get userStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'recent_trips')
  List<Trip> get recentTrips => throw _privateConstructorUsedError;
  @JsonKey(name: 'upcoming_trips')
  List<Trip> get upcomingTrips => throw _privateConstructorUsedError;
  @JsonKey(name: 'quick_actions')
  List<QuickAction> get quickActions => throw _privateConstructorUsedError;
  @JsonKey(name: 'achievements')
  List<Achievement> get achievements => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbon_footprint')
  CarbonFootprintData get carbonFootprint => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_summary')
  CostSummary get costSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_info')
  WeatherInfo? get weatherInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'traffic_alerts')
  List<TrafficAlert>? get trafficAlerts => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'user_stats') UserStats userStats,
    @JsonKey(name: 'recent_trips') List<Trip> recentTrips,
    @JsonKey(name: 'upcoming_trips') List<Trip> upcomingTrips,
    @JsonKey(name: 'quick_actions') List<QuickAction> quickActions,
    @JsonKey(name: 'achievements') List<Achievement> achievements,
    @JsonKey(name: 'carbon_footprint') CarbonFootprintData carbonFootprint,
    @JsonKey(name: 'cost_summary') CostSummary costSummary,
    @JsonKey(name: 'weather_info') WeatherInfo? weatherInfo,
    @JsonKey(name: 'traffic_alerts') List<TrafficAlert>? trafficAlerts,
  });

  $UserStatsCopyWith<$Res> get userStats;
  $CarbonFootprintDataCopyWith<$Res> get carbonFootprint;
  $CostSummaryCopyWith<$Res> get costSummary;
  $WeatherInfoCopyWith<$Res>? get weatherInfo;
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
    Object? userStats = null,
    Object? recentTrips = null,
    Object? upcomingTrips = null,
    Object? quickActions = null,
    Object? achievements = null,
    Object? carbonFootprint = null,
    Object? costSummary = null,
    Object? weatherInfo = freezed,
    Object? trafficAlerts = freezed,
  }) {
    return _then(
      _value.copyWith(
            userStats:
                null == userStats
                    ? _value.userStats
                    : userStats // ignore: cast_nullable_to_non_nullable
                        as UserStats,
            recentTrips:
                null == recentTrips
                    ? _value.recentTrips
                    : recentTrips // ignore: cast_nullable_to_non_nullable
                        as List<Trip>,
            upcomingTrips:
                null == upcomingTrips
                    ? _value.upcomingTrips
                    : upcomingTrips // ignore: cast_nullable_to_non_nullable
                        as List<Trip>,
            quickActions:
                null == quickActions
                    ? _value.quickActions
                    : quickActions // ignore: cast_nullable_to_non_nullable
                        as List<QuickAction>,
            achievements:
                null == achievements
                    ? _value.achievements
                    : achievements // ignore: cast_nullable_to_non_nullable
                        as List<Achievement>,
            carbonFootprint:
                null == carbonFootprint
                    ? _value.carbonFootprint
                    : carbonFootprint // ignore: cast_nullable_to_non_nullable
                        as CarbonFootprintData,
            costSummary:
                null == costSummary
                    ? _value.costSummary
                    : costSummary // ignore: cast_nullable_to_non_nullable
                        as CostSummary,
            weatherInfo:
                freezed == weatherInfo
                    ? _value.weatherInfo
                    : weatherInfo // ignore: cast_nullable_to_non_nullable
                        as WeatherInfo?,
            trafficAlerts:
                freezed == trafficAlerts
                    ? _value.trafficAlerts
                    : trafficAlerts // ignore: cast_nullable_to_non_nullable
                        as List<TrafficAlert>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatsCopyWith<$Res> get userStats {
    return $UserStatsCopyWith<$Res>(_value.userStats, (value) {
      return _then(_value.copyWith(userStats: value) as $Val);
    });
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarbonFootprintDataCopyWith<$Res> get carbonFootprint {
    return $CarbonFootprintDataCopyWith<$Res>(_value.carbonFootprint, (value) {
      return _then(_value.copyWith(carbonFootprint: value) as $Val);
    });
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CostSummaryCopyWith<$Res> get costSummary {
    return $CostSummaryCopyWith<$Res>(_value.costSummary, (value) {
      return _then(_value.copyWith(costSummary: value) as $Val);
    });
  }

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherInfoCopyWith<$Res>? get weatherInfo {
    if (_value.weatherInfo == null) {
      return null;
    }

    return $WeatherInfoCopyWith<$Res>(_value.weatherInfo!, (value) {
      return _then(_value.copyWith(weatherInfo: value) as $Val);
    });
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
    @JsonKey(name: 'user_stats') UserStats userStats,
    @JsonKey(name: 'recent_trips') List<Trip> recentTrips,
    @JsonKey(name: 'upcoming_trips') List<Trip> upcomingTrips,
    @JsonKey(name: 'quick_actions') List<QuickAction> quickActions,
    @JsonKey(name: 'achievements') List<Achievement> achievements,
    @JsonKey(name: 'carbon_footprint') CarbonFootprintData carbonFootprint,
    @JsonKey(name: 'cost_summary') CostSummary costSummary,
    @JsonKey(name: 'weather_info') WeatherInfo? weatherInfo,
    @JsonKey(name: 'traffic_alerts') List<TrafficAlert>? trafficAlerts,
  });

  @override
  $UserStatsCopyWith<$Res> get userStats;
  @override
  $CarbonFootprintDataCopyWith<$Res> get carbonFootprint;
  @override
  $CostSummaryCopyWith<$Res> get costSummary;
  @override
  $WeatherInfoCopyWith<$Res>? get weatherInfo;
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
    Object? userStats = null,
    Object? recentTrips = null,
    Object? upcomingTrips = null,
    Object? quickActions = null,
    Object? achievements = null,
    Object? carbonFootprint = null,
    Object? costSummary = null,
    Object? weatherInfo = freezed,
    Object? trafficAlerts = freezed,
  }) {
    return _then(
      _$DashboardDataImpl(
        userStats:
            null == userStats
                ? _value.userStats
                : userStats // ignore: cast_nullable_to_non_nullable
                    as UserStats,
        recentTrips:
            null == recentTrips
                ? _value._recentTrips
                : recentTrips // ignore: cast_nullable_to_non_nullable
                    as List<Trip>,
        upcomingTrips:
            null == upcomingTrips
                ? _value._upcomingTrips
                : upcomingTrips // ignore: cast_nullable_to_non_nullable
                    as List<Trip>,
        quickActions:
            null == quickActions
                ? _value._quickActions
                : quickActions // ignore: cast_nullable_to_non_nullable
                    as List<QuickAction>,
        achievements:
            null == achievements
                ? _value._achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                    as List<Achievement>,
        carbonFootprint:
            null == carbonFootprint
                ? _value.carbonFootprint
                : carbonFootprint // ignore: cast_nullable_to_non_nullable
                    as CarbonFootprintData,
        costSummary:
            null == costSummary
                ? _value.costSummary
                : costSummary // ignore: cast_nullable_to_non_nullable
                    as CostSummary,
        weatherInfo:
            freezed == weatherInfo
                ? _value.weatherInfo
                : weatherInfo // ignore: cast_nullable_to_non_nullable
                    as WeatherInfo?,
        trafficAlerts:
            freezed == trafficAlerts
                ? _value._trafficAlerts
                : trafficAlerts // ignore: cast_nullable_to_non_nullable
                    as List<TrafficAlert>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl({
    @JsonKey(name: 'user_stats') required this.userStats,
    @JsonKey(name: 'recent_trips') required final List<Trip> recentTrips,
    @JsonKey(name: 'upcoming_trips') required final List<Trip> upcomingTrips,
    @JsonKey(name: 'quick_actions')
    required final List<QuickAction> quickActions,
    @JsonKey(name: 'achievements')
    required final List<Achievement> achievements,
    @JsonKey(name: 'carbon_footprint') required this.carbonFootprint,
    @JsonKey(name: 'cost_summary') required this.costSummary,
    @JsonKey(name: 'weather_info') this.weatherInfo,
    @JsonKey(name: 'traffic_alerts') final List<TrafficAlert>? trafficAlerts,
  }) : _recentTrips = recentTrips,
       _upcomingTrips = upcomingTrips,
       _quickActions = quickActions,
       _achievements = achievements,
       _trafficAlerts = trafficAlerts;

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_stats')
  final UserStats userStats;
  final List<Trip> _recentTrips;
  @override
  @JsonKey(name: 'recent_trips')
  List<Trip> get recentTrips {
    if (_recentTrips is EqualUnmodifiableListView) return _recentTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTrips);
  }

  final List<Trip> _upcomingTrips;
  @override
  @JsonKey(name: 'upcoming_trips')
  List<Trip> get upcomingTrips {
    if (_upcomingTrips is EqualUnmodifiableListView) return _upcomingTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingTrips);
  }

  final List<QuickAction> _quickActions;
  @override
  @JsonKey(name: 'quick_actions')
  List<QuickAction> get quickActions {
    if (_quickActions is EqualUnmodifiableListView) return _quickActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickActions);
  }

  final List<Achievement> _achievements;
  @override
  @JsonKey(name: 'achievements')
  List<Achievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  @JsonKey(name: 'carbon_footprint')
  final CarbonFootprintData carbonFootprint;
  @override
  @JsonKey(name: 'cost_summary')
  final CostSummary costSummary;
  @override
  @JsonKey(name: 'weather_info')
  final WeatherInfo? weatherInfo;
  final List<TrafficAlert>? _trafficAlerts;
  @override
  @JsonKey(name: 'traffic_alerts')
  List<TrafficAlert>? get trafficAlerts {
    final value = _trafficAlerts;
    if (value == null) return null;
    if (_trafficAlerts is EqualUnmodifiableListView) return _trafficAlerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardData(userStats: $userStats, recentTrips: $recentTrips, upcomingTrips: $upcomingTrips, quickActions: $quickActions, achievements: $achievements, carbonFootprint: $carbonFootprint, costSummary: $costSummary, weatherInfo: $weatherInfo, trafficAlerts: $trafficAlerts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.userStats, userStats) ||
                other.userStats == userStats) &&
            const DeepCollectionEquality().equals(
              other._recentTrips,
              _recentTrips,
            ) &&
            const DeepCollectionEquality().equals(
              other._upcomingTrips,
              _upcomingTrips,
            ) &&
            const DeepCollectionEquality().equals(
              other._quickActions,
              _quickActions,
            ) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.carbonFootprint, carbonFootprint) ||
                other.carbonFootprint == carbonFootprint) &&
            (identical(other.costSummary, costSummary) ||
                other.costSummary == costSummary) &&
            (identical(other.weatherInfo, weatherInfo) ||
                other.weatherInfo == weatherInfo) &&
            const DeepCollectionEquality().equals(
              other._trafficAlerts,
              _trafficAlerts,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userStats,
    const DeepCollectionEquality().hash(_recentTrips),
    const DeepCollectionEquality().hash(_upcomingTrips),
    const DeepCollectionEquality().hash(_quickActions),
    const DeepCollectionEquality().hash(_achievements),
    carbonFootprint,
    costSummary,
    weatherInfo,
    const DeepCollectionEquality().hash(_trafficAlerts),
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
    @JsonKey(name: 'user_stats') required final UserStats userStats,
    @JsonKey(name: 'recent_trips') required final List<Trip> recentTrips,
    @JsonKey(name: 'upcoming_trips') required final List<Trip> upcomingTrips,
    @JsonKey(name: 'quick_actions')
    required final List<QuickAction> quickActions,
    @JsonKey(name: 'achievements')
    required final List<Achievement> achievements,
    @JsonKey(name: 'carbon_footprint')
    required final CarbonFootprintData carbonFootprint,
    @JsonKey(name: 'cost_summary') required final CostSummary costSummary,
    @JsonKey(name: 'weather_info') final WeatherInfo? weatherInfo,
    @JsonKey(name: 'traffic_alerts') final List<TrafficAlert>? trafficAlerts,
  }) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_stats')
  UserStats get userStats;
  @override
  @JsonKey(name: 'recent_trips')
  List<Trip> get recentTrips;
  @override
  @JsonKey(name: 'upcoming_trips')
  List<Trip> get upcomingTrips;
  @override
  @JsonKey(name: 'quick_actions')
  List<QuickAction> get quickActions;
  @override
  @JsonKey(name: 'achievements')
  List<Achievement> get achievements;
  @override
  @JsonKey(name: 'carbon_footprint')
  CarbonFootprintData get carbonFootprint;
  @override
  @JsonKey(name: 'cost_summary')
  CostSummary get costSummary;
  @override
  @JsonKey(name: 'weather_info')
  WeatherInfo? get weatherInfo;
  @override
  @JsonKey(name: 'traffic_alerts')
  List<TrafficAlert>? get trafficAlerts;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStats _$UserStatsFromJson(Map<String, dynamic> json) {
  return _UserStats.fromJson(json);
}

/// @nodoc
mixin _$UserStats {
  @JsonKey(name: 'total_trips')
  int get totalTrips => throw _privateConstructorUsedError;
  @JsonKey(name: 'trips_this_week')
  int get tripsThisWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'trips_this_month')
  int get tripsThisMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_distance_km')
  double get totalDistanceKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_time_hours')
  double get totalTimeHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_trip_duration')
  double get averageTripDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_transport_mode')
  String? get favoriteTransportMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'most_visited_location')
  LocationPoint? get mostVisitedLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'streak_days')
  int get streakDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_points')
  int get experiencePoints => throw _privateConstructorUsedError;

  /// Serializes this UserStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatsCopyWith<UserStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatsCopyWith<$Res> {
  factory $UserStatsCopyWith(UserStats value, $Res Function(UserStats) then) =
      _$UserStatsCopyWithImpl<$Res, UserStats>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_trips') int totalTrips,
    @JsonKey(name: 'trips_this_week') int tripsThisWeek,
    @JsonKey(name: 'trips_this_month') int tripsThisMonth,
    @JsonKey(name: 'total_distance_km') double totalDistanceKm,
    @JsonKey(name: 'total_time_hours') double totalTimeHours,
    @JsonKey(name: 'average_trip_duration') double averageTripDuration,
    @JsonKey(name: 'favorite_transport_mode') String? favoriteTransportMode,
    @JsonKey(name: 'most_visited_location') LocationPoint? mostVisitedLocation,
    @JsonKey(name: 'streak_days') int streakDays,
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'experience_points') int experiencePoints,
  });

  $LocationPointCopyWith<$Res>? get mostVisitedLocation;
}

/// @nodoc
class _$UserStatsCopyWithImpl<$Res, $Val extends UserStats>
    implements $UserStatsCopyWith<$Res> {
  _$UserStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? tripsThisWeek = null,
    Object? tripsThisMonth = null,
    Object? totalDistanceKm = null,
    Object? totalTimeHours = null,
    Object? averageTripDuration = null,
    Object? favoriteTransportMode = freezed,
    Object? mostVisitedLocation = freezed,
    Object? streakDays = null,
    Object? level = null,
    Object? experiencePoints = null,
  }) {
    return _then(
      _value.copyWith(
            totalTrips:
                null == totalTrips
                    ? _value.totalTrips
                    : totalTrips // ignore: cast_nullable_to_non_nullable
                        as int,
            tripsThisWeek:
                null == tripsThisWeek
                    ? _value.tripsThisWeek
                    : tripsThisWeek // ignore: cast_nullable_to_non_nullable
                        as int,
            tripsThisMonth:
                null == tripsThisMonth
                    ? _value.tripsThisMonth
                    : tripsThisMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            totalDistanceKm:
                null == totalDistanceKm
                    ? _value.totalDistanceKm
                    : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                        as double,
            totalTimeHours:
                null == totalTimeHours
                    ? _value.totalTimeHours
                    : totalTimeHours // ignore: cast_nullable_to_non_nullable
                        as double,
            averageTripDuration:
                null == averageTripDuration
                    ? _value.averageTripDuration
                    : averageTripDuration // ignore: cast_nullable_to_non_nullable
                        as double,
            favoriteTransportMode:
                freezed == favoriteTransportMode
                    ? _value.favoriteTransportMode
                    : favoriteTransportMode // ignore: cast_nullable_to_non_nullable
                        as String?,
            mostVisitedLocation:
                freezed == mostVisitedLocation
                    ? _value.mostVisitedLocation
                    : mostVisitedLocation // ignore: cast_nullable_to_non_nullable
                        as LocationPoint?,
            streakDays:
                null == streakDays
                    ? _value.streakDays
                    : streakDays // ignore: cast_nullable_to_non_nullable
                        as int,
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as int,
            experiencePoints:
                null == experiencePoints
                    ? _value.experiencePoints
                    : experiencePoints // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res>? get mostVisitedLocation {
    if (_value.mostVisitedLocation == null) {
      return null;
    }

    return $LocationPointCopyWith<$Res>(_value.mostVisitedLocation!, (value) {
      return _then(_value.copyWith(mostVisitedLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStatsImplCopyWith<$Res>
    implements $UserStatsCopyWith<$Res> {
  factory _$$UserStatsImplCopyWith(
    _$UserStatsImpl value,
    $Res Function(_$UserStatsImpl) then,
  ) = __$$UserStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_trips') int totalTrips,
    @JsonKey(name: 'trips_this_week') int tripsThisWeek,
    @JsonKey(name: 'trips_this_month') int tripsThisMonth,
    @JsonKey(name: 'total_distance_km') double totalDistanceKm,
    @JsonKey(name: 'total_time_hours') double totalTimeHours,
    @JsonKey(name: 'average_trip_duration') double averageTripDuration,
    @JsonKey(name: 'favorite_transport_mode') String? favoriteTransportMode,
    @JsonKey(name: 'most_visited_location') LocationPoint? mostVisitedLocation,
    @JsonKey(name: 'streak_days') int streakDays,
    @JsonKey(name: 'level') int level,
    @JsonKey(name: 'experience_points') int experiencePoints,
  });

  @override
  $LocationPointCopyWith<$Res>? get mostVisitedLocation;
}

/// @nodoc
class __$$UserStatsImplCopyWithImpl<$Res>
    extends _$UserStatsCopyWithImpl<$Res, _$UserStatsImpl>
    implements _$$UserStatsImplCopyWith<$Res> {
  __$$UserStatsImplCopyWithImpl(
    _$UserStatsImpl _value,
    $Res Function(_$UserStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? tripsThisWeek = null,
    Object? tripsThisMonth = null,
    Object? totalDistanceKm = null,
    Object? totalTimeHours = null,
    Object? averageTripDuration = null,
    Object? favoriteTransportMode = freezed,
    Object? mostVisitedLocation = freezed,
    Object? streakDays = null,
    Object? level = null,
    Object? experiencePoints = null,
  }) {
    return _then(
      _$UserStatsImpl(
        totalTrips:
            null == totalTrips
                ? _value.totalTrips
                : totalTrips // ignore: cast_nullable_to_non_nullable
                    as int,
        tripsThisWeek:
            null == tripsThisWeek
                ? _value.tripsThisWeek
                : tripsThisWeek // ignore: cast_nullable_to_non_nullable
                    as int,
        tripsThisMonth:
            null == tripsThisMonth
                ? _value.tripsThisMonth
                : tripsThisMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        totalDistanceKm:
            null == totalDistanceKm
                ? _value.totalDistanceKm
                : totalDistanceKm // ignore: cast_nullable_to_non_nullable
                    as double,
        totalTimeHours:
            null == totalTimeHours
                ? _value.totalTimeHours
                : totalTimeHours // ignore: cast_nullable_to_non_nullable
                    as double,
        averageTripDuration:
            null == averageTripDuration
                ? _value.averageTripDuration
                : averageTripDuration // ignore: cast_nullable_to_non_nullable
                    as double,
        favoriteTransportMode:
            freezed == favoriteTransportMode
                ? _value.favoriteTransportMode
                : favoriteTransportMode // ignore: cast_nullable_to_non_nullable
                    as String?,
        mostVisitedLocation:
            freezed == mostVisitedLocation
                ? _value.mostVisitedLocation
                : mostVisitedLocation // ignore: cast_nullable_to_non_nullable
                    as LocationPoint?,
        streakDays:
            null == streakDays
                ? _value.streakDays
                : streakDays // ignore: cast_nullable_to_non_nullable
                    as int,
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as int,
        experiencePoints:
            null == experiencePoints
                ? _value.experiencePoints
                : experiencePoints // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatsImpl implements _UserStats {
  const _$UserStatsImpl({
    @JsonKey(name: 'total_trips') required this.totalTrips,
    @JsonKey(name: 'trips_this_week') required this.tripsThisWeek,
    @JsonKey(name: 'trips_this_month') required this.tripsThisMonth,
    @JsonKey(name: 'total_distance_km') required this.totalDistanceKm,
    @JsonKey(name: 'total_time_hours') required this.totalTimeHours,
    @JsonKey(name: 'average_trip_duration') required this.averageTripDuration,
    @JsonKey(name: 'favorite_transport_mode') this.favoriteTransportMode,
    @JsonKey(name: 'most_visited_location') this.mostVisitedLocation,
    @JsonKey(name: 'streak_days') required this.streakDays,
    @JsonKey(name: 'level') required this.level,
    @JsonKey(name: 'experience_points') required this.experiencePoints,
  });

  factory _$UserStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatsImplFromJson(json);

  @override
  @JsonKey(name: 'total_trips')
  final int totalTrips;
  @override
  @JsonKey(name: 'trips_this_week')
  final int tripsThisWeek;
  @override
  @JsonKey(name: 'trips_this_month')
  final int tripsThisMonth;
  @override
  @JsonKey(name: 'total_distance_km')
  final double totalDistanceKm;
  @override
  @JsonKey(name: 'total_time_hours')
  final double totalTimeHours;
  @override
  @JsonKey(name: 'average_trip_duration')
  final double averageTripDuration;
  @override
  @JsonKey(name: 'favorite_transport_mode')
  final String? favoriteTransportMode;
  @override
  @JsonKey(name: 'most_visited_location')
  final LocationPoint? mostVisitedLocation;
  @override
  @JsonKey(name: 'streak_days')
  final int streakDays;
  @override
  @JsonKey(name: 'level')
  final int level;
  @override
  @JsonKey(name: 'experience_points')
  final int experiencePoints;

  @override
  String toString() {
    return 'UserStats(totalTrips: $totalTrips, tripsThisWeek: $tripsThisWeek, tripsThisMonth: $tripsThisMonth, totalDistanceKm: $totalDistanceKm, totalTimeHours: $totalTimeHours, averageTripDuration: $averageTripDuration, favoriteTransportMode: $favoriteTransportMode, mostVisitedLocation: $mostVisitedLocation, streakDays: $streakDays, level: $level, experiencePoints: $experiencePoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatsImpl &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.tripsThisWeek, tripsThisWeek) ||
                other.tripsThisWeek == tripsThisWeek) &&
            (identical(other.tripsThisMonth, tripsThisMonth) ||
                other.tripsThisMonth == tripsThisMonth) &&
            (identical(other.totalDistanceKm, totalDistanceKm) ||
                other.totalDistanceKm == totalDistanceKm) &&
            (identical(other.totalTimeHours, totalTimeHours) ||
                other.totalTimeHours == totalTimeHours) &&
            (identical(other.averageTripDuration, averageTripDuration) ||
                other.averageTripDuration == averageTripDuration) &&
            (identical(other.favoriteTransportMode, favoriteTransportMode) ||
                other.favoriteTransportMode == favoriteTransportMode) &&
            (identical(other.mostVisitedLocation, mostVisitedLocation) ||
                other.mostVisitedLocation == mostVisitedLocation) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.experiencePoints, experiencePoints) ||
                other.experiencePoints == experiencePoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalTrips,
    tripsThisWeek,
    tripsThisMonth,
    totalDistanceKm,
    totalTimeHours,
    averageTripDuration,
    favoriteTransportMode,
    mostVisitedLocation,
    streakDays,
    level,
    experiencePoints,
  );

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      __$$UserStatsImplCopyWithImpl<_$UserStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatsImplToJson(this);
  }
}

abstract class _UserStats implements UserStats {
  const factory _UserStats({
    @JsonKey(name: 'total_trips') required final int totalTrips,
    @JsonKey(name: 'trips_this_week') required final int tripsThisWeek,
    @JsonKey(name: 'trips_this_month') required final int tripsThisMonth,
    @JsonKey(name: 'total_distance_km') required final double totalDistanceKm,
    @JsonKey(name: 'total_time_hours') required final double totalTimeHours,
    @JsonKey(name: 'average_trip_duration')
    required final double averageTripDuration,
    @JsonKey(name: 'favorite_transport_mode')
    final String? favoriteTransportMode,
    @JsonKey(name: 'most_visited_location')
    final LocationPoint? mostVisitedLocation,
    @JsonKey(name: 'streak_days') required final int streakDays,
    @JsonKey(name: 'level') required final int level,
    @JsonKey(name: 'experience_points') required final int experiencePoints,
  }) = _$UserStatsImpl;

  factory _UserStats.fromJson(Map<String, dynamic> json) =
      _$UserStatsImpl.fromJson;

  @override
  @JsonKey(name: 'total_trips')
  int get totalTrips;
  @override
  @JsonKey(name: 'trips_this_week')
  int get tripsThisWeek;
  @override
  @JsonKey(name: 'trips_this_month')
  int get tripsThisMonth;
  @override
  @JsonKey(name: 'total_distance_km')
  double get totalDistanceKm;
  @override
  @JsonKey(name: 'total_time_hours')
  double get totalTimeHours;
  @override
  @JsonKey(name: 'average_trip_duration')
  double get averageTripDuration;
  @override
  @JsonKey(name: 'favorite_transport_mode')
  String? get favoriteTransportMode;
  @override
  @JsonKey(name: 'most_visited_location')
  LocationPoint? get mostVisitedLocation;
  @override
  @JsonKey(name: 'streak_days')
  int get streakDays;
  @override
  @JsonKey(name: 'level')
  int get level;
  @override
  @JsonKey(name: 'experience_points')
  int get experiencePoints;

  /// Create a copy of UserStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatsImplCopyWith<_$UserStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuickAction _$QuickActionFromJson(Map<String, dynamic> json) {
  return _QuickAction.fromJson(json);
}

/// @nodoc
mixin _$QuickAction {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_data')
  Map<String, dynamic>? get actionData => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Serializes this QuickAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuickAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickActionCopyWith<QuickAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickActionCopyWith<$Res> {
  factory $QuickActionCopyWith(
    QuickAction value,
    $Res Function(QuickAction) then,
  ) = _$QuickActionCopyWithImpl<$Res, QuickAction>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    String action,
    @JsonKey(name: 'action_data') Map<String, dynamic>? actionData,
    @JsonKey(name: 'is_enabled') bool isEnabled,
  });
}

/// @nodoc
class _$QuickActionCopyWithImpl<$Res, $Val extends QuickAction>
    implements $QuickActionCopyWith<$Res> {
  _$QuickActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? action = null,
    Object? actionData = freezed,
    Object? isEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            action:
                null == action
                    ? _value.action
                    : action // ignore: cast_nullable_to_non_nullable
                        as String,
            actionData:
                freezed == actionData
                    ? _value.actionData
                    : actionData // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            isEnabled:
                null == isEnabled
                    ? _value.isEnabled
                    : isEnabled // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuickActionImplCopyWith<$Res>
    implements $QuickActionCopyWith<$Res> {
  factory _$$QuickActionImplCopyWith(
    _$QuickActionImpl value,
    $Res Function(_$QuickActionImpl) then,
  ) = __$$QuickActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    String action,
    @JsonKey(name: 'action_data') Map<String, dynamic>? actionData,
    @JsonKey(name: 'is_enabled') bool isEnabled,
  });
}

/// @nodoc
class __$$QuickActionImplCopyWithImpl<$Res>
    extends _$QuickActionCopyWithImpl<$Res, _$QuickActionImpl>
    implements _$$QuickActionImplCopyWith<$Res> {
  __$$QuickActionImplCopyWithImpl(
    _$QuickActionImpl _value,
    $Res Function(_$QuickActionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuickAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? action = null,
    Object? actionData = freezed,
    Object? isEnabled = null,
  }) {
    return _then(
      _$QuickActionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        action:
            null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                    as String,
        actionData:
            freezed == actionData
                ? _value._actionData
                : actionData // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        isEnabled:
            null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuickActionImpl implements _QuickAction {
  const _$QuickActionImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.action,
    @JsonKey(name: 'action_data') final Map<String, dynamic>? actionData,
    @JsonKey(name: 'is_enabled') required this.isEnabled,
  }) : _actionData = actionData;

  factory _$QuickActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuickActionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String icon;
  @override
  final String action;
  final Map<String, dynamic>? _actionData;
  @override
  @JsonKey(name: 'action_data')
  Map<String, dynamic>? get actionData {
    final value = _actionData;
    if (value == null) return null;
    if (_actionData is EqualUnmodifiableMapView) return _actionData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'QuickAction(id: $id, title: $title, description: $description, icon: $icon, action: $action, actionData: $actionData, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(
              other._actionData,
              _actionData,
            ) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    icon,
    action,
    const DeepCollectionEquality().hash(_actionData),
    isEnabled,
  );

  /// Create a copy of QuickAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickActionImplCopyWith<_$QuickActionImpl> get copyWith =>
      __$$QuickActionImplCopyWithImpl<_$QuickActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuickActionImplToJson(this);
  }
}

abstract class _QuickAction implements QuickAction {
  const factory _QuickAction({
    required final String id,
    required final String title,
    required final String description,
    required final String icon,
    required final String action,
    @JsonKey(name: 'action_data') final Map<String, dynamic>? actionData,
    @JsonKey(name: 'is_enabled') required final bool isEnabled,
  }) = _$QuickActionImpl;

  factory _QuickAction.fromJson(Map<String, dynamic> json) =
      _$QuickActionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get icon;
  @override
  String get action;
  @override
  @JsonKey(name: 'action_data')
  Map<String, dynamic>? get actionData;
  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;

  /// Create a copy of QuickAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickActionImplCopyWith<_$QuickActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'achievement_type')
  String get achievementType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_unlocked')
  bool get isUnlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'unlocked_at')
  DateTime? get unlockedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'progress_current')
  int? get progressCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'progress_target')
  int? get progressTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_points')
  int? get rewardPoints => throw _privateConstructorUsedError;

  /// Serializes this Achievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
    Achievement value,
    $Res Function(Achievement) then,
  ) = _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    @JsonKey(name: 'achievement_type') String achievementType,
    @JsonKey(name: 'is_unlocked') bool isUnlocked,
    @JsonKey(name: 'unlocked_at') DateTime? unlockedAt,
    @JsonKey(name: 'progress_current') int? progressCurrent,
    @JsonKey(name: 'progress_target') int? progressTarget,
    @JsonKey(name: 'reward_points') int? rewardPoints,
  });
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? achievementType = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
    Object? progressCurrent = freezed,
    Object? progressTarget = freezed,
    Object? rewardPoints = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            achievementType:
                null == achievementType
                    ? _value.achievementType
                    : achievementType // ignore: cast_nullable_to_non_nullable
                        as String,
            isUnlocked:
                null == isUnlocked
                    ? _value.isUnlocked
                    : isUnlocked // ignore: cast_nullable_to_non_nullable
                        as bool,
            unlockedAt:
                freezed == unlockedAt
                    ? _value.unlockedAt
                    : unlockedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            progressCurrent:
                freezed == progressCurrent
                    ? _value.progressCurrent
                    : progressCurrent // ignore: cast_nullable_to_non_nullable
                        as int?,
            progressTarget:
                freezed == progressTarget
                    ? _value.progressTarget
                    : progressTarget // ignore: cast_nullable_to_non_nullable
                        as int?,
            rewardPoints:
                freezed == rewardPoints
                    ? _value.rewardPoints
                    : rewardPoints // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
    _$AchievementImpl value,
    $Res Function(_$AchievementImpl) then,
  ) = __$$AchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String icon,
    @JsonKey(name: 'achievement_type') String achievementType,
    @JsonKey(name: 'is_unlocked') bool isUnlocked,
    @JsonKey(name: 'unlocked_at') DateTime? unlockedAt,
    @JsonKey(name: 'progress_current') int? progressCurrent,
    @JsonKey(name: 'progress_target') int? progressTarget,
    @JsonKey(name: 'reward_points') int? rewardPoints,
  });
}

/// @nodoc
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
    _$AchievementImpl _value,
    $Res Function(_$AchievementImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? achievementType = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
    Object? progressCurrent = freezed,
    Object? progressTarget = freezed,
    Object? rewardPoints = freezed,
  }) {
    return _then(
      _$AchievementImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        achievementType:
            null == achievementType
                ? _value.achievementType
                : achievementType // ignore: cast_nullable_to_non_nullable
                    as String,
        isUnlocked:
            null == isUnlocked
                ? _value.isUnlocked
                : isUnlocked // ignore: cast_nullable_to_non_nullable
                    as bool,
        unlockedAt:
            freezed == unlockedAt
                ? _value.unlockedAt
                : unlockedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        progressCurrent:
            freezed == progressCurrent
                ? _value.progressCurrent
                : progressCurrent // ignore: cast_nullable_to_non_nullable
                    as int?,
        progressTarget:
            freezed == progressTarget
                ? _value.progressTarget
                : progressTarget // ignore: cast_nullable_to_non_nullable
                    as int?,
        rewardPoints:
            freezed == rewardPoints
                ? _value.rewardPoints
                : rewardPoints // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementImpl implements _Achievement {
  const _$AchievementImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    @JsonKey(name: 'achievement_type') required this.achievementType,
    @JsonKey(name: 'is_unlocked') required this.isUnlocked,
    @JsonKey(name: 'unlocked_at') this.unlockedAt,
    @JsonKey(name: 'progress_current') this.progressCurrent,
    @JsonKey(name: 'progress_target') this.progressTarget,
    @JsonKey(name: 'reward_points') this.rewardPoints,
  });

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String icon;
  @override
  @JsonKey(name: 'achievement_type')
  final String achievementType;
  @override
  @JsonKey(name: 'is_unlocked')
  final bool isUnlocked;
  @override
  @JsonKey(name: 'unlocked_at')
  final DateTime? unlockedAt;
  @override
  @JsonKey(name: 'progress_current')
  final int? progressCurrent;
  @override
  @JsonKey(name: 'progress_target')
  final int? progressTarget;
  @override
  @JsonKey(name: 'reward_points')
  final int? rewardPoints;

  @override
  String toString() {
    return 'Achievement(id: $id, title: $title, description: $description, icon: $icon, achievementType: $achievementType, isUnlocked: $isUnlocked, unlockedAt: $unlockedAt, progressCurrent: $progressCurrent, progressTarget: $progressTarget, rewardPoints: $rewardPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.achievementType, achievementType) ||
                other.achievementType == achievementType) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.unlockedAt, unlockedAt) ||
                other.unlockedAt == unlockedAt) &&
            (identical(other.progressCurrent, progressCurrent) ||
                other.progressCurrent == progressCurrent) &&
            (identical(other.progressTarget, progressTarget) ||
                other.progressTarget == progressTarget) &&
            (identical(other.rewardPoints, rewardPoints) ||
                other.rewardPoints == rewardPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    icon,
    achievementType,
    isUnlocked,
    unlockedAt,
    progressCurrent,
    progressTarget,
    rewardPoints,
  );

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(this);
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement({
    required final String id,
    required final String title,
    required final String description,
    required final String icon,
    @JsonKey(name: 'achievement_type') required final String achievementType,
    @JsonKey(name: 'is_unlocked') required final bool isUnlocked,
    @JsonKey(name: 'unlocked_at') final DateTime? unlockedAt,
    @JsonKey(name: 'progress_current') final int? progressCurrent,
    @JsonKey(name: 'progress_target') final int? progressTarget,
    @JsonKey(name: 'reward_points') final int? rewardPoints,
  }) = _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(name: 'achievement_type')
  String get achievementType;
  @override
  @JsonKey(name: 'is_unlocked')
  bool get isUnlocked;
  @override
  @JsonKey(name: 'unlocked_at')
  DateTime? get unlockedAt;
  @override
  @JsonKey(name: 'progress_current')
  int? get progressCurrent;
  @override
  @JsonKey(name: 'progress_target')
  int? get progressTarget;
  @override
  @JsonKey(name: 'reward_points')
  int? get rewardPoints;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarbonFootprintData _$CarbonFootprintDataFromJson(Map<String, dynamic> json) {
  return _CarbonFootprintData.fromJson(json);
}

/// @nodoc
mixin _$CarbonFootprintData {
  @JsonKey(name: 'total_emissions_kg')
  double get totalEmissionsKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_week_kg')
  double get thisWeekKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_month_kg')
  double get thisMonthKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'saved_emissions_kg')
  double get savedEmissionsKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'comparison_average')
  double? get comparisonAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'reduction_percentage')
  double? get reductionPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_trend')
  List<WeeklyEmission> get weeklyTrend => throw _privateConstructorUsedError;
  @JsonKey(name: 'transport_breakdown')
  List<TransportEmission> get transportBreakdown =>
      throw _privateConstructorUsedError;

  /// Serializes this CarbonFootprintData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarbonFootprintData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarbonFootprintDataCopyWith<CarbonFootprintData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarbonFootprintDataCopyWith<$Res> {
  factory $CarbonFootprintDataCopyWith(
    CarbonFootprintData value,
    $Res Function(CarbonFootprintData) then,
  ) = _$CarbonFootprintDataCopyWithImpl<$Res, CarbonFootprintData>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_emissions_kg') double totalEmissionsKg,
    @JsonKey(name: 'this_week_kg') double thisWeekKg,
    @JsonKey(name: 'this_month_kg') double thisMonthKg,
    @JsonKey(name: 'saved_emissions_kg') double savedEmissionsKg,
    @JsonKey(name: 'comparison_average') double? comparisonAverage,
    @JsonKey(name: 'reduction_percentage') double? reductionPercentage,
    @JsonKey(name: 'weekly_trend') List<WeeklyEmission> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    List<TransportEmission> transportBreakdown,
  });
}

/// @nodoc
class _$CarbonFootprintDataCopyWithImpl<$Res, $Val extends CarbonFootprintData>
    implements $CarbonFootprintDataCopyWith<$Res> {
  _$CarbonFootprintDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarbonFootprintData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmissionsKg = null,
    Object? thisWeekKg = null,
    Object? thisMonthKg = null,
    Object? savedEmissionsKg = null,
    Object? comparisonAverage = freezed,
    Object? reductionPercentage = freezed,
    Object? weeklyTrend = null,
    Object? transportBreakdown = null,
  }) {
    return _then(
      _value.copyWith(
            totalEmissionsKg:
                null == totalEmissionsKg
                    ? _value.totalEmissionsKg
                    : totalEmissionsKg // ignore: cast_nullable_to_non_nullable
                        as double,
            thisWeekKg:
                null == thisWeekKg
                    ? _value.thisWeekKg
                    : thisWeekKg // ignore: cast_nullable_to_non_nullable
                        as double,
            thisMonthKg:
                null == thisMonthKg
                    ? _value.thisMonthKg
                    : thisMonthKg // ignore: cast_nullable_to_non_nullable
                        as double,
            savedEmissionsKg:
                null == savedEmissionsKg
                    ? _value.savedEmissionsKg
                    : savedEmissionsKg // ignore: cast_nullable_to_non_nullable
                        as double,
            comparisonAverage:
                freezed == comparisonAverage
                    ? _value.comparisonAverage
                    : comparisonAverage // ignore: cast_nullable_to_non_nullable
                        as double?,
            reductionPercentage:
                freezed == reductionPercentage
                    ? _value.reductionPercentage
                    : reductionPercentage // ignore: cast_nullable_to_non_nullable
                        as double?,
            weeklyTrend:
                null == weeklyTrend
                    ? _value.weeklyTrend
                    : weeklyTrend // ignore: cast_nullable_to_non_nullable
                        as List<WeeklyEmission>,
            transportBreakdown:
                null == transportBreakdown
                    ? _value.transportBreakdown
                    : transportBreakdown // ignore: cast_nullable_to_non_nullable
                        as List<TransportEmission>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CarbonFootprintDataImplCopyWith<$Res>
    implements $CarbonFootprintDataCopyWith<$Res> {
  factory _$$CarbonFootprintDataImplCopyWith(
    _$CarbonFootprintDataImpl value,
    $Res Function(_$CarbonFootprintDataImpl) then,
  ) = __$$CarbonFootprintDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_emissions_kg') double totalEmissionsKg,
    @JsonKey(name: 'this_week_kg') double thisWeekKg,
    @JsonKey(name: 'this_month_kg') double thisMonthKg,
    @JsonKey(name: 'saved_emissions_kg') double savedEmissionsKg,
    @JsonKey(name: 'comparison_average') double? comparisonAverage,
    @JsonKey(name: 'reduction_percentage') double? reductionPercentage,
    @JsonKey(name: 'weekly_trend') List<WeeklyEmission> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    List<TransportEmission> transportBreakdown,
  });
}

/// @nodoc
class __$$CarbonFootprintDataImplCopyWithImpl<$Res>
    extends _$CarbonFootprintDataCopyWithImpl<$Res, _$CarbonFootprintDataImpl>
    implements _$$CarbonFootprintDataImplCopyWith<$Res> {
  __$$CarbonFootprintDataImplCopyWithImpl(
    _$CarbonFootprintDataImpl _value,
    $Res Function(_$CarbonFootprintDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarbonFootprintData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmissionsKg = null,
    Object? thisWeekKg = null,
    Object? thisMonthKg = null,
    Object? savedEmissionsKg = null,
    Object? comparisonAverage = freezed,
    Object? reductionPercentage = freezed,
    Object? weeklyTrend = null,
    Object? transportBreakdown = null,
  }) {
    return _then(
      _$CarbonFootprintDataImpl(
        totalEmissionsKg:
            null == totalEmissionsKg
                ? _value.totalEmissionsKg
                : totalEmissionsKg // ignore: cast_nullable_to_non_nullable
                    as double,
        thisWeekKg:
            null == thisWeekKg
                ? _value.thisWeekKg
                : thisWeekKg // ignore: cast_nullable_to_non_nullable
                    as double,
        thisMonthKg:
            null == thisMonthKg
                ? _value.thisMonthKg
                : thisMonthKg // ignore: cast_nullable_to_non_nullable
                    as double,
        savedEmissionsKg:
            null == savedEmissionsKg
                ? _value.savedEmissionsKg
                : savedEmissionsKg // ignore: cast_nullable_to_non_nullable
                    as double,
        comparisonAverage:
            freezed == comparisonAverage
                ? _value.comparisonAverage
                : comparisonAverage // ignore: cast_nullable_to_non_nullable
                    as double?,
        reductionPercentage:
            freezed == reductionPercentage
                ? _value.reductionPercentage
                : reductionPercentage // ignore: cast_nullable_to_non_nullable
                    as double?,
        weeklyTrend:
            null == weeklyTrend
                ? _value._weeklyTrend
                : weeklyTrend // ignore: cast_nullable_to_non_nullable
                    as List<WeeklyEmission>,
        transportBreakdown:
            null == transportBreakdown
                ? _value._transportBreakdown
                : transportBreakdown // ignore: cast_nullable_to_non_nullable
                    as List<TransportEmission>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarbonFootprintDataImpl implements _CarbonFootprintData {
  const _$CarbonFootprintDataImpl({
    @JsonKey(name: 'total_emissions_kg') required this.totalEmissionsKg,
    @JsonKey(name: 'this_week_kg') required this.thisWeekKg,
    @JsonKey(name: 'this_month_kg') required this.thisMonthKg,
    @JsonKey(name: 'saved_emissions_kg') required this.savedEmissionsKg,
    @JsonKey(name: 'comparison_average') this.comparisonAverage,
    @JsonKey(name: 'reduction_percentage') this.reductionPercentage,
    @JsonKey(name: 'weekly_trend')
    required final List<WeeklyEmission> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    required final List<TransportEmission> transportBreakdown,
  }) : _weeklyTrend = weeklyTrend,
       _transportBreakdown = transportBreakdown;

  factory _$CarbonFootprintDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarbonFootprintDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_emissions_kg')
  final double totalEmissionsKg;
  @override
  @JsonKey(name: 'this_week_kg')
  final double thisWeekKg;
  @override
  @JsonKey(name: 'this_month_kg')
  final double thisMonthKg;
  @override
  @JsonKey(name: 'saved_emissions_kg')
  final double savedEmissionsKg;
  @override
  @JsonKey(name: 'comparison_average')
  final double? comparisonAverage;
  @override
  @JsonKey(name: 'reduction_percentage')
  final double? reductionPercentage;
  final List<WeeklyEmission> _weeklyTrend;
  @override
  @JsonKey(name: 'weekly_trend')
  List<WeeklyEmission> get weeklyTrend {
    if (_weeklyTrend is EqualUnmodifiableListView) return _weeklyTrend;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyTrend);
  }

  final List<TransportEmission> _transportBreakdown;
  @override
  @JsonKey(name: 'transport_breakdown')
  List<TransportEmission> get transportBreakdown {
    if (_transportBreakdown is EqualUnmodifiableListView)
      return _transportBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportBreakdown);
  }

  @override
  String toString() {
    return 'CarbonFootprintData(totalEmissionsKg: $totalEmissionsKg, thisWeekKg: $thisWeekKg, thisMonthKg: $thisMonthKg, savedEmissionsKg: $savedEmissionsKg, comparisonAverage: $comparisonAverage, reductionPercentage: $reductionPercentage, weeklyTrend: $weeklyTrend, transportBreakdown: $transportBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarbonFootprintDataImpl &&
            (identical(other.totalEmissionsKg, totalEmissionsKg) ||
                other.totalEmissionsKg == totalEmissionsKg) &&
            (identical(other.thisWeekKg, thisWeekKg) ||
                other.thisWeekKg == thisWeekKg) &&
            (identical(other.thisMonthKg, thisMonthKg) ||
                other.thisMonthKg == thisMonthKg) &&
            (identical(other.savedEmissionsKg, savedEmissionsKg) ||
                other.savedEmissionsKg == savedEmissionsKg) &&
            (identical(other.comparisonAverage, comparisonAverage) ||
                other.comparisonAverage == comparisonAverage) &&
            (identical(other.reductionPercentage, reductionPercentage) ||
                other.reductionPercentage == reductionPercentage) &&
            const DeepCollectionEquality().equals(
              other._weeklyTrend,
              _weeklyTrend,
            ) &&
            const DeepCollectionEquality().equals(
              other._transportBreakdown,
              _transportBreakdown,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalEmissionsKg,
    thisWeekKg,
    thisMonthKg,
    savedEmissionsKg,
    comparisonAverage,
    reductionPercentage,
    const DeepCollectionEquality().hash(_weeklyTrend),
    const DeepCollectionEquality().hash(_transportBreakdown),
  );

  /// Create a copy of CarbonFootprintData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarbonFootprintDataImplCopyWith<_$CarbonFootprintDataImpl> get copyWith =>
      __$$CarbonFootprintDataImplCopyWithImpl<_$CarbonFootprintDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CarbonFootprintDataImplToJson(this);
  }
}

abstract class _CarbonFootprintData implements CarbonFootprintData {
  const factory _CarbonFootprintData({
    @JsonKey(name: 'total_emissions_kg') required final double totalEmissionsKg,
    @JsonKey(name: 'this_week_kg') required final double thisWeekKg,
    @JsonKey(name: 'this_month_kg') required final double thisMonthKg,
    @JsonKey(name: 'saved_emissions_kg') required final double savedEmissionsKg,
    @JsonKey(name: 'comparison_average') final double? comparisonAverage,
    @JsonKey(name: 'reduction_percentage') final double? reductionPercentage,
    @JsonKey(name: 'weekly_trend')
    required final List<WeeklyEmission> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    required final List<TransportEmission> transportBreakdown,
  }) = _$CarbonFootprintDataImpl;

  factory _CarbonFootprintData.fromJson(Map<String, dynamic> json) =
      _$CarbonFootprintDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_emissions_kg')
  double get totalEmissionsKg;
  @override
  @JsonKey(name: 'this_week_kg')
  double get thisWeekKg;
  @override
  @JsonKey(name: 'this_month_kg')
  double get thisMonthKg;
  @override
  @JsonKey(name: 'saved_emissions_kg')
  double get savedEmissionsKg;
  @override
  @JsonKey(name: 'comparison_average')
  double? get comparisonAverage;
  @override
  @JsonKey(name: 'reduction_percentage')
  double? get reductionPercentage;
  @override
  @JsonKey(name: 'weekly_trend')
  List<WeeklyEmission> get weeklyTrend;
  @override
  @JsonKey(name: 'transport_breakdown')
  List<TransportEmission> get transportBreakdown;

  /// Create a copy of CarbonFootprintData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarbonFootprintDataImplCopyWith<_$CarbonFootprintDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyEmission _$WeeklyEmissionFromJson(Map<String, dynamic> json) {
  return _WeeklyEmission.fromJson(json);
}

/// @nodoc
mixin _$WeeklyEmission {
  @JsonKey(name: 'week_start')
  DateTime get weekStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'emissions_kg')
  double get emissionsKg => throw _privateConstructorUsedError;

  /// Serializes this WeeklyEmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyEmissionCopyWith<WeeklyEmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyEmissionCopyWith<$Res> {
  factory $WeeklyEmissionCopyWith(
    WeeklyEmission value,
    $Res Function(WeeklyEmission) then,
  ) = _$WeeklyEmissionCopyWithImpl<$Res, WeeklyEmission>;
  @useResult
  $Res call({
    @JsonKey(name: 'week_start') DateTime weekStart,
    @JsonKey(name: 'emissions_kg') double emissionsKg,
  });
}

/// @nodoc
class _$WeeklyEmissionCopyWithImpl<$Res, $Val extends WeeklyEmission>
    implements $WeeklyEmissionCopyWith<$Res> {
  _$WeeklyEmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weekStart = null, Object? emissionsKg = null}) {
    return _then(
      _value.copyWith(
            weekStart:
                null == weekStart
                    ? _value.weekStart
                    : weekStart // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            emissionsKg:
                null == emissionsKg
                    ? _value.emissionsKg
                    : emissionsKg // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyEmissionImplCopyWith<$Res>
    implements $WeeklyEmissionCopyWith<$Res> {
  factory _$$WeeklyEmissionImplCopyWith(
    _$WeeklyEmissionImpl value,
    $Res Function(_$WeeklyEmissionImpl) then,
  ) = __$$WeeklyEmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'week_start') DateTime weekStart,
    @JsonKey(name: 'emissions_kg') double emissionsKg,
  });
}

/// @nodoc
class __$$WeeklyEmissionImplCopyWithImpl<$Res>
    extends _$WeeklyEmissionCopyWithImpl<$Res, _$WeeklyEmissionImpl>
    implements _$$WeeklyEmissionImplCopyWith<$Res> {
  __$$WeeklyEmissionImplCopyWithImpl(
    _$WeeklyEmissionImpl _value,
    $Res Function(_$WeeklyEmissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weekStart = null, Object? emissionsKg = null}) {
    return _then(
      _$WeeklyEmissionImpl(
        weekStart:
            null == weekStart
                ? _value.weekStart
                : weekStart // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        emissionsKg:
            null == emissionsKg
                ? _value.emissionsKg
                : emissionsKg // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyEmissionImpl implements _WeeklyEmission {
  const _$WeeklyEmissionImpl({
    @JsonKey(name: 'week_start') required this.weekStart,
    @JsonKey(name: 'emissions_kg') required this.emissionsKg,
  });

  factory _$WeeklyEmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyEmissionImplFromJson(json);

  @override
  @JsonKey(name: 'week_start')
  final DateTime weekStart;
  @override
  @JsonKey(name: 'emissions_kg')
  final double emissionsKg;

  @override
  String toString() {
    return 'WeeklyEmission(weekStart: $weekStart, emissionsKg: $emissionsKg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyEmissionImpl &&
            (identical(other.weekStart, weekStart) ||
                other.weekStart == weekStart) &&
            (identical(other.emissionsKg, emissionsKg) ||
                other.emissionsKg == emissionsKg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekStart, emissionsKg);

  /// Create a copy of WeeklyEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyEmissionImplCopyWith<_$WeeklyEmissionImpl> get copyWith =>
      __$$WeeklyEmissionImplCopyWithImpl<_$WeeklyEmissionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyEmissionImplToJson(this);
  }
}

abstract class _WeeklyEmission implements WeeklyEmission {
  const factory _WeeklyEmission({
    @JsonKey(name: 'week_start') required final DateTime weekStart,
    @JsonKey(name: 'emissions_kg') required final double emissionsKg,
  }) = _$WeeklyEmissionImpl;

  factory _WeeklyEmission.fromJson(Map<String, dynamic> json) =
      _$WeeklyEmissionImpl.fromJson;

  @override
  @JsonKey(name: 'week_start')
  DateTime get weekStart;
  @override
  @JsonKey(name: 'emissions_kg')
  double get emissionsKg;

  /// Create a copy of WeeklyEmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyEmissionImplCopyWith<_$WeeklyEmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportEmission _$TransportEmissionFromJson(Map<String, dynamic> json) {
  return _TransportEmission.fromJson(json);
}

/// @nodoc
mixin _$TransportEmission {
  @JsonKey(name: 'transport_mode')
  String get transportMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'emissions_kg')
  double get emissionsKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage')
  double get percentage => throw _privateConstructorUsedError;

  /// Serializes this TransportEmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransportEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportEmissionCopyWith<TransportEmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportEmissionCopyWith<$Res> {
  factory $TransportEmissionCopyWith(
    TransportEmission value,
    $Res Function(TransportEmission) then,
  ) = _$TransportEmissionCopyWithImpl<$Res, TransportEmission>;
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'emissions_kg') double emissionsKg,
    @JsonKey(name: 'percentage') double percentage,
  });
}

/// @nodoc
class _$TransportEmissionCopyWithImpl<$Res, $Val extends TransportEmission>
    implements $TransportEmissionCopyWith<$Res> {
  _$TransportEmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? emissionsKg = null,
    Object? percentage = null,
  }) {
    return _then(
      _value.copyWith(
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            emissionsKg:
                null == emissionsKg
                    ? _value.emissionsKg
                    : emissionsKg // ignore: cast_nullable_to_non_nullable
                        as double,
            percentage:
                null == percentage
                    ? _value.percentage
                    : percentage // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransportEmissionImplCopyWith<$Res>
    implements $TransportEmissionCopyWith<$Res> {
  factory _$$TransportEmissionImplCopyWith(
    _$TransportEmissionImpl value,
    $Res Function(_$TransportEmissionImpl) then,
  ) = __$$TransportEmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'emissions_kg') double emissionsKg,
    @JsonKey(name: 'percentage') double percentage,
  });
}

/// @nodoc
class __$$TransportEmissionImplCopyWithImpl<$Res>
    extends _$TransportEmissionCopyWithImpl<$Res, _$TransportEmissionImpl>
    implements _$$TransportEmissionImplCopyWith<$Res> {
  __$$TransportEmissionImplCopyWithImpl(
    _$TransportEmissionImpl _value,
    $Res Function(_$TransportEmissionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? emissionsKg = null,
    Object? percentage = null,
  }) {
    return _then(
      _$TransportEmissionImpl(
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        emissionsKg:
            null == emissionsKg
                ? _value.emissionsKg
                : emissionsKg // ignore: cast_nullable_to_non_nullable
                    as double,
        percentage:
            null == percentage
                ? _value.percentage
                : percentage // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportEmissionImpl implements _TransportEmission {
  const _$TransportEmissionImpl({
    @JsonKey(name: 'transport_mode') required this.transportMode,
    @JsonKey(name: 'emissions_kg') required this.emissionsKg,
    @JsonKey(name: 'percentage') required this.percentage,
  });

  factory _$TransportEmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportEmissionImplFromJson(json);

  @override
  @JsonKey(name: 'transport_mode')
  final String transportMode;
  @override
  @JsonKey(name: 'emissions_kg')
  final double emissionsKg;
  @override
  @JsonKey(name: 'percentage')
  final double percentage;

  @override
  String toString() {
    return 'TransportEmission(transportMode: $transportMode, emissionsKg: $emissionsKg, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportEmissionImpl &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.emissionsKg, emissionsKg) ||
                other.emissionsKg == emissionsKg) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transportMode, emissionsKg, percentage);

  /// Create a copy of TransportEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportEmissionImplCopyWith<_$TransportEmissionImpl> get copyWith =>
      __$$TransportEmissionImplCopyWithImpl<_$TransportEmissionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportEmissionImplToJson(this);
  }
}

abstract class _TransportEmission implements TransportEmission {
  const factory _TransportEmission({
    @JsonKey(name: 'transport_mode') required final String transportMode,
    @JsonKey(name: 'emissions_kg') required final double emissionsKg,
    @JsonKey(name: 'percentage') required final double percentage,
  }) = _$TransportEmissionImpl;

  factory _TransportEmission.fromJson(Map<String, dynamic> json) =
      _$TransportEmissionImpl.fromJson;

  @override
  @JsonKey(name: 'transport_mode')
  String get transportMode;
  @override
  @JsonKey(name: 'emissions_kg')
  double get emissionsKg;
  @override
  @JsonKey(name: 'percentage')
  double get percentage;

  /// Create a copy of TransportEmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportEmissionImplCopyWith<_$TransportEmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CostSummary _$CostSummaryFromJson(Map<String, dynamic> json) {
  return _CostSummary.fromJson(json);
}

/// @nodoc
mixin _$CostSummary {
  @JsonKey(name: 'total_spent')
  double get totalSpent => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_week')
  double get thisWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_month')
  double get thisMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_per_trip')
  double get averagePerTrip => throw _privateConstructorUsedError;
  @JsonKey(name: 'savings_this_month')
  double? get savingsThisMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_limit')
  double? get budgetLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_used_percentage')
  double? get budgetUsedPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_trend')
  List<WeeklyCost> get weeklyTrend => throw _privateConstructorUsedError;
  @JsonKey(name: 'transport_breakdown')
  List<TransportCost> get transportBreakdown =>
      throw _privateConstructorUsedError;

  /// Serializes this CostSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CostSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CostSummaryCopyWith<CostSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostSummaryCopyWith<$Res> {
  factory $CostSummaryCopyWith(
    CostSummary value,
    $Res Function(CostSummary) then,
  ) = _$CostSummaryCopyWithImpl<$Res, CostSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'total_spent') double totalSpent,
    @JsonKey(name: 'this_week') double thisWeek,
    @JsonKey(name: 'this_month') double thisMonth,
    @JsonKey(name: 'average_per_trip') double averagePerTrip,
    @JsonKey(name: 'savings_this_month') double? savingsThisMonth,
    @JsonKey(name: 'budget_limit') double? budgetLimit,
    @JsonKey(name: 'budget_used_percentage') double? budgetUsedPercentage,
    @JsonKey(name: 'weekly_trend') List<WeeklyCost> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    List<TransportCost> transportBreakdown,
  });
}

/// @nodoc
class _$CostSummaryCopyWithImpl<$Res, $Val extends CostSummary>
    implements $CostSummaryCopyWith<$Res> {
  _$CostSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CostSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSpent = null,
    Object? thisWeek = null,
    Object? thisMonth = null,
    Object? averagePerTrip = null,
    Object? savingsThisMonth = freezed,
    Object? budgetLimit = freezed,
    Object? budgetUsedPercentage = freezed,
    Object? weeklyTrend = null,
    Object? transportBreakdown = null,
  }) {
    return _then(
      _value.copyWith(
            totalSpent:
                null == totalSpent
                    ? _value.totalSpent
                    : totalSpent // ignore: cast_nullable_to_non_nullable
                        as double,
            thisWeek:
                null == thisWeek
                    ? _value.thisWeek
                    : thisWeek // ignore: cast_nullable_to_non_nullable
                        as double,
            thisMonth:
                null == thisMonth
                    ? _value.thisMonth
                    : thisMonth // ignore: cast_nullable_to_non_nullable
                        as double,
            averagePerTrip:
                null == averagePerTrip
                    ? _value.averagePerTrip
                    : averagePerTrip // ignore: cast_nullable_to_non_nullable
                        as double,
            savingsThisMonth:
                freezed == savingsThisMonth
                    ? _value.savingsThisMonth
                    : savingsThisMonth // ignore: cast_nullable_to_non_nullable
                        as double?,
            budgetLimit:
                freezed == budgetLimit
                    ? _value.budgetLimit
                    : budgetLimit // ignore: cast_nullable_to_non_nullable
                        as double?,
            budgetUsedPercentage:
                freezed == budgetUsedPercentage
                    ? _value.budgetUsedPercentage
                    : budgetUsedPercentage // ignore: cast_nullable_to_non_nullable
                        as double?,
            weeklyTrend:
                null == weeklyTrend
                    ? _value.weeklyTrend
                    : weeklyTrend // ignore: cast_nullable_to_non_nullable
                        as List<WeeklyCost>,
            transportBreakdown:
                null == transportBreakdown
                    ? _value.transportBreakdown
                    : transportBreakdown // ignore: cast_nullable_to_non_nullable
                        as List<TransportCost>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CostSummaryImplCopyWith<$Res>
    implements $CostSummaryCopyWith<$Res> {
  factory _$$CostSummaryImplCopyWith(
    _$CostSummaryImpl value,
    $Res Function(_$CostSummaryImpl) then,
  ) = __$$CostSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_spent') double totalSpent,
    @JsonKey(name: 'this_week') double thisWeek,
    @JsonKey(name: 'this_month') double thisMonth,
    @JsonKey(name: 'average_per_trip') double averagePerTrip,
    @JsonKey(name: 'savings_this_month') double? savingsThisMonth,
    @JsonKey(name: 'budget_limit') double? budgetLimit,
    @JsonKey(name: 'budget_used_percentage') double? budgetUsedPercentage,
    @JsonKey(name: 'weekly_trend') List<WeeklyCost> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    List<TransportCost> transportBreakdown,
  });
}

/// @nodoc
class __$$CostSummaryImplCopyWithImpl<$Res>
    extends _$CostSummaryCopyWithImpl<$Res, _$CostSummaryImpl>
    implements _$$CostSummaryImplCopyWith<$Res> {
  __$$CostSummaryImplCopyWithImpl(
    _$CostSummaryImpl _value,
    $Res Function(_$CostSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CostSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSpent = null,
    Object? thisWeek = null,
    Object? thisMonth = null,
    Object? averagePerTrip = null,
    Object? savingsThisMonth = freezed,
    Object? budgetLimit = freezed,
    Object? budgetUsedPercentage = freezed,
    Object? weeklyTrend = null,
    Object? transportBreakdown = null,
  }) {
    return _then(
      _$CostSummaryImpl(
        totalSpent:
            null == totalSpent
                ? _value.totalSpent
                : totalSpent // ignore: cast_nullable_to_non_nullable
                    as double,
        thisWeek:
            null == thisWeek
                ? _value.thisWeek
                : thisWeek // ignore: cast_nullable_to_non_nullable
                    as double,
        thisMonth:
            null == thisMonth
                ? _value.thisMonth
                : thisMonth // ignore: cast_nullable_to_non_nullable
                    as double,
        averagePerTrip:
            null == averagePerTrip
                ? _value.averagePerTrip
                : averagePerTrip // ignore: cast_nullable_to_non_nullable
                    as double,
        savingsThisMonth:
            freezed == savingsThisMonth
                ? _value.savingsThisMonth
                : savingsThisMonth // ignore: cast_nullable_to_non_nullable
                    as double?,
        budgetLimit:
            freezed == budgetLimit
                ? _value.budgetLimit
                : budgetLimit // ignore: cast_nullable_to_non_nullable
                    as double?,
        budgetUsedPercentage:
            freezed == budgetUsedPercentage
                ? _value.budgetUsedPercentage
                : budgetUsedPercentage // ignore: cast_nullable_to_non_nullable
                    as double?,
        weeklyTrend:
            null == weeklyTrend
                ? _value._weeklyTrend
                : weeklyTrend // ignore: cast_nullable_to_non_nullable
                    as List<WeeklyCost>,
        transportBreakdown:
            null == transportBreakdown
                ? _value._transportBreakdown
                : transportBreakdown // ignore: cast_nullable_to_non_nullable
                    as List<TransportCost>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CostSummaryImpl implements _CostSummary {
  const _$CostSummaryImpl({
    @JsonKey(name: 'total_spent') required this.totalSpent,
    @JsonKey(name: 'this_week') required this.thisWeek,
    @JsonKey(name: 'this_month') required this.thisMonth,
    @JsonKey(name: 'average_per_trip') required this.averagePerTrip,
    @JsonKey(name: 'savings_this_month') this.savingsThisMonth,
    @JsonKey(name: 'budget_limit') this.budgetLimit,
    @JsonKey(name: 'budget_used_percentage') this.budgetUsedPercentage,
    @JsonKey(name: 'weekly_trend') required final List<WeeklyCost> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    required final List<TransportCost> transportBreakdown,
  }) : _weeklyTrend = weeklyTrend,
       _transportBreakdown = transportBreakdown;

  factory _$CostSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CostSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total_spent')
  final double totalSpent;
  @override
  @JsonKey(name: 'this_week')
  final double thisWeek;
  @override
  @JsonKey(name: 'this_month')
  final double thisMonth;
  @override
  @JsonKey(name: 'average_per_trip')
  final double averagePerTrip;
  @override
  @JsonKey(name: 'savings_this_month')
  final double? savingsThisMonth;
  @override
  @JsonKey(name: 'budget_limit')
  final double? budgetLimit;
  @override
  @JsonKey(name: 'budget_used_percentage')
  final double? budgetUsedPercentage;
  final List<WeeklyCost> _weeklyTrend;
  @override
  @JsonKey(name: 'weekly_trend')
  List<WeeklyCost> get weeklyTrend {
    if (_weeklyTrend is EqualUnmodifiableListView) return _weeklyTrend;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyTrend);
  }

  final List<TransportCost> _transportBreakdown;
  @override
  @JsonKey(name: 'transport_breakdown')
  List<TransportCost> get transportBreakdown {
    if (_transportBreakdown is EqualUnmodifiableListView)
      return _transportBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportBreakdown);
  }

  @override
  String toString() {
    return 'CostSummary(totalSpent: $totalSpent, thisWeek: $thisWeek, thisMonth: $thisMonth, averagePerTrip: $averagePerTrip, savingsThisMonth: $savingsThisMonth, budgetLimit: $budgetLimit, budgetUsedPercentage: $budgetUsedPercentage, weeklyTrend: $weeklyTrend, transportBreakdown: $transportBreakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostSummaryImpl &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            (identical(other.thisWeek, thisWeek) ||
                other.thisWeek == thisWeek) &&
            (identical(other.thisMonth, thisMonth) ||
                other.thisMonth == thisMonth) &&
            (identical(other.averagePerTrip, averagePerTrip) ||
                other.averagePerTrip == averagePerTrip) &&
            (identical(other.savingsThisMonth, savingsThisMonth) ||
                other.savingsThisMonth == savingsThisMonth) &&
            (identical(other.budgetLimit, budgetLimit) ||
                other.budgetLimit == budgetLimit) &&
            (identical(other.budgetUsedPercentage, budgetUsedPercentage) ||
                other.budgetUsedPercentage == budgetUsedPercentage) &&
            const DeepCollectionEquality().equals(
              other._weeklyTrend,
              _weeklyTrend,
            ) &&
            const DeepCollectionEquality().equals(
              other._transportBreakdown,
              _transportBreakdown,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalSpent,
    thisWeek,
    thisMonth,
    averagePerTrip,
    savingsThisMonth,
    budgetLimit,
    budgetUsedPercentage,
    const DeepCollectionEquality().hash(_weeklyTrend),
    const DeepCollectionEquality().hash(_transportBreakdown),
  );

  /// Create a copy of CostSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CostSummaryImplCopyWith<_$CostSummaryImpl> get copyWith =>
      __$$CostSummaryImplCopyWithImpl<_$CostSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostSummaryImplToJson(this);
  }
}

abstract class _CostSummary implements CostSummary {
  const factory _CostSummary({
    @JsonKey(name: 'total_spent') required final double totalSpent,
    @JsonKey(name: 'this_week') required final double thisWeek,
    @JsonKey(name: 'this_month') required final double thisMonth,
    @JsonKey(name: 'average_per_trip') required final double averagePerTrip,
    @JsonKey(name: 'savings_this_month') final double? savingsThisMonth,
    @JsonKey(name: 'budget_limit') final double? budgetLimit,
    @JsonKey(name: 'budget_used_percentage') final double? budgetUsedPercentage,
    @JsonKey(name: 'weekly_trend') required final List<WeeklyCost> weeklyTrend,
    @JsonKey(name: 'transport_breakdown')
    required final List<TransportCost> transportBreakdown,
  }) = _$CostSummaryImpl;

  factory _CostSummary.fromJson(Map<String, dynamic> json) =
      _$CostSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total_spent')
  double get totalSpent;
  @override
  @JsonKey(name: 'this_week')
  double get thisWeek;
  @override
  @JsonKey(name: 'this_month')
  double get thisMonth;
  @override
  @JsonKey(name: 'average_per_trip')
  double get averagePerTrip;
  @override
  @JsonKey(name: 'savings_this_month')
  double? get savingsThisMonth;
  @override
  @JsonKey(name: 'budget_limit')
  double? get budgetLimit;
  @override
  @JsonKey(name: 'budget_used_percentage')
  double? get budgetUsedPercentage;
  @override
  @JsonKey(name: 'weekly_trend')
  List<WeeklyCost> get weeklyTrend;
  @override
  @JsonKey(name: 'transport_breakdown')
  List<TransportCost> get transportBreakdown;

  /// Create a copy of CostSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CostSummaryImplCopyWith<_$CostSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyCost _$WeeklyCostFromJson(Map<String, dynamic> json) {
  return _WeeklyCost.fromJson(json);
}

/// @nodoc
mixin _$WeeklyCost {
  @JsonKey(name: 'week_start')
  DateTime get weekStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this WeeklyCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyCostCopyWith<WeeklyCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyCostCopyWith<$Res> {
  factory $WeeklyCostCopyWith(
    WeeklyCost value,
    $Res Function(WeeklyCost) then,
  ) = _$WeeklyCostCopyWithImpl<$Res, WeeklyCost>;
  @useResult
  $Res call({
    @JsonKey(name: 'week_start') DateTime weekStart,
    @JsonKey(name: 'amount') double amount,
  });
}

/// @nodoc
class _$WeeklyCostCopyWithImpl<$Res, $Val extends WeeklyCost>
    implements $WeeklyCostCopyWith<$Res> {
  _$WeeklyCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weekStart = null, Object? amount = null}) {
    return _then(
      _value.copyWith(
            weekStart:
                null == weekStart
                    ? _value.weekStart
                    : weekStart // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeeklyCostImplCopyWith<$Res>
    implements $WeeklyCostCopyWith<$Res> {
  factory _$$WeeklyCostImplCopyWith(
    _$WeeklyCostImpl value,
    $Res Function(_$WeeklyCostImpl) then,
  ) = __$$WeeklyCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'week_start') DateTime weekStart,
    @JsonKey(name: 'amount') double amount,
  });
}

/// @nodoc
class __$$WeeklyCostImplCopyWithImpl<$Res>
    extends _$WeeklyCostCopyWithImpl<$Res, _$WeeklyCostImpl>
    implements _$$WeeklyCostImplCopyWith<$Res> {
  __$$WeeklyCostImplCopyWithImpl(
    _$WeeklyCostImpl _value,
    $Res Function(_$WeeklyCostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeeklyCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weekStart = null, Object? amount = null}) {
    return _then(
      _$WeeklyCostImpl(
        weekStart:
            null == weekStart
                ? _value.weekStart
                : weekStart // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyCostImpl implements _WeeklyCost {
  const _$WeeklyCostImpl({
    @JsonKey(name: 'week_start') required this.weekStart,
    @JsonKey(name: 'amount') required this.amount,
  });

  factory _$WeeklyCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyCostImplFromJson(json);

  @override
  @JsonKey(name: 'week_start')
  final DateTime weekStart;
  @override
  @JsonKey(name: 'amount')
  final double amount;

  @override
  String toString() {
    return 'WeeklyCost(weekStart: $weekStart, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyCostImpl &&
            (identical(other.weekStart, weekStart) ||
                other.weekStart == weekStart) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekStart, amount);

  /// Create a copy of WeeklyCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyCostImplCopyWith<_$WeeklyCostImpl> get copyWith =>
      __$$WeeklyCostImplCopyWithImpl<_$WeeklyCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyCostImplToJson(this);
  }
}

abstract class _WeeklyCost implements WeeklyCost {
  const factory _WeeklyCost({
    @JsonKey(name: 'week_start') required final DateTime weekStart,
    @JsonKey(name: 'amount') required final double amount,
  }) = _$WeeklyCostImpl;

  factory _WeeklyCost.fromJson(Map<String, dynamic> json) =
      _$WeeklyCostImpl.fromJson;

  @override
  @JsonKey(name: 'week_start')
  DateTime get weekStart;
  @override
  @JsonKey(name: 'amount')
  double get amount;

  /// Create a copy of WeeklyCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyCostImplCopyWith<_$WeeklyCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportCost _$TransportCostFromJson(Map<String, dynamic> json) {
  return _TransportCost.fromJson(json);
}

/// @nodoc
mixin _$TransportCost {
  @JsonKey(name: 'transport_mode')
  String get transportMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage')
  double get percentage => throw _privateConstructorUsedError;

  /// Serializes this TransportCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransportCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportCostCopyWith<TransportCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportCostCopyWith<$Res> {
  factory $TransportCostCopyWith(
    TransportCost value,
    $Res Function(TransportCost) then,
  ) = _$TransportCostCopyWithImpl<$Res, TransportCost>;
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'amount') double amount,
    @JsonKey(name: 'percentage') double percentage,
  });
}

/// @nodoc
class _$TransportCostCopyWithImpl<$Res, $Val extends TransportCost>
    implements $TransportCostCopyWith<$Res> {
  _$TransportCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? amount = null,
    Object? percentage = null,
  }) {
    return _then(
      _value.copyWith(
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            percentage:
                null == percentage
                    ? _value.percentage
                    : percentage // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransportCostImplCopyWith<$Res>
    implements $TransportCostCopyWith<$Res> {
  factory _$$TransportCostImplCopyWith(
    _$TransportCostImpl value,
    $Res Function(_$TransportCostImpl) then,
  ) = __$$TransportCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'amount') double amount,
    @JsonKey(name: 'percentage') double percentage,
  });
}

/// @nodoc
class __$$TransportCostImplCopyWithImpl<$Res>
    extends _$TransportCostCopyWithImpl<$Res, _$TransportCostImpl>
    implements _$$TransportCostImplCopyWith<$Res> {
  __$$TransportCostImplCopyWithImpl(
    _$TransportCostImpl _value,
    $Res Function(_$TransportCostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? amount = null,
    Object? percentage = null,
  }) {
    return _then(
      _$TransportCostImpl(
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        percentage:
            null == percentage
                ? _value.percentage
                : percentage // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportCostImpl implements _TransportCost {
  const _$TransportCostImpl({
    @JsonKey(name: 'transport_mode') required this.transportMode,
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'percentage') required this.percentage,
  });

  factory _$TransportCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportCostImplFromJson(json);

  @override
  @JsonKey(name: 'transport_mode')
  final String transportMode;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'percentage')
  final double percentage;

  @override
  String toString() {
    return 'TransportCost(transportMode: $transportMode, amount: $amount, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportCostImpl &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transportMode, amount, percentage);

  /// Create a copy of TransportCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportCostImplCopyWith<_$TransportCostImpl> get copyWith =>
      __$$TransportCostImplCopyWithImpl<_$TransportCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportCostImplToJson(this);
  }
}

abstract class _TransportCost implements TransportCost {
  const factory _TransportCost({
    @JsonKey(name: 'transport_mode') required final String transportMode,
    @JsonKey(name: 'amount') required final double amount,
    @JsonKey(name: 'percentage') required final double percentage,
  }) = _$TransportCostImpl;

  factory _TransportCost.fromJson(Map<String, dynamic> json) =
      _$TransportCostImpl.fromJson;

  @override
  @JsonKey(name: 'transport_mode')
  String get transportMode;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'percentage')
  double get percentage;

  /// Create a copy of TransportCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportCostImplCopyWith<_$TransportCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) {
  return _WeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfo {
  @JsonKey(name: 'current_location')
  LocationPoint get currentLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_weather')
  WeatherConditions get currentWeather => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly_forecast')
  List<HourlyWeather>? get hourlyForecast => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_recommendations')
  List<String>? get travelRecommendations => throw _privateConstructorUsedError;

  /// Serializes this WeatherInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
    WeatherInfo value,
    $Res Function(WeatherInfo) then,
  ) = _$WeatherInfoCopyWithImpl<$Res, WeatherInfo>;
  @useResult
  $Res call({
    @JsonKey(name: 'current_location') LocationPoint currentLocation,
    @JsonKey(name: 'current_weather') WeatherConditions currentWeather,
    @JsonKey(name: 'hourly_forecast') List<HourlyWeather>? hourlyForecast,
    @JsonKey(name: 'travel_recommendations')
    List<String>? travelRecommendations,
  });

  $LocationPointCopyWith<$Res> get currentLocation;
  $WeatherConditionsCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res, $Val extends WeatherInfo>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? currentWeather = null,
    Object? hourlyForecast = freezed,
    Object? travelRecommendations = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentLocation:
                null == currentLocation
                    ? _value.currentLocation
                    : currentLocation // ignore: cast_nullable_to_non_nullable
                        as LocationPoint,
            currentWeather:
                null == currentWeather
                    ? _value.currentWeather
                    : currentWeather // ignore: cast_nullable_to_non_nullable
                        as WeatherConditions,
            hourlyForecast:
                freezed == hourlyForecast
                    ? _value.hourlyForecast
                    : hourlyForecast // ignore: cast_nullable_to_non_nullable
                        as List<HourlyWeather>?,
            travelRecommendations:
                freezed == travelRecommendations
                    ? _value.travelRecommendations
                    : travelRecommendations // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get currentLocation {
    return $LocationPointCopyWith<$Res>(_value.currentLocation, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionsCopyWith<$Res> get currentWeather {
    return $WeatherConditionsCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherInfoImplCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$$WeatherInfoImplCopyWith(
    _$WeatherInfoImpl value,
    $Res Function(_$WeatherInfoImpl) then,
  ) = __$$WeatherInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'current_location') LocationPoint currentLocation,
    @JsonKey(name: 'current_weather') WeatherConditions currentWeather,
    @JsonKey(name: 'hourly_forecast') List<HourlyWeather>? hourlyForecast,
    @JsonKey(name: 'travel_recommendations')
    List<String>? travelRecommendations,
  });

  @override
  $LocationPointCopyWith<$Res> get currentLocation;
  @override
  $WeatherConditionsCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$WeatherInfoImplCopyWithImpl<$Res>
    extends _$WeatherInfoCopyWithImpl<$Res, _$WeatherInfoImpl>
    implements _$$WeatherInfoImplCopyWith<$Res> {
  __$$WeatherInfoImplCopyWithImpl(
    _$WeatherInfoImpl _value,
    $Res Function(_$WeatherInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
    Object? currentWeather = null,
    Object? hourlyForecast = freezed,
    Object? travelRecommendations = freezed,
  }) {
    return _then(
      _$WeatherInfoImpl(
        currentLocation:
            null == currentLocation
                ? _value.currentLocation
                : currentLocation // ignore: cast_nullable_to_non_nullable
                    as LocationPoint,
        currentWeather:
            null == currentWeather
                ? _value.currentWeather
                : currentWeather // ignore: cast_nullable_to_non_nullable
                    as WeatherConditions,
        hourlyForecast:
            freezed == hourlyForecast
                ? _value._hourlyForecast
                : hourlyForecast // ignore: cast_nullable_to_non_nullable
                    as List<HourlyWeather>?,
        travelRecommendations:
            freezed == travelRecommendations
                ? _value._travelRecommendations
                : travelRecommendations // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfoImpl implements _WeatherInfo {
  const _$WeatherInfoImpl({
    @JsonKey(name: 'current_location') required this.currentLocation,
    @JsonKey(name: 'current_weather') required this.currentWeather,
    @JsonKey(name: 'hourly_forecast') final List<HourlyWeather>? hourlyForecast,
    @JsonKey(name: 'travel_recommendations')
    final List<String>? travelRecommendations,
  }) : _hourlyForecast = hourlyForecast,
       _travelRecommendations = travelRecommendations;

  factory _$WeatherInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfoImplFromJson(json);

  @override
  @JsonKey(name: 'current_location')
  final LocationPoint currentLocation;
  @override
  @JsonKey(name: 'current_weather')
  final WeatherConditions currentWeather;
  final List<HourlyWeather>? _hourlyForecast;
  @override
  @JsonKey(name: 'hourly_forecast')
  List<HourlyWeather>? get hourlyForecast {
    final value = _hourlyForecast;
    if (value == null) return null;
    if (_hourlyForecast is EqualUnmodifiableListView) return _hourlyForecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _travelRecommendations;
  @override
  @JsonKey(name: 'travel_recommendations')
  List<String>? get travelRecommendations {
    final value = _travelRecommendations;
    if (value == null) return null;
    if (_travelRecommendations is EqualUnmodifiableListView)
      return _travelRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeatherInfo(currentLocation: $currentLocation, currentWeather: $currentWeather, hourlyForecast: $hourlyForecast, travelRecommendations: $travelRecommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfoImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality().equals(
              other._hourlyForecast,
              _hourlyForecast,
            ) &&
            const DeepCollectionEquality().equals(
              other._travelRecommendations,
              _travelRecommendations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentLocation,
    currentWeather,
    const DeepCollectionEquality().hash(_hourlyForecast),
    const DeepCollectionEquality().hash(_travelRecommendations),
  );

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      __$$WeatherInfoImplCopyWithImpl<_$WeatherInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfoImplToJson(this);
  }
}

abstract class _WeatherInfo implements WeatherInfo {
  const factory _WeatherInfo({
    @JsonKey(name: 'current_location')
    required final LocationPoint currentLocation,
    @JsonKey(name: 'current_weather')
    required final WeatherConditions currentWeather,
    @JsonKey(name: 'hourly_forecast') final List<HourlyWeather>? hourlyForecast,
    @JsonKey(name: 'travel_recommendations')
    final List<String>? travelRecommendations,
  }) = _$WeatherInfoImpl;

  factory _WeatherInfo.fromJson(Map<String, dynamic> json) =
      _$WeatherInfoImpl.fromJson;

  @override
  @JsonKey(name: 'current_location')
  LocationPoint get currentLocation;
  @override
  @JsonKey(name: 'current_weather')
  WeatherConditions get currentWeather;
  @override
  @JsonKey(name: 'hourly_forecast')
  List<HourlyWeather>? get hourlyForecast;
  @override
  @JsonKey(name: 'travel_recommendations')
  List<String>? get travelRecommendations;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
  DateTime get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_celsius')
  double get temperatureCelsius => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'precipitation_probability')
  int get precipitationProbability => throw _privateConstructorUsedError;

  /// Serializes this HourlyWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
    HourlyWeather value,
    $Res Function(HourlyWeather) then,
  ) = _$HourlyWeatherCopyWithImpl<$Res, HourlyWeather>;
  @useResult
  $Res call({
    DateTime time,
    @JsonKey(name: 'temperature_celsius') double temperatureCelsius,
    String condition,
    @JsonKey(name: 'precipitation_probability') int precipitationProbability,
  });
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res, $Val extends HourlyWeather>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperatureCelsius = null,
    Object? condition = null,
    Object? precipitationProbability = null,
  }) {
    return _then(
      _value.copyWith(
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            temperatureCelsius:
                null == temperatureCelsius
                    ? _value.temperatureCelsius
                    : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                        as double,
            condition:
                null == condition
                    ? _value.condition
                    : condition // ignore: cast_nullable_to_non_nullable
                        as String,
            precipitationProbability:
                null == precipitationProbability
                    ? _value.precipitationProbability
                    : precipitationProbability // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HourlyWeatherImplCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$HourlyWeatherImplCopyWith(
    _$HourlyWeatherImpl value,
    $Res Function(_$HourlyWeatherImpl) then,
  ) = __$$HourlyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime time,
    @JsonKey(name: 'temperature_celsius') double temperatureCelsius,
    String condition,
    @JsonKey(name: 'precipitation_probability') int precipitationProbability,
  });
}

/// @nodoc
class __$$HourlyWeatherImplCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res, _$HourlyWeatherImpl>
    implements _$$HourlyWeatherImplCopyWith<$Res> {
  __$$HourlyWeatherImplCopyWithImpl(
    _$HourlyWeatherImpl _value,
    $Res Function(_$HourlyWeatherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperatureCelsius = null,
    Object? condition = null,
    Object? precipitationProbability = null,
  }) {
    return _then(
      _$HourlyWeatherImpl(
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        temperatureCelsius:
            null == temperatureCelsius
                ? _value.temperatureCelsius
                : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                    as double,
        condition:
            null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                    as String,
        precipitationProbability:
            null == precipitationProbability
                ? _value.precipitationProbability
                : precipitationProbability // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyWeatherImpl implements _HourlyWeather {
  const _$HourlyWeatherImpl({
    required this.time,
    @JsonKey(name: 'temperature_celsius') required this.temperatureCelsius,
    required this.condition,
    @JsonKey(name: 'precipitation_probability')
    required this.precipitationProbability,
  });

  factory _$HourlyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyWeatherImplFromJson(json);

  @override
  final DateTime time;
  @override
  @JsonKey(name: 'temperature_celsius')
  final double temperatureCelsius;
  @override
  final String condition;
  @override
  @JsonKey(name: 'precipitation_probability')
  final int precipitationProbability;

  @override
  String toString() {
    return 'HourlyWeather(time: $time, temperatureCelsius: $temperatureCelsius, condition: $condition, precipitationProbability: $precipitationProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyWeatherImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperatureCelsius, temperatureCelsius) ||
                other.temperatureCelsius == temperatureCelsius) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(
                  other.precipitationProbability,
                  precipitationProbability,
                ) ||
                other.precipitationProbability == precipitationProbability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    time,
    temperatureCelsius,
    condition,
    precipitationProbability,
  );

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      __$$HourlyWeatherImplCopyWithImpl<_$HourlyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyWeatherImplToJson(this);
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather({
    required final DateTime time,
    @JsonKey(name: 'temperature_celsius')
    required final double temperatureCelsius,
    required final String condition,
    @JsonKey(name: 'precipitation_probability')
    required final int precipitationProbability,
  }) = _$HourlyWeatherImpl;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$HourlyWeatherImpl.fromJson;

  @override
  DateTime get time;
  @override
  @JsonKey(name: 'temperature_celsius')
  double get temperatureCelsius;
  @override
  String get condition;
  @override
  @JsonKey(name: 'precipitation_probability')
  int get precipitationProbability;

  /// Create a copy of HourlyWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyWeatherImplCopyWith<_$HourlyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrafficAlert _$TrafficAlertFromJson(Map<String, dynamic> json) {
  return _TrafficAlert.fromJson(json);
}

/// @nodoc
mixin _$TrafficAlert {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alert_type')
  String get alertType => throw _privateConstructorUsedError;
  @JsonKey(name: 'severity_level')
  int get severityLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'affected_routes')
  List<String>? get affectedRoutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_delay')
  int? get estimatedDelay => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this TrafficAlert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrafficAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrafficAlertCopyWith<TrafficAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficAlertCopyWith<$Res> {
  factory $TrafficAlertCopyWith(
    TrafficAlert value,
    $Res Function(TrafficAlert) then,
  ) = _$TrafficAlertCopyWithImpl<$Res, TrafficAlert>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'alert_type') String alertType,
    @JsonKey(name: 'severity_level') int severityLevel,
    @JsonKey(name: 'affected_routes') List<String>? affectedRoutes,
    @JsonKey(name: 'estimated_delay') int? estimatedDelay,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class _$TrafficAlertCopyWithImpl<$Res, $Val extends TrafficAlert>
    implements $TrafficAlertCopyWith<$Res> {
  _$TrafficAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrafficAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? alertType = null,
    Object? severityLevel = null,
    Object? affectedRoutes = freezed,
    Object? estimatedDelay = freezed,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            alertType:
                null == alertType
                    ? _value.alertType
                    : alertType // ignore: cast_nullable_to_non_nullable
                        as String,
            severityLevel:
                null == severityLevel
                    ? _value.severityLevel
                    : severityLevel // ignore: cast_nullable_to_non_nullable
                        as int,
            affectedRoutes:
                freezed == affectedRoutes
                    ? _value.affectedRoutes
                    : affectedRoutes // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            estimatedDelay:
                freezed == estimatedDelay
                    ? _value.estimatedDelay
                    : estimatedDelay // ignore: cast_nullable_to_non_nullable
                        as int?,
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
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TrafficAlertImplCopyWith<$Res>
    implements $TrafficAlertCopyWith<$Res> {
  factory _$$TrafficAlertImplCopyWith(
    _$TrafficAlertImpl value,
    $Res Function(_$TrafficAlertImpl) then,
  ) = __$$TrafficAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'alert_type') String alertType,
    @JsonKey(name: 'severity_level') int severityLevel,
    @JsonKey(name: 'affected_routes') List<String>? affectedRoutes,
    @JsonKey(name: 'estimated_delay') int? estimatedDelay,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class __$$TrafficAlertImplCopyWithImpl<$Res>
    extends _$TrafficAlertCopyWithImpl<$Res, _$TrafficAlertImpl>
    implements _$$TrafficAlertImplCopyWith<$Res> {
  __$$TrafficAlertImplCopyWithImpl(
    _$TrafficAlertImpl _value,
    $Res Function(_$TrafficAlertImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrafficAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? alertType = null,
    Object? severityLevel = null,
    Object? affectedRoutes = freezed,
    Object? estimatedDelay = freezed,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? isActive = null,
  }) {
    return _then(
      _$TrafficAlertImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        alertType:
            null == alertType
                ? _value.alertType
                : alertType // ignore: cast_nullable_to_non_nullable
                    as String,
        severityLevel:
            null == severityLevel
                ? _value.severityLevel
                : severityLevel // ignore: cast_nullable_to_non_nullable
                    as int,
        affectedRoutes:
            freezed == affectedRoutes
                ? _value._affectedRoutes
                : affectedRoutes // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        estimatedDelay:
            freezed == estimatedDelay
                ? _value.estimatedDelay
                : estimatedDelay // ignore: cast_nullable_to_non_nullable
                    as int?,
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
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TrafficAlertImpl implements _TrafficAlert {
  const _$TrafficAlertImpl({
    required this.id,
    required this.title,
    required this.description,
    @JsonKey(name: 'alert_type') required this.alertType,
    @JsonKey(name: 'severity_level') required this.severityLevel,
    @JsonKey(name: 'affected_routes') final List<String>? affectedRoutes,
    @JsonKey(name: 'estimated_delay') this.estimatedDelay,
    @JsonKey(name: 'start_time') required this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'is_active') required this.isActive,
  }) : _affectedRoutes = affectedRoutes;

  factory _$TrafficAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrafficAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'alert_type')
  final String alertType;
  @override
  @JsonKey(name: 'severity_level')
  final int severityLevel;
  final List<String>? _affectedRoutes;
  @override
  @JsonKey(name: 'affected_routes')
  List<String>? get affectedRoutes {
    final value = _affectedRoutes;
    if (value == null) return null;
    if (_affectedRoutes is EqualUnmodifiableListView) return _affectedRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'estimated_delay')
  final int? estimatedDelay;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime? endTime;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'TrafficAlert(id: $id, title: $title, description: $description, alertType: $alertType, severityLevel: $severityLevel, affectedRoutes: $affectedRoutes, estimatedDelay: $estimatedDelay, startTime: $startTime, endTime: $endTime, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrafficAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.alertType, alertType) ||
                other.alertType == alertType) &&
            (identical(other.severityLevel, severityLevel) ||
                other.severityLevel == severityLevel) &&
            const DeepCollectionEquality().equals(
              other._affectedRoutes,
              _affectedRoutes,
            ) &&
            (identical(other.estimatedDelay, estimatedDelay) ||
                other.estimatedDelay == estimatedDelay) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    alertType,
    severityLevel,
    const DeepCollectionEquality().hash(_affectedRoutes),
    estimatedDelay,
    startTime,
    endTime,
    isActive,
  );

  /// Create a copy of TrafficAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrafficAlertImplCopyWith<_$TrafficAlertImpl> get copyWith =>
      __$$TrafficAlertImplCopyWithImpl<_$TrafficAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrafficAlertImplToJson(this);
  }
}

abstract class _TrafficAlert implements TrafficAlert {
  const factory _TrafficAlert({
    required final String id,
    required final String title,
    required final String description,
    @JsonKey(name: 'alert_type') required final String alertType,
    @JsonKey(name: 'severity_level') required final int severityLevel,
    @JsonKey(name: 'affected_routes') final List<String>? affectedRoutes,
    @JsonKey(name: 'estimated_delay') final int? estimatedDelay,
    @JsonKey(name: 'start_time') required final DateTime startTime,
    @JsonKey(name: 'end_time') final DateTime? endTime,
    @JsonKey(name: 'is_active') required final bool isActive,
  }) = _$TrafficAlertImpl;

  factory _TrafficAlert.fromJson(Map<String, dynamic> json) =
      _$TrafficAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'alert_type')
  String get alertType;
  @override
  @JsonKey(name: 'severity_level')
  int get severityLevel;
  @override
  @JsonKey(name: 'affected_routes')
  List<String>? get affectedRoutes;
  @override
  @JsonKey(name: 'estimated_delay')
  int? get estimatedDelay;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'end_time')
  DateTime? get endTime;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of TrafficAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrafficAlertImplCopyWith<_$TrafficAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelPatterns _$TravelPatternsFromJson(Map<String, dynamic> json) {
  return _TravelPatterns.fromJson(json);
}

/// @nodoc
mixin _$TravelPatterns {
  @JsonKey(name: 'peak_travel_hours')
  List<int> get peakTravelHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'busiest_days')
  List<String> get busiestDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_routes')
  List<CommonRoute> get commonRoutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'transport_mode_usage')
  List<TransportModeUsage> get transportModeUsage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'seasonal_patterns')
  List<SeasonalPattern>? get seasonalPatterns =>
      throw _privateConstructorUsedError;

  /// Serializes this TravelPatterns to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelPatterns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelPatternsCopyWith<TravelPatterns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPatternsCopyWith<$Res> {
  factory $TravelPatternsCopyWith(
    TravelPatterns value,
    $Res Function(TravelPatterns) then,
  ) = _$TravelPatternsCopyWithImpl<$Res, TravelPatterns>;
  @useResult
  $Res call({
    @JsonKey(name: 'peak_travel_hours') List<int> peakTravelHours,
    @JsonKey(name: 'busiest_days') List<String> busiestDays,
    @JsonKey(name: 'common_routes') List<CommonRoute> commonRoutes,
    @JsonKey(name: 'transport_mode_usage')
    List<TransportModeUsage> transportModeUsage,
    @JsonKey(name: 'seasonal_patterns') List<SeasonalPattern>? seasonalPatterns,
  });
}

/// @nodoc
class _$TravelPatternsCopyWithImpl<$Res, $Val extends TravelPatterns>
    implements $TravelPatternsCopyWith<$Res> {
  _$TravelPatternsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelPatterns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peakTravelHours = null,
    Object? busiestDays = null,
    Object? commonRoutes = null,
    Object? transportModeUsage = null,
    Object? seasonalPatterns = freezed,
  }) {
    return _then(
      _value.copyWith(
            peakTravelHours:
                null == peakTravelHours
                    ? _value.peakTravelHours
                    : peakTravelHours // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            busiestDays:
                null == busiestDays
                    ? _value.busiestDays
                    : busiestDays // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            commonRoutes:
                null == commonRoutes
                    ? _value.commonRoutes
                    : commonRoutes // ignore: cast_nullable_to_non_nullable
                        as List<CommonRoute>,
            transportModeUsage:
                null == transportModeUsage
                    ? _value.transportModeUsage
                    : transportModeUsage // ignore: cast_nullable_to_non_nullable
                        as List<TransportModeUsage>,
            seasonalPatterns:
                freezed == seasonalPatterns
                    ? _value.seasonalPatterns
                    : seasonalPatterns // ignore: cast_nullable_to_non_nullable
                        as List<SeasonalPattern>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TravelPatternsImplCopyWith<$Res>
    implements $TravelPatternsCopyWith<$Res> {
  factory _$$TravelPatternsImplCopyWith(
    _$TravelPatternsImpl value,
    $Res Function(_$TravelPatternsImpl) then,
  ) = __$$TravelPatternsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'peak_travel_hours') List<int> peakTravelHours,
    @JsonKey(name: 'busiest_days') List<String> busiestDays,
    @JsonKey(name: 'common_routes') List<CommonRoute> commonRoutes,
    @JsonKey(name: 'transport_mode_usage')
    List<TransportModeUsage> transportModeUsage,
    @JsonKey(name: 'seasonal_patterns') List<SeasonalPattern>? seasonalPatterns,
  });
}

/// @nodoc
class __$$TravelPatternsImplCopyWithImpl<$Res>
    extends _$TravelPatternsCopyWithImpl<$Res, _$TravelPatternsImpl>
    implements _$$TravelPatternsImplCopyWith<$Res> {
  __$$TravelPatternsImplCopyWithImpl(
    _$TravelPatternsImpl _value,
    $Res Function(_$TravelPatternsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPatterns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peakTravelHours = null,
    Object? busiestDays = null,
    Object? commonRoutes = null,
    Object? transportModeUsage = null,
    Object? seasonalPatterns = freezed,
  }) {
    return _then(
      _$TravelPatternsImpl(
        peakTravelHours:
            null == peakTravelHours
                ? _value._peakTravelHours
                : peakTravelHours // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        busiestDays:
            null == busiestDays
                ? _value._busiestDays
                : busiestDays // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        commonRoutes:
            null == commonRoutes
                ? _value._commonRoutes
                : commonRoutes // ignore: cast_nullable_to_non_nullable
                    as List<CommonRoute>,
        transportModeUsage:
            null == transportModeUsage
                ? _value._transportModeUsage
                : transportModeUsage // ignore: cast_nullable_to_non_nullable
                    as List<TransportModeUsage>,
        seasonalPatterns:
            freezed == seasonalPatterns
                ? _value._seasonalPatterns
                : seasonalPatterns // ignore: cast_nullable_to_non_nullable
                    as List<SeasonalPattern>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelPatternsImpl implements _TravelPatterns {
  const _$TravelPatternsImpl({
    @JsonKey(name: 'peak_travel_hours')
    required final List<int> peakTravelHours,
    @JsonKey(name: 'busiest_days') required final List<String> busiestDays,
    @JsonKey(name: 'common_routes')
    required final List<CommonRoute> commonRoutes,
    @JsonKey(name: 'transport_mode_usage')
    required final List<TransportModeUsage> transportModeUsage,
    @JsonKey(name: 'seasonal_patterns')
    final List<SeasonalPattern>? seasonalPatterns,
  }) : _peakTravelHours = peakTravelHours,
       _busiestDays = busiestDays,
       _commonRoutes = commonRoutes,
       _transportModeUsage = transportModeUsage,
       _seasonalPatterns = seasonalPatterns;

  factory _$TravelPatternsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelPatternsImplFromJson(json);

  final List<int> _peakTravelHours;
  @override
  @JsonKey(name: 'peak_travel_hours')
  List<int> get peakTravelHours {
    if (_peakTravelHours is EqualUnmodifiableListView) return _peakTravelHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peakTravelHours);
  }

  final List<String> _busiestDays;
  @override
  @JsonKey(name: 'busiest_days')
  List<String> get busiestDays {
    if (_busiestDays is EqualUnmodifiableListView) return _busiestDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_busiestDays);
  }

  final List<CommonRoute> _commonRoutes;
  @override
  @JsonKey(name: 'common_routes')
  List<CommonRoute> get commonRoutes {
    if (_commonRoutes is EqualUnmodifiableListView) return _commonRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonRoutes);
  }

  final List<TransportModeUsage> _transportModeUsage;
  @override
  @JsonKey(name: 'transport_mode_usage')
  List<TransportModeUsage> get transportModeUsage {
    if (_transportModeUsage is EqualUnmodifiableListView)
      return _transportModeUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transportModeUsage);
  }

  final List<SeasonalPattern>? _seasonalPatterns;
  @override
  @JsonKey(name: 'seasonal_patterns')
  List<SeasonalPattern>? get seasonalPatterns {
    final value = _seasonalPatterns;
    if (value == null) return null;
    if (_seasonalPatterns is EqualUnmodifiableListView)
      return _seasonalPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TravelPatterns(peakTravelHours: $peakTravelHours, busiestDays: $busiestDays, commonRoutes: $commonRoutes, transportModeUsage: $transportModeUsage, seasonalPatterns: $seasonalPatterns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPatternsImpl &&
            const DeepCollectionEquality().equals(
              other._peakTravelHours,
              _peakTravelHours,
            ) &&
            const DeepCollectionEquality().equals(
              other._busiestDays,
              _busiestDays,
            ) &&
            const DeepCollectionEquality().equals(
              other._commonRoutes,
              _commonRoutes,
            ) &&
            const DeepCollectionEquality().equals(
              other._transportModeUsage,
              _transportModeUsage,
            ) &&
            const DeepCollectionEquality().equals(
              other._seasonalPatterns,
              _seasonalPatterns,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_peakTravelHours),
    const DeepCollectionEquality().hash(_busiestDays),
    const DeepCollectionEquality().hash(_commonRoutes),
    const DeepCollectionEquality().hash(_transportModeUsage),
    const DeepCollectionEquality().hash(_seasonalPatterns),
  );

  /// Create a copy of TravelPatterns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPatternsImplCopyWith<_$TravelPatternsImpl> get copyWith =>
      __$$TravelPatternsImplCopyWithImpl<_$TravelPatternsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPatternsImplToJson(this);
  }
}

abstract class _TravelPatterns implements TravelPatterns {
  const factory _TravelPatterns({
    @JsonKey(name: 'peak_travel_hours')
    required final List<int> peakTravelHours,
    @JsonKey(name: 'busiest_days') required final List<String> busiestDays,
    @JsonKey(name: 'common_routes')
    required final List<CommonRoute> commonRoutes,
    @JsonKey(name: 'transport_mode_usage')
    required final List<TransportModeUsage> transportModeUsage,
    @JsonKey(name: 'seasonal_patterns')
    final List<SeasonalPattern>? seasonalPatterns,
  }) = _$TravelPatternsImpl;

  factory _TravelPatterns.fromJson(Map<String, dynamic> json) =
      _$TravelPatternsImpl.fromJson;

  @override
  @JsonKey(name: 'peak_travel_hours')
  List<int> get peakTravelHours;
  @override
  @JsonKey(name: 'busiest_days')
  List<String> get busiestDays;
  @override
  @JsonKey(name: 'common_routes')
  List<CommonRoute> get commonRoutes;
  @override
  @JsonKey(name: 'transport_mode_usage')
  List<TransportModeUsage> get transportModeUsage;
  @override
  @JsonKey(name: 'seasonal_patterns')
  List<SeasonalPattern>? get seasonalPatterns;

  /// Create a copy of TravelPatterns
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelPatternsImplCopyWith<_$TravelPatternsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommonRoute _$CommonRouteFromJson(Map<String, dynamic> json) {
  return _CommonRoute.fromJson(json);
}

/// @nodoc
mixin _$CommonRoute {
  @JsonKey(name: 'start_location')
  LocationPoint get startLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_location')
  LocationPoint get endLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'frequency')
  int get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_duration')
  int get averageDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_cost')
  double get averageCost => throw _privateConstructorUsedError;

  /// Serializes this CommonRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonRouteCopyWith<CommonRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonRouteCopyWith<$Res> {
  factory $CommonRouteCopyWith(
    CommonRoute value,
    $Res Function(CommonRoute) then,
  ) = _$CommonRouteCopyWithImpl<$Res, CommonRoute>;
  @useResult
  $Res call({
    @JsonKey(name: 'start_location') LocationPoint startLocation,
    @JsonKey(name: 'end_location') LocationPoint endLocation,
    @JsonKey(name: 'frequency') int frequency,
    @JsonKey(name: 'average_duration') int averageDuration,
    @JsonKey(name: 'average_cost') double averageCost,
  });

  $LocationPointCopyWith<$Res> get startLocation;
  $LocationPointCopyWith<$Res> get endLocation;
}

/// @nodoc
class _$CommonRouteCopyWithImpl<$Res, $Val extends CommonRoute>
    implements $CommonRouteCopyWith<$Res> {
  _$CommonRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? endLocation = null,
    Object? frequency = null,
    Object? averageDuration = null,
    Object? averageCost = null,
  }) {
    return _then(
      _value.copyWith(
            startLocation:
                null == startLocation
                    ? _value.startLocation
                    : startLocation // ignore: cast_nullable_to_non_nullable
                        as LocationPoint,
            endLocation:
                null == endLocation
                    ? _value.endLocation
                    : endLocation // ignore: cast_nullable_to_non_nullable
                        as LocationPoint,
            frequency:
                null == frequency
                    ? _value.frequency
                    : frequency // ignore: cast_nullable_to_non_nullable
                        as int,
            averageDuration:
                null == averageDuration
                    ? _value.averageDuration
                    : averageDuration // ignore: cast_nullable_to_non_nullable
                        as int,
            averageCost:
                null == averageCost
                    ? _value.averageCost
                    : averageCost // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get startLocation {
    return $LocationPointCopyWith<$Res>(_value.startLocation, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get endLocation {
    return $LocationPointCopyWith<$Res>(_value.endLocation, (value) {
      return _then(_value.copyWith(endLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommonRouteImplCopyWith<$Res>
    implements $CommonRouteCopyWith<$Res> {
  factory _$$CommonRouteImplCopyWith(
    _$CommonRouteImpl value,
    $Res Function(_$CommonRouteImpl) then,
  ) = __$$CommonRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'start_location') LocationPoint startLocation,
    @JsonKey(name: 'end_location') LocationPoint endLocation,
    @JsonKey(name: 'frequency') int frequency,
    @JsonKey(name: 'average_duration') int averageDuration,
    @JsonKey(name: 'average_cost') double averageCost,
  });

  @override
  $LocationPointCopyWith<$Res> get startLocation;
  @override
  $LocationPointCopyWith<$Res> get endLocation;
}

/// @nodoc
class __$$CommonRouteImplCopyWithImpl<$Res>
    extends _$CommonRouteCopyWithImpl<$Res, _$CommonRouteImpl>
    implements _$$CommonRouteImplCopyWith<$Res> {
  __$$CommonRouteImplCopyWithImpl(
    _$CommonRouteImpl _value,
    $Res Function(_$CommonRouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocation = null,
    Object? endLocation = null,
    Object? frequency = null,
    Object? averageDuration = null,
    Object? averageCost = null,
  }) {
    return _then(
      _$CommonRouteImpl(
        startLocation:
            null == startLocation
                ? _value.startLocation
                : startLocation // ignore: cast_nullable_to_non_nullable
                    as LocationPoint,
        endLocation:
            null == endLocation
                ? _value.endLocation
                : endLocation // ignore: cast_nullable_to_non_nullable
                    as LocationPoint,
        frequency:
            null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                    as int,
        averageDuration:
            null == averageDuration
                ? _value.averageDuration
                : averageDuration // ignore: cast_nullable_to_non_nullable
                    as int,
        averageCost:
            null == averageCost
                ? _value.averageCost
                : averageCost // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommonRouteImpl implements _CommonRoute {
  const _$CommonRouteImpl({
    @JsonKey(name: 'start_location') required this.startLocation,
    @JsonKey(name: 'end_location') required this.endLocation,
    @JsonKey(name: 'frequency') required this.frequency,
    @JsonKey(name: 'average_duration') required this.averageDuration,
    @JsonKey(name: 'average_cost') required this.averageCost,
  });

  factory _$CommonRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonRouteImplFromJson(json);

  @override
  @JsonKey(name: 'start_location')
  final LocationPoint startLocation;
  @override
  @JsonKey(name: 'end_location')
  final LocationPoint endLocation;
  @override
  @JsonKey(name: 'frequency')
  final int frequency;
  @override
  @JsonKey(name: 'average_duration')
  final int averageDuration;
  @override
  @JsonKey(name: 'average_cost')
  final double averageCost;

  @override
  String toString() {
    return 'CommonRoute(startLocation: $startLocation, endLocation: $endLocation, frequency: $frequency, averageDuration: $averageDuration, averageCost: $averageCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonRouteImpl &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.averageDuration, averageDuration) ||
                other.averageDuration == averageDuration) &&
            (identical(other.averageCost, averageCost) ||
                other.averageCost == averageCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    startLocation,
    endLocation,
    frequency,
    averageDuration,
    averageCost,
  );

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonRouteImplCopyWith<_$CommonRouteImpl> get copyWith =>
      __$$CommonRouteImplCopyWithImpl<_$CommonRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonRouteImplToJson(this);
  }
}

abstract class _CommonRoute implements CommonRoute {
  const factory _CommonRoute({
    @JsonKey(name: 'start_location') required final LocationPoint startLocation,
    @JsonKey(name: 'end_location') required final LocationPoint endLocation,
    @JsonKey(name: 'frequency') required final int frequency,
    @JsonKey(name: 'average_duration') required final int averageDuration,
    @JsonKey(name: 'average_cost') required final double averageCost,
  }) = _$CommonRouteImpl;

  factory _CommonRoute.fromJson(Map<String, dynamic> json) =
      _$CommonRouteImpl.fromJson;

  @override
  @JsonKey(name: 'start_location')
  LocationPoint get startLocation;
  @override
  @JsonKey(name: 'end_location')
  LocationPoint get endLocation;
  @override
  @JsonKey(name: 'frequency')
  int get frequency;
  @override
  @JsonKey(name: 'average_duration')
  int get averageDuration;
  @override
  @JsonKey(name: 'average_cost')
  double get averageCost;

  /// Create a copy of CommonRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonRouteImplCopyWith<_$CommonRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportModeUsage _$TransportModeUsageFromJson(Map<String, dynamic> json) {
  return _TransportModeUsage.fromJson(json);
}

/// @nodoc
mixin _$TransportModeUsage {
  @JsonKey(name: 'transport_mode')
  String get transportMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'usage_count')
  int get usageCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'usage_percentage')
  double get usagePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_distance')
  double get totalDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  double get totalCost => throw _privateConstructorUsedError;

  /// Serializes this TransportModeUsage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransportModeUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportModeUsageCopyWith<TransportModeUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModeUsageCopyWith<$Res> {
  factory $TransportModeUsageCopyWith(
    TransportModeUsage value,
    $Res Function(TransportModeUsage) then,
  ) = _$TransportModeUsageCopyWithImpl<$Res, TransportModeUsage>;
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'usage_count') int usageCount,
    @JsonKey(name: 'usage_percentage') double usagePercentage,
    @JsonKey(name: 'total_distance') double totalDistance,
    @JsonKey(name: 'total_cost') double totalCost,
  });
}

/// @nodoc
class _$TransportModeUsageCopyWithImpl<$Res, $Val extends TransportModeUsage>
    implements $TransportModeUsageCopyWith<$Res> {
  _$TransportModeUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportModeUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? usageCount = null,
    Object? usagePercentage = null,
    Object? totalDistance = null,
    Object? totalCost = null,
  }) {
    return _then(
      _value.copyWith(
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as String,
            usageCount:
                null == usageCount
                    ? _value.usageCount
                    : usageCount // ignore: cast_nullable_to_non_nullable
                        as int,
            usagePercentage:
                null == usagePercentage
                    ? _value.usagePercentage
                    : usagePercentage // ignore: cast_nullable_to_non_nullable
                        as double,
            totalDistance:
                null == totalDistance
                    ? _value.totalDistance
                    : totalDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            totalCost:
                null == totalCost
                    ? _value.totalCost
                    : totalCost // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransportModeUsageImplCopyWith<$Res>
    implements $TransportModeUsageCopyWith<$Res> {
  factory _$$TransportModeUsageImplCopyWith(
    _$TransportModeUsageImpl value,
    $Res Function(_$TransportModeUsageImpl) then,
  ) = __$$TransportModeUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'usage_count') int usageCount,
    @JsonKey(name: 'usage_percentage') double usagePercentage,
    @JsonKey(name: 'total_distance') double totalDistance,
    @JsonKey(name: 'total_cost') double totalCost,
  });
}

/// @nodoc
class __$$TransportModeUsageImplCopyWithImpl<$Res>
    extends _$TransportModeUsageCopyWithImpl<$Res, _$TransportModeUsageImpl>
    implements _$$TransportModeUsageImplCopyWith<$Res> {
  __$$TransportModeUsageImplCopyWithImpl(
    _$TransportModeUsageImpl _value,
    $Res Function(_$TransportModeUsageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportModeUsage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportMode = null,
    Object? usageCount = null,
    Object? usagePercentage = null,
    Object? totalDistance = null,
    Object? totalCost = null,
  }) {
    return _then(
      _$TransportModeUsageImpl(
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as String,
        usageCount:
            null == usageCount
                ? _value.usageCount
                : usageCount // ignore: cast_nullable_to_non_nullable
                    as int,
        usagePercentage:
            null == usagePercentage
                ? _value.usagePercentage
                : usagePercentage // ignore: cast_nullable_to_non_nullable
                    as double,
        totalDistance:
            null == totalDistance
                ? _value.totalDistance
                : totalDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        totalCost:
            null == totalCost
                ? _value.totalCost
                : totalCost // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportModeUsageImpl implements _TransportModeUsage {
  const _$TransportModeUsageImpl({
    @JsonKey(name: 'transport_mode') required this.transportMode,
    @JsonKey(name: 'usage_count') required this.usageCount,
    @JsonKey(name: 'usage_percentage') required this.usagePercentage,
    @JsonKey(name: 'total_distance') required this.totalDistance,
    @JsonKey(name: 'total_cost') required this.totalCost,
  });

  factory _$TransportModeUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportModeUsageImplFromJson(json);

  @override
  @JsonKey(name: 'transport_mode')
  final String transportMode;
  @override
  @JsonKey(name: 'usage_count')
  final int usageCount;
  @override
  @JsonKey(name: 'usage_percentage')
  final double usagePercentage;
  @override
  @JsonKey(name: 'total_distance')
  final double totalDistance;
  @override
  @JsonKey(name: 'total_cost')
  final double totalCost;

  @override
  String toString() {
    return 'TransportModeUsage(transportMode: $transportMode, usageCount: $usageCount, usagePercentage: $usagePercentage, totalDistance: $totalDistance, totalCost: $totalCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportModeUsageImpl &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount) &&
            (identical(other.usagePercentage, usagePercentage) ||
                other.usagePercentage == usagePercentage) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    transportMode,
    usageCount,
    usagePercentage,
    totalDistance,
    totalCost,
  );

  /// Create a copy of TransportModeUsage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportModeUsageImplCopyWith<_$TransportModeUsageImpl> get copyWith =>
      __$$TransportModeUsageImplCopyWithImpl<_$TransportModeUsageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportModeUsageImplToJson(this);
  }
}

abstract class _TransportModeUsage implements TransportModeUsage {
  const factory _TransportModeUsage({
    @JsonKey(name: 'transport_mode') required final String transportMode,
    @JsonKey(name: 'usage_count') required final int usageCount,
    @JsonKey(name: 'usage_percentage') required final double usagePercentage,
    @JsonKey(name: 'total_distance') required final double totalDistance,
    @JsonKey(name: 'total_cost') required final double totalCost,
  }) = _$TransportModeUsageImpl;

  factory _TransportModeUsage.fromJson(Map<String, dynamic> json) =
      _$TransportModeUsageImpl.fromJson;

  @override
  @JsonKey(name: 'transport_mode')
  String get transportMode;
  @override
  @JsonKey(name: 'usage_count')
  int get usageCount;
  @override
  @JsonKey(name: 'usage_percentage')
  double get usagePercentage;
  @override
  @JsonKey(name: 'total_distance')
  double get totalDistance;
  @override
  @JsonKey(name: 'total_cost')
  double get totalCost;

  /// Create a copy of TransportModeUsage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportModeUsageImplCopyWith<_$TransportModeUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonalPattern _$SeasonalPatternFromJson(Map<String, dynamic> json) {
  return _SeasonalPattern.fromJson(json);
}

/// @nodoc
mixin _$SeasonalPattern {
  String get season => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_count')
  int get tripCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_distance')
  double get averageDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_transport_modes')
  List<String> get preferredTransportModes =>
      throw _privateConstructorUsedError;

  /// Serializes this SeasonalPattern to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeasonalPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonalPatternCopyWith<SeasonalPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalPatternCopyWith<$Res> {
  factory $SeasonalPatternCopyWith(
    SeasonalPattern value,
    $Res Function(SeasonalPattern) then,
  ) = _$SeasonalPatternCopyWithImpl<$Res, SeasonalPattern>;
  @useResult
  $Res call({
    String season,
    @JsonKey(name: 'trip_count') int tripCount,
    @JsonKey(name: 'average_distance') double averageDistance,
    @JsonKey(name: 'preferred_transport_modes')
    List<String> preferredTransportModes,
  });
}

/// @nodoc
class _$SeasonalPatternCopyWithImpl<$Res, $Val extends SeasonalPattern>
    implements $SeasonalPatternCopyWith<$Res> {
  _$SeasonalPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonalPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? tripCount = null,
    Object? averageDistance = null,
    Object? preferredTransportModes = null,
  }) {
    return _then(
      _value.copyWith(
            season:
                null == season
                    ? _value.season
                    : season // ignore: cast_nullable_to_non_nullable
                        as String,
            tripCount:
                null == tripCount
                    ? _value.tripCount
                    : tripCount // ignore: cast_nullable_to_non_nullable
                        as int,
            averageDistance:
                null == averageDistance
                    ? _value.averageDistance
                    : averageDistance // ignore: cast_nullable_to_non_nullable
                        as double,
            preferredTransportModes:
                null == preferredTransportModes
                    ? _value.preferredTransportModes
                    : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeasonalPatternImplCopyWith<$Res>
    implements $SeasonalPatternCopyWith<$Res> {
  factory _$$SeasonalPatternImplCopyWith(
    _$SeasonalPatternImpl value,
    $Res Function(_$SeasonalPatternImpl) then,
  ) = __$$SeasonalPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String season,
    @JsonKey(name: 'trip_count') int tripCount,
    @JsonKey(name: 'average_distance') double averageDistance,
    @JsonKey(name: 'preferred_transport_modes')
    List<String> preferredTransportModes,
  });
}

/// @nodoc
class __$$SeasonalPatternImplCopyWithImpl<$Res>
    extends _$SeasonalPatternCopyWithImpl<$Res, _$SeasonalPatternImpl>
    implements _$$SeasonalPatternImplCopyWith<$Res> {
  __$$SeasonalPatternImplCopyWithImpl(
    _$SeasonalPatternImpl _value,
    $Res Function(_$SeasonalPatternImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonalPattern
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? tripCount = null,
    Object? averageDistance = null,
    Object? preferredTransportModes = null,
  }) {
    return _then(
      _$SeasonalPatternImpl(
        season:
            null == season
                ? _value.season
                : season // ignore: cast_nullable_to_non_nullable
                    as String,
        tripCount:
            null == tripCount
                ? _value.tripCount
                : tripCount // ignore: cast_nullable_to_non_nullable
                    as int,
        averageDistance:
            null == averageDistance
                ? _value.averageDistance
                : averageDistance // ignore: cast_nullable_to_non_nullable
                    as double,
        preferredTransportModes:
            null == preferredTransportModes
                ? _value._preferredTransportModes
                : preferredTransportModes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonalPatternImpl implements _SeasonalPattern {
  const _$SeasonalPatternImpl({
    required this.season,
    @JsonKey(name: 'trip_count') required this.tripCount,
    @JsonKey(name: 'average_distance') required this.averageDistance,
    @JsonKey(name: 'preferred_transport_modes')
    required final List<String> preferredTransportModes,
  }) : _preferredTransportModes = preferredTransportModes;

  factory _$SeasonalPatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonalPatternImplFromJson(json);

  @override
  final String season;
  @override
  @JsonKey(name: 'trip_count')
  final int tripCount;
  @override
  @JsonKey(name: 'average_distance')
  final double averageDistance;
  final List<String> _preferredTransportModes;
  @override
  @JsonKey(name: 'preferred_transport_modes')
  List<String> get preferredTransportModes {
    if (_preferredTransportModes is EqualUnmodifiableListView)
      return _preferredTransportModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTransportModes);
  }

  @override
  String toString() {
    return 'SeasonalPattern(season: $season, tripCount: $tripCount, averageDistance: $averageDistance, preferredTransportModes: $preferredTransportModes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalPatternImpl &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.tripCount, tripCount) ||
                other.tripCount == tripCount) &&
            (identical(other.averageDistance, averageDistance) ||
                other.averageDistance == averageDistance) &&
            const DeepCollectionEquality().equals(
              other._preferredTransportModes,
              _preferredTransportModes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    season,
    tripCount,
    averageDistance,
    const DeepCollectionEquality().hash(_preferredTransportModes),
  );

  /// Create a copy of SeasonalPattern
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalPatternImplCopyWith<_$SeasonalPatternImpl> get copyWith =>
      __$$SeasonalPatternImplCopyWithImpl<_$SeasonalPatternImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonalPatternImplToJson(this);
  }
}

abstract class _SeasonalPattern implements SeasonalPattern {
  const factory _SeasonalPattern({
    required final String season,
    @JsonKey(name: 'trip_count') required final int tripCount,
    @JsonKey(name: 'average_distance') required final double averageDistance,
    @JsonKey(name: 'preferred_transport_modes')
    required final List<String> preferredTransportModes,
  }) = _$SeasonalPatternImpl;

  factory _SeasonalPattern.fromJson(Map<String, dynamic> json) =
      _$SeasonalPatternImpl.fromJson;

  @override
  String get season;
  @override
  @JsonKey(name: 'trip_count')
  int get tripCount;
  @override
  @JsonKey(name: 'average_distance')
  double get averageDistance;
  @override
  @JsonKey(name: 'preferred_transport_modes')
  List<String> get preferredTransportModes;

  /// Create a copy of SeasonalPattern
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalPatternImplCopyWith<_$SeasonalPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalInsights _$PersonalInsightsFromJson(Map<String, dynamic> json) {
  return _PersonalInsights.fromJson(json);
}

/// @nodoc
mixin _$PersonalInsights {
  @JsonKey(name: 'efficiency_score')
  double get efficiencyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'sustainability_score')
  double get sustainabilityScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_efficiency_score')
  double get costEfficiencyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendations')
  List<Recommendation> get recommendations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'improvement_areas')
  List<ImprovementArea> get improvementAreas =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'comparison_data')
  BenchmarkData? get comparisonData => throw _privateConstructorUsedError;

  /// Serializes this PersonalInsights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalInsightsCopyWith<PersonalInsights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInsightsCopyWith<$Res> {
  factory $PersonalInsightsCopyWith(
    PersonalInsights value,
    $Res Function(PersonalInsights) then,
  ) = _$PersonalInsightsCopyWithImpl<$Res, PersonalInsights>;
  @useResult
  $Res call({
    @JsonKey(name: 'efficiency_score') double efficiencyScore,
    @JsonKey(name: 'sustainability_score') double sustainabilityScore,
    @JsonKey(name: 'cost_efficiency_score') double costEfficiencyScore,
    @JsonKey(name: 'recommendations') List<Recommendation> recommendations,
    @JsonKey(name: 'improvement_areas') List<ImprovementArea> improvementAreas,
    @JsonKey(name: 'comparison_data') BenchmarkData? comparisonData,
  });

  $BenchmarkDataCopyWith<$Res>? get comparisonData;
}

/// @nodoc
class _$PersonalInsightsCopyWithImpl<$Res, $Val extends PersonalInsights>
    implements $PersonalInsightsCopyWith<$Res> {
  _$PersonalInsightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? efficiencyScore = null,
    Object? sustainabilityScore = null,
    Object? costEfficiencyScore = null,
    Object? recommendations = null,
    Object? improvementAreas = null,
    Object? comparisonData = freezed,
  }) {
    return _then(
      _value.copyWith(
            efficiencyScore:
                null == efficiencyScore
                    ? _value.efficiencyScore
                    : efficiencyScore // ignore: cast_nullable_to_non_nullable
                        as double,
            sustainabilityScore:
                null == sustainabilityScore
                    ? _value.sustainabilityScore
                    : sustainabilityScore // ignore: cast_nullable_to_non_nullable
                        as double,
            costEfficiencyScore:
                null == costEfficiencyScore
                    ? _value.costEfficiencyScore
                    : costEfficiencyScore // ignore: cast_nullable_to_non_nullable
                        as double,
            recommendations:
                null == recommendations
                    ? _value.recommendations
                    : recommendations // ignore: cast_nullable_to_non_nullable
                        as List<Recommendation>,
            improvementAreas:
                null == improvementAreas
                    ? _value.improvementAreas
                    : improvementAreas // ignore: cast_nullable_to_non_nullable
                        as List<ImprovementArea>,
            comparisonData:
                freezed == comparisonData
                    ? _value.comparisonData
                    : comparisonData // ignore: cast_nullable_to_non_nullable
                        as BenchmarkData?,
          )
          as $Val,
    );
  }

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BenchmarkDataCopyWith<$Res>? get comparisonData {
    if (_value.comparisonData == null) {
      return null;
    }

    return $BenchmarkDataCopyWith<$Res>(_value.comparisonData!, (value) {
      return _then(_value.copyWith(comparisonData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonalInsightsImplCopyWith<$Res>
    implements $PersonalInsightsCopyWith<$Res> {
  factory _$$PersonalInsightsImplCopyWith(
    _$PersonalInsightsImpl value,
    $Res Function(_$PersonalInsightsImpl) then,
  ) = __$$PersonalInsightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'efficiency_score') double efficiencyScore,
    @JsonKey(name: 'sustainability_score') double sustainabilityScore,
    @JsonKey(name: 'cost_efficiency_score') double costEfficiencyScore,
    @JsonKey(name: 'recommendations') List<Recommendation> recommendations,
    @JsonKey(name: 'improvement_areas') List<ImprovementArea> improvementAreas,
    @JsonKey(name: 'comparison_data') BenchmarkData? comparisonData,
  });

  @override
  $BenchmarkDataCopyWith<$Res>? get comparisonData;
}

/// @nodoc
class __$$PersonalInsightsImplCopyWithImpl<$Res>
    extends _$PersonalInsightsCopyWithImpl<$Res, _$PersonalInsightsImpl>
    implements _$$PersonalInsightsImplCopyWith<$Res> {
  __$$PersonalInsightsImplCopyWithImpl(
    _$PersonalInsightsImpl _value,
    $Res Function(_$PersonalInsightsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? efficiencyScore = null,
    Object? sustainabilityScore = null,
    Object? costEfficiencyScore = null,
    Object? recommendations = null,
    Object? improvementAreas = null,
    Object? comparisonData = freezed,
  }) {
    return _then(
      _$PersonalInsightsImpl(
        efficiencyScore:
            null == efficiencyScore
                ? _value.efficiencyScore
                : efficiencyScore // ignore: cast_nullable_to_non_nullable
                    as double,
        sustainabilityScore:
            null == sustainabilityScore
                ? _value.sustainabilityScore
                : sustainabilityScore // ignore: cast_nullable_to_non_nullable
                    as double,
        costEfficiencyScore:
            null == costEfficiencyScore
                ? _value.costEfficiencyScore
                : costEfficiencyScore // ignore: cast_nullable_to_non_nullable
                    as double,
        recommendations:
            null == recommendations
                ? _value._recommendations
                : recommendations // ignore: cast_nullable_to_non_nullable
                    as List<Recommendation>,
        improvementAreas:
            null == improvementAreas
                ? _value._improvementAreas
                : improvementAreas // ignore: cast_nullable_to_non_nullable
                    as List<ImprovementArea>,
        comparisonData:
            freezed == comparisonData
                ? _value.comparisonData
                : comparisonData // ignore: cast_nullable_to_non_nullable
                    as BenchmarkData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalInsightsImpl implements _PersonalInsights {
  const _$PersonalInsightsImpl({
    @JsonKey(name: 'efficiency_score') required this.efficiencyScore,
    @JsonKey(name: 'sustainability_score') required this.sustainabilityScore,
    @JsonKey(name: 'cost_efficiency_score') required this.costEfficiencyScore,
    @JsonKey(name: 'recommendations')
    required final List<Recommendation> recommendations,
    @JsonKey(name: 'improvement_areas')
    required final List<ImprovementArea> improvementAreas,
    @JsonKey(name: 'comparison_data') this.comparisonData,
  }) : _recommendations = recommendations,
       _improvementAreas = improvementAreas;

  factory _$PersonalInsightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalInsightsImplFromJson(json);

  @override
  @JsonKey(name: 'efficiency_score')
  final double efficiencyScore;
  @override
  @JsonKey(name: 'sustainability_score')
  final double sustainabilityScore;
  @override
  @JsonKey(name: 'cost_efficiency_score')
  final double costEfficiencyScore;
  final List<Recommendation> _recommendations;
  @override
  @JsonKey(name: 'recommendations')
  List<Recommendation> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final List<ImprovementArea> _improvementAreas;
  @override
  @JsonKey(name: 'improvement_areas')
  List<ImprovementArea> get improvementAreas {
    if (_improvementAreas is EqualUnmodifiableListView)
      return _improvementAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_improvementAreas);
  }

  @override
  @JsonKey(name: 'comparison_data')
  final BenchmarkData? comparisonData;

  @override
  String toString() {
    return 'PersonalInsights(efficiencyScore: $efficiencyScore, sustainabilityScore: $sustainabilityScore, costEfficiencyScore: $costEfficiencyScore, recommendations: $recommendations, improvementAreas: $improvementAreas, comparisonData: $comparisonData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInsightsImpl &&
            (identical(other.efficiencyScore, efficiencyScore) ||
                other.efficiencyScore == efficiencyScore) &&
            (identical(other.sustainabilityScore, sustainabilityScore) ||
                other.sustainabilityScore == sustainabilityScore) &&
            (identical(other.costEfficiencyScore, costEfficiencyScore) ||
                other.costEfficiencyScore == costEfficiencyScore) &&
            const DeepCollectionEquality().equals(
              other._recommendations,
              _recommendations,
            ) &&
            const DeepCollectionEquality().equals(
              other._improvementAreas,
              _improvementAreas,
            ) &&
            (identical(other.comparisonData, comparisonData) ||
                other.comparisonData == comparisonData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    efficiencyScore,
    sustainabilityScore,
    costEfficiencyScore,
    const DeepCollectionEquality().hash(_recommendations),
    const DeepCollectionEquality().hash(_improvementAreas),
    comparisonData,
  );

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInsightsImplCopyWith<_$PersonalInsightsImpl> get copyWith =>
      __$$PersonalInsightsImplCopyWithImpl<_$PersonalInsightsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalInsightsImplToJson(this);
  }
}

abstract class _PersonalInsights implements PersonalInsights {
  const factory _PersonalInsights({
    @JsonKey(name: 'efficiency_score') required final double efficiencyScore,
    @JsonKey(name: 'sustainability_score')
    required final double sustainabilityScore,
    @JsonKey(name: 'cost_efficiency_score')
    required final double costEfficiencyScore,
    @JsonKey(name: 'recommendations')
    required final List<Recommendation> recommendations,
    @JsonKey(name: 'improvement_areas')
    required final List<ImprovementArea> improvementAreas,
    @JsonKey(name: 'comparison_data') final BenchmarkData? comparisonData,
  }) = _$PersonalInsightsImpl;

  factory _PersonalInsights.fromJson(Map<String, dynamic> json) =
      _$PersonalInsightsImpl.fromJson;

  @override
  @JsonKey(name: 'efficiency_score')
  double get efficiencyScore;
  @override
  @JsonKey(name: 'sustainability_score')
  double get sustainabilityScore;
  @override
  @JsonKey(name: 'cost_efficiency_score')
  double get costEfficiencyScore;
  @override
  @JsonKey(name: 'recommendations')
  List<Recommendation> get recommendations;
  @override
  @JsonKey(name: 'improvement_areas')
  List<ImprovementArea> get improvementAreas;
  @override
  @JsonKey(name: 'comparison_data')
  BenchmarkData? get comparisonData;

  /// Create a copy of PersonalInsights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalInsightsImplCopyWith<_$PersonalInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return _Recommendation.fromJson(json);
}

/// @nodoc
mixin _$Recommendation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommendation_type')
  String get recommendationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'potential_savings')
  double? get potentialSavings => throw _privateConstructorUsedError;
  @JsonKey(name: 'environmental_impact')
  double? get environmentalImpact => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority_level')
  int get priorityLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_required')
  String? get actionRequired => throw _privateConstructorUsedError;

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
    Recommendation value,
    $Res Function(Recommendation) then,
  ) = _$RecommendationCopyWithImpl<$Res, Recommendation>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'recommendation_type') String recommendationType,
    @JsonKey(name: 'potential_savings') double? potentialSavings,
    @JsonKey(name: 'environmental_impact') double? environmentalImpact,
    @JsonKey(name: 'priority_level') int priorityLevel,
    @JsonKey(name: 'action_required') String? actionRequired,
  });
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res, $Val extends Recommendation>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? recommendationType = null,
    Object? potentialSavings = freezed,
    Object? environmentalImpact = freezed,
    Object? priorityLevel = null,
    Object? actionRequired = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            recommendationType:
                null == recommendationType
                    ? _value.recommendationType
                    : recommendationType // ignore: cast_nullable_to_non_nullable
                        as String,
            potentialSavings:
                freezed == potentialSavings
                    ? _value.potentialSavings
                    : potentialSavings // ignore: cast_nullable_to_non_nullable
                        as double?,
            environmentalImpact:
                freezed == environmentalImpact
                    ? _value.environmentalImpact
                    : environmentalImpact // ignore: cast_nullable_to_non_nullable
                        as double?,
            priorityLevel:
                null == priorityLevel
                    ? _value.priorityLevel
                    : priorityLevel // ignore: cast_nullable_to_non_nullable
                        as int,
            actionRequired:
                freezed == actionRequired
                    ? _value.actionRequired
                    : actionRequired // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecommendationImplCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$$RecommendationImplCopyWith(
    _$RecommendationImpl value,
    $Res Function(_$RecommendationImpl) then,
  ) = __$$RecommendationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    @JsonKey(name: 'recommendation_type') String recommendationType,
    @JsonKey(name: 'potential_savings') double? potentialSavings,
    @JsonKey(name: 'environmental_impact') double? environmentalImpact,
    @JsonKey(name: 'priority_level') int priorityLevel,
    @JsonKey(name: 'action_required') String? actionRequired,
  });
}

/// @nodoc
class __$$RecommendationImplCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res, _$RecommendationImpl>
    implements _$$RecommendationImplCopyWith<$Res> {
  __$$RecommendationImplCopyWithImpl(
    _$RecommendationImpl _value,
    $Res Function(_$RecommendationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? recommendationType = null,
    Object? potentialSavings = freezed,
    Object? environmentalImpact = freezed,
    Object? priorityLevel = null,
    Object? actionRequired = freezed,
  }) {
    return _then(
      _$RecommendationImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        recommendationType:
            null == recommendationType
                ? _value.recommendationType
                : recommendationType // ignore: cast_nullable_to_non_nullable
                    as String,
        potentialSavings:
            freezed == potentialSavings
                ? _value.potentialSavings
                : potentialSavings // ignore: cast_nullable_to_non_nullable
                    as double?,
        environmentalImpact:
            freezed == environmentalImpact
                ? _value.environmentalImpact
                : environmentalImpact // ignore: cast_nullable_to_non_nullable
                    as double?,
        priorityLevel:
            null == priorityLevel
                ? _value.priorityLevel
                : priorityLevel // ignore: cast_nullable_to_non_nullable
                    as int,
        actionRequired:
            freezed == actionRequired
                ? _value.actionRequired
                : actionRequired // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationImpl implements _Recommendation {
  const _$RecommendationImpl({
    required this.id,
    required this.title,
    required this.description,
    @JsonKey(name: 'recommendation_type') required this.recommendationType,
    @JsonKey(name: 'potential_savings') this.potentialSavings,
    @JsonKey(name: 'environmental_impact') this.environmentalImpact,
    @JsonKey(name: 'priority_level') required this.priorityLevel,
    @JsonKey(name: 'action_required') this.actionRequired,
  });

  factory _$RecommendationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'recommendation_type')
  final String recommendationType;
  @override
  @JsonKey(name: 'potential_savings')
  final double? potentialSavings;
  @override
  @JsonKey(name: 'environmental_impact')
  final double? environmentalImpact;
  @override
  @JsonKey(name: 'priority_level')
  final int priorityLevel;
  @override
  @JsonKey(name: 'action_required')
  final String? actionRequired;

  @override
  String toString() {
    return 'Recommendation(id: $id, title: $title, description: $description, recommendationType: $recommendationType, potentialSavings: $potentialSavings, environmentalImpact: $environmentalImpact, priorityLevel: $priorityLevel, actionRequired: $actionRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recommendationType, recommendationType) ||
                other.recommendationType == recommendationType) &&
            (identical(other.potentialSavings, potentialSavings) ||
                other.potentialSavings == potentialSavings) &&
            (identical(other.environmentalImpact, environmentalImpact) ||
                other.environmentalImpact == environmentalImpact) &&
            (identical(other.priorityLevel, priorityLevel) ||
                other.priorityLevel == priorityLevel) &&
            (identical(other.actionRequired, actionRequired) ||
                other.actionRequired == actionRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    recommendationType,
    potentialSavings,
    environmentalImpact,
    priorityLevel,
    actionRequired,
  );

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      __$$RecommendationImplCopyWithImpl<_$RecommendationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationImplToJson(this);
  }
}

abstract class _Recommendation implements Recommendation {
  const factory _Recommendation({
    required final String id,
    required final String title,
    required final String description,
    @JsonKey(name: 'recommendation_type')
    required final String recommendationType,
    @JsonKey(name: 'potential_savings') final double? potentialSavings,
    @JsonKey(name: 'environmental_impact') final double? environmentalImpact,
    @JsonKey(name: 'priority_level') required final int priorityLevel,
    @JsonKey(name: 'action_required') final String? actionRequired,
  }) = _$RecommendationImpl;

  factory _Recommendation.fromJson(Map<String, dynamic> json) =
      _$RecommendationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'recommendation_type')
  String get recommendationType;
  @override
  @JsonKey(name: 'potential_savings')
  double? get potentialSavings;
  @override
  @JsonKey(name: 'environmental_impact')
  double? get environmentalImpact;
  @override
  @JsonKey(name: 'priority_level')
  int get priorityLevel;
  @override
  @JsonKey(name: 'action_required')
  String? get actionRequired;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationImplCopyWith<_$RecommendationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImprovementArea _$ImprovementAreaFromJson(Map<String, dynamic> json) {
  return _ImprovementArea.fromJson(json);
}

/// @nodoc
mixin _$ImprovementArea {
  String get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_score')
  double get currentScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_score')
  double get targetScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'improvement_tips')
  List<String> get improvementTips => throw _privateConstructorUsedError;

  /// Serializes this ImprovementArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImprovementArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImprovementAreaCopyWith<ImprovementArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImprovementAreaCopyWith<$Res> {
  factory $ImprovementAreaCopyWith(
    ImprovementArea value,
    $Res Function(ImprovementArea) then,
  ) = _$ImprovementAreaCopyWithImpl<$Res, ImprovementArea>;
  @useResult
  $Res call({
    String area,
    @JsonKey(name: 'current_score') double currentScore,
    @JsonKey(name: 'target_score') double targetScore,
    @JsonKey(name: 'improvement_tips') List<String> improvementTips,
  });
}

/// @nodoc
class _$ImprovementAreaCopyWithImpl<$Res, $Val extends ImprovementArea>
    implements $ImprovementAreaCopyWith<$Res> {
  _$ImprovementAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImprovementArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? currentScore = null,
    Object? targetScore = null,
    Object? improvementTips = null,
  }) {
    return _then(
      _value.copyWith(
            area:
                null == area
                    ? _value.area
                    : area // ignore: cast_nullable_to_non_nullable
                        as String,
            currentScore:
                null == currentScore
                    ? _value.currentScore
                    : currentScore // ignore: cast_nullable_to_non_nullable
                        as double,
            targetScore:
                null == targetScore
                    ? _value.targetScore
                    : targetScore // ignore: cast_nullable_to_non_nullable
                        as double,
            improvementTips:
                null == improvementTips
                    ? _value.improvementTips
                    : improvementTips // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImprovementAreaImplCopyWith<$Res>
    implements $ImprovementAreaCopyWith<$Res> {
  factory _$$ImprovementAreaImplCopyWith(
    _$ImprovementAreaImpl value,
    $Res Function(_$ImprovementAreaImpl) then,
  ) = __$$ImprovementAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String area,
    @JsonKey(name: 'current_score') double currentScore,
    @JsonKey(name: 'target_score') double targetScore,
    @JsonKey(name: 'improvement_tips') List<String> improvementTips,
  });
}

/// @nodoc
class __$$ImprovementAreaImplCopyWithImpl<$Res>
    extends _$ImprovementAreaCopyWithImpl<$Res, _$ImprovementAreaImpl>
    implements _$$ImprovementAreaImplCopyWith<$Res> {
  __$$ImprovementAreaImplCopyWithImpl(
    _$ImprovementAreaImpl _value,
    $Res Function(_$ImprovementAreaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImprovementArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? currentScore = null,
    Object? targetScore = null,
    Object? improvementTips = null,
  }) {
    return _then(
      _$ImprovementAreaImpl(
        area:
            null == area
                ? _value.area
                : area // ignore: cast_nullable_to_non_nullable
                    as String,
        currentScore:
            null == currentScore
                ? _value.currentScore
                : currentScore // ignore: cast_nullable_to_non_nullable
                    as double,
        targetScore:
            null == targetScore
                ? _value.targetScore
                : targetScore // ignore: cast_nullable_to_non_nullable
                    as double,
        improvementTips:
            null == improvementTips
                ? _value._improvementTips
                : improvementTips // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImprovementAreaImpl implements _ImprovementArea {
  const _$ImprovementAreaImpl({
    required this.area,
    @JsonKey(name: 'current_score') required this.currentScore,
    @JsonKey(name: 'target_score') required this.targetScore,
    @JsonKey(name: 'improvement_tips')
    required final List<String> improvementTips,
  }) : _improvementTips = improvementTips;

  factory _$ImprovementAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImprovementAreaImplFromJson(json);

  @override
  final String area;
  @override
  @JsonKey(name: 'current_score')
  final double currentScore;
  @override
  @JsonKey(name: 'target_score')
  final double targetScore;
  final List<String> _improvementTips;
  @override
  @JsonKey(name: 'improvement_tips')
  List<String> get improvementTips {
    if (_improvementTips is EqualUnmodifiableListView) return _improvementTips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_improvementTips);
  }

  @override
  String toString() {
    return 'ImprovementArea(area: $area, currentScore: $currentScore, targetScore: $targetScore, improvementTips: $improvementTips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImprovementAreaImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.currentScore, currentScore) ||
                other.currentScore == currentScore) &&
            (identical(other.targetScore, targetScore) ||
                other.targetScore == targetScore) &&
            const DeepCollectionEquality().equals(
              other._improvementTips,
              _improvementTips,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    area,
    currentScore,
    targetScore,
    const DeepCollectionEquality().hash(_improvementTips),
  );

  /// Create a copy of ImprovementArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImprovementAreaImplCopyWith<_$ImprovementAreaImpl> get copyWith =>
      __$$ImprovementAreaImplCopyWithImpl<_$ImprovementAreaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ImprovementAreaImplToJson(this);
  }
}

abstract class _ImprovementArea implements ImprovementArea {
  const factory _ImprovementArea({
    required final String area,
    @JsonKey(name: 'current_score') required final double currentScore,
    @JsonKey(name: 'target_score') required final double targetScore,
    @JsonKey(name: 'improvement_tips')
    required final List<String> improvementTips,
  }) = _$ImprovementAreaImpl;

  factory _ImprovementArea.fromJson(Map<String, dynamic> json) =
      _$ImprovementAreaImpl.fromJson;

  @override
  String get area;
  @override
  @JsonKey(name: 'current_score')
  double get currentScore;
  @override
  @JsonKey(name: 'target_score')
  double get targetScore;
  @override
  @JsonKey(name: 'improvement_tips')
  List<String> get improvementTips;

  /// Create a copy of ImprovementArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImprovementAreaImplCopyWith<_$ImprovementAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BenchmarkData _$BenchmarkDataFromJson(Map<String, dynamic> json) {
  return _BenchmarkData.fromJson(json);
}

/// @nodoc
mixin _$BenchmarkData {
  @JsonKey(name: 'user_percentile')
  double get userPercentile => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_trips_per_week')
  double get averageTripsPerWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_cost_per_trip')
  double get averageCostPerTrip => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_emissions_per_trip')
  double get averageEmissionsPerTrip => throw _privateConstructorUsedError;
  @JsonKey(name: 'comparison_group')
  String get comparisonGroup => throw _privateConstructorUsedError;

  /// Serializes this BenchmarkData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BenchmarkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BenchmarkDataCopyWith<BenchmarkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BenchmarkDataCopyWith<$Res> {
  factory $BenchmarkDataCopyWith(
    BenchmarkData value,
    $Res Function(BenchmarkData) then,
  ) = _$BenchmarkDataCopyWithImpl<$Res, BenchmarkData>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_percentile') double userPercentile,
    @JsonKey(name: 'average_trips_per_week') double averageTripsPerWeek,
    @JsonKey(name: 'average_cost_per_trip') double averageCostPerTrip,
    @JsonKey(name: 'average_emissions_per_trip') double averageEmissionsPerTrip,
    @JsonKey(name: 'comparison_group') String comparisonGroup,
  });
}

/// @nodoc
class _$BenchmarkDataCopyWithImpl<$Res, $Val extends BenchmarkData>
    implements $BenchmarkDataCopyWith<$Res> {
  _$BenchmarkDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BenchmarkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPercentile = null,
    Object? averageTripsPerWeek = null,
    Object? averageCostPerTrip = null,
    Object? averageEmissionsPerTrip = null,
    Object? comparisonGroup = null,
  }) {
    return _then(
      _value.copyWith(
            userPercentile:
                null == userPercentile
                    ? _value.userPercentile
                    : userPercentile // ignore: cast_nullable_to_non_nullable
                        as double,
            averageTripsPerWeek:
                null == averageTripsPerWeek
                    ? _value.averageTripsPerWeek
                    : averageTripsPerWeek // ignore: cast_nullable_to_non_nullable
                        as double,
            averageCostPerTrip:
                null == averageCostPerTrip
                    ? _value.averageCostPerTrip
                    : averageCostPerTrip // ignore: cast_nullable_to_non_nullable
                        as double,
            averageEmissionsPerTrip:
                null == averageEmissionsPerTrip
                    ? _value.averageEmissionsPerTrip
                    : averageEmissionsPerTrip // ignore: cast_nullable_to_non_nullable
                        as double,
            comparisonGroup:
                null == comparisonGroup
                    ? _value.comparisonGroup
                    : comparisonGroup // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BenchmarkDataImplCopyWith<$Res>
    implements $BenchmarkDataCopyWith<$Res> {
  factory _$$BenchmarkDataImplCopyWith(
    _$BenchmarkDataImpl value,
    $Res Function(_$BenchmarkDataImpl) then,
  ) = __$$BenchmarkDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_percentile') double userPercentile,
    @JsonKey(name: 'average_trips_per_week') double averageTripsPerWeek,
    @JsonKey(name: 'average_cost_per_trip') double averageCostPerTrip,
    @JsonKey(name: 'average_emissions_per_trip') double averageEmissionsPerTrip,
    @JsonKey(name: 'comparison_group') String comparisonGroup,
  });
}

/// @nodoc
class __$$BenchmarkDataImplCopyWithImpl<$Res>
    extends _$BenchmarkDataCopyWithImpl<$Res, _$BenchmarkDataImpl>
    implements _$$BenchmarkDataImplCopyWith<$Res> {
  __$$BenchmarkDataImplCopyWithImpl(
    _$BenchmarkDataImpl _value,
    $Res Function(_$BenchmarkDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BenchmarkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPercentile = null,
    Object? averageTripsPerWeek = null,
    Object? averageCostPerTrip = null,
    Object? averageEmissionsPerTrip = null,
    Object? comparisonGroup = null,
  }) {
    return _then(
      _$BenchmarkDataImpl(
        userPercentile:
            null == userPercentile
                ? _value.userPercentile
                : userPercentile // ignore: cast_nullable_to_non_nullable
                    as double,
        averageTripsPerWeek:
            null == averageTripsPerWeek
                ? _value.averageTripsPerWeek
                : averageTripsPerWeek // ignore: cast_nullable_to_non_nullable
                    as double,
        averageCostPerTrip:
            null == averageCostPerTrip
                ? _value.averageCostPerTrip
                : averageCostPerTrip // ignore: cast_nullable_to_non_nullable
                    as double,
        averageEmissionsPerTrip:
            null == averageEmissionsPerTrip
                ? _value.averageEmissionsPerTrip
                : averageEmissionsPerTrip // ignore: cast_nullable_to_non_nullable
                    as double,
        comparisonGroup:
            null == comparisonGroup
                ? _value.comparisonGroup
                : comparisonGroup // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BenchmarkDataImpl implements _BenchmarkData {
  const _$BenchmarkDataImpl({
    @JsonKey(name: 'user_percentile') required this.userPercentile,
    @JsonKey(name: 'average_trips_per_week') required this.averageTripsPerWeek,
    @JsonKey(name: 'average_cost_per_trip') required this.averageCostPerTrip,
    @JsonKey(name: 'average_emissions_per_trip')
    required this.averageEmissionsPerTrip,
    @JsonKey(name: 'comparison_group') required this.comparisonGroup,
  });

  factory _$BenchmarkDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BenchmarkDataImplFromJson(json);

  @override
  @JsonKey(name: 'user_percentile')
  final double userPercentile;
  @override
  @JsonKey(name: 'average_trips_per_week')
  final double averageTripsPerWeek;
  @override
  @JsonKey(name: 'average_cost_per_trip')
  final double averageCostPerTrip;
  @override
  @JsonKey(name: 'average_emissions_per_trip')
  final double averageEmissionsPerTrip;
  @override
  @JsonKey(name: 'comparison_group')
  final String comparisonGroup;

  @override
  String toString() {
    return 'BenchmarkData(userPercentile: $userPercentile, averageTripsPerWeek: $averageTripsPerWeek, averageCostPerTrip: $averageCostPerTrip, averageEmissionsPerTrip: $averageEmissionsPerTrip, comparisonGroup: $comparisonGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BenchmarkDataImpl &&
            (identical(other.userPercentile, userPercentile) ||
                other.userPercentile == userPercentile) &&
            (identical(other.averageTripsPerWeek, averageTripsPerWeek) ||
                other.averageTripsPerWeek == averageTripsPerWeek) &&
            (identical(other.averageCostPerTrip, averageCostPerTrip) ||
                other.averageCostPerTrip == averageCostPerTrip) &&
            (identical(
                  other.averageEmissionsPerTrip,
                  averageEmissionsPerTrip,
                ) ||
                other.averageEmissionsPerTrip == averageEmissionsPerTrip) &&
            (identical(other.comparisonGroup, comparisonGroup) ||
                other.comparisonGroup == comparisonGroup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userPercentile,
    averageTripsPerWeek,
    averageCostPerTrip,
    averageEmissionsPerTrip,
    comparisonGroup,
  );

  /// Create a copy of BenchmarkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BenchmarkDataImplCopyWith<_$BenchmarkDataImpl> get copyWith =>
      __$$BenchmarkDataImplCopyWithImpl<_$BenchmarkDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BenchmarkDataImplToJson(this);
  }
}

abstract class _BenchmarkData implements BenchmarkData {
  const factory _BenchmarkData({
    @JsonKey(name: 'user_percentile') required final double userPercentile,
    @JsonKey(name: 'average_trips_per_week')
    required final double averageTripsPerWeek,
    @JsonKey(name: 'average_cost_per_trip')
    required final double averageCostPerTrip,
    @JsonKey(name: 'average_emissions_per_trip')
    required final double averageEmissionsPerTrip,
    @JsonKey(name: 'comparison_group') required final String comparisonGroup,
  }) = _$BenchmarkDataImpl;

  factory _BenchmarkData.fromJson(Map<String, dynamic> json) =
      _$BenchmarkDataImpl.fromJson;

  @override
  @JsonKey(name: 'user_percentile')
  double get userPercentile;
  @override
  @JsonKey(name: 'average_trips_per_week')
  double get averageTripsPerWeek;
  @override
  @JsonKey(name: 'average_cost_per_trip')
  double get averageCostPerTrip;
  @override
  @JsonKey(name: 'average_emissions_per_trip')
  double get averageEmissionsPerTrip;
  @override
  @JsonKey(name: 'comparison_group')
  String get comparisonGroup;

  /// Create a copy of BenchmarkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BenchmarkDataImplCopyWith<_$BenchmarkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
