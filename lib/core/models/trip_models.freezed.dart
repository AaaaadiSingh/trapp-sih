// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_location')
  LocationPoint get startLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_location')
  LocationPoint get endLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'transport_mode')
  String get transportMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km')
  double? get distanceKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost')
  double? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'emissions_kg')
  double? get emissionsKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_status')
  String get tripStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call({
    String id,
    String title,
    @JsonKey(name: 'start_location') LocationPoint startLocation,
    @JsonKey(name: 'end_location') LocationPoint endLocation,
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'cost') double? cost,
    @JsonKey(name: 'emissions_kg') double? emissionsKg,
    @JsonKey(name: 'trip_status') String tripStatus,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  $LocationPointCopyWith<$Res> get startLocation;
  $LocationPointCopyWith<$Res> get endLocation;
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? startLocation = null,
    Object? endLocation = null,
    Object? transportMode = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationMinutes = freezed,
    Object? distanceKm = freezed,
    Object? cost = freezed,
    Object? emissionsKg = freezed,
    Object? tripStatus = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
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
            durationMinutes:
                freezed == durationMinutes
                    ? _value.durationMinutes
                    : durationMinutes // ignore: cast_nullable_to_non_nullable
                        as int?,
            distanceKm:
                freezed == distanceKm
                    ? _value.distanceKm
                    : distanceKm // ignore: cast_nullable_to_non_nullable
                        as double?,
            cost:
                freezed == cost
                    ? _value.cost
                    : cost // ignore: cast_nullable_to_non_nullable
                        as double?,
            emissionsKg:
                freezed == emissionsKg
                    ? _value.emissionsKg
                    : emissionsKg // ignore: cast_nullable_to_non_nullable
                        as double?,
            tripStatus:
                null == tripStatus
                    ? _value.tripStatus
                    : tripStatus // ignore: cast_nullable_to_non_nullable
                        as String,
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

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get startLocation {
    return $LocationPointCopyWith<$Res>(_value.startLocation, (value) {
      return _then(_value.copyWith(startLocation: value) as $Val);
    });
  }

  /// Create a copy of Trip
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
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
    _$TripImpl value,
    $Res Function(_$TripImpl) then,
  ) = __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    @JsonKey(name: 'start_location') LocationPoint startLocation,
    @JsonKey(name: 'end_location') LocationPoint endLocation,
    @JsonKey(name: 'transport_mode') String transportMode,
    @JsonKey(name: 'start_time') DateTime startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'cost') double? cost,
    @JsonKey(name: 'emissions_kg') double? emissionsKg,
    @JsonKey(name: 'trip_status') String tripStatus,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  @override
  $LocationPointCopyWith<$Res> get startLocation;
  @override
  $LocationPointCopyWith<$Res> get endLocation;
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
    : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? startLocation = null,
    Object? endLocation = null,
    Object? transportMode = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? durationMinutes = freezed,
    Object? distanceKm = freezed,
    Object? cost = freezed,
    Object? emissionsKg = freezed,
    Object? tripStatus = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TripImpl(
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
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
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
        durationMinutes:
            freezed == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                    as int?,
        distanceKm:
            freezed == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                    as double?,
        cost:
            freezed == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                    as double?,
        emissionsKg:
            freezed == emissionsKg
                ? _value.emissionsKg
                : emissionsKg // ignore: cast_nullable_to_non_nullable
                    as double?,
        tripStatus:
            null == tripStatus
                ? _value.tripStatus
                : tripStatus // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$TripImpl implements _Trip {
  const _$TripImpl({
    required this.id,
    required this.title,
    @JsonKey(name: 'start_location') required this.startLocation,
    @JsonKey(name: 'end_location') required this.endLocation,
    @JsonKey(name: 'transport_mode') required this.transportMode,
    @JsonKey(name: 'start_time') required this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'duration_minutes') this.durationMinutes,
    @JsonKey(name: 'distance_km') this.distanceKm,
    @JsonKey(name: 'cost') this.cost,
    @JsonKey(name: 'emissions_kg') this.emissionsKg,
    @JsonKey(name: 'trip_status') required this.tripStatus,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'start_location')
  final LocationPoint startLocation;
  @override
  @JsonKey(name: 'end_location')
  final LocationPoint endLocation;
  @override
  @JsonKey(name: 'transport_mode')
  final String transportMode;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime? endTime;
  @override
  @JsonKey(name: 'duration_minutes')
  final int? durationMinutes;
  @override
  @JsonKey(name: 'distance_km')
  final double? distanceKm;
  @override
  @JsonKey(name: 'cost')
  final double? cost;
  @override
  @JsonKey(name: 'emissions_kg')
  final double? emissionsKg;
  @override
  @JsonKey(name: 'trip_status')
  final String tripStatus;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Trip(id: $id, title: $title, startLocation: $startLocation, endLocation: $endLocation, transportMode: $transportMode, startTime: $startTime, endTime: $endTime, durationMinutes: $durationMinutes, distanceKm: $distanceKm, cost: $cost, emissionsKg: $emissionsKg, tripStatus: $tripStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.endLocation, endLocation) ||
                other.endLocation == endLocation) &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.emissionsKg, emissionsKg) ||
                other.emissionsKg == emissionsKg) &&
            (identical(other.tripStatus, tripStatus) ||
                other.tripStatus == tripStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    startLocation,
    endLocation,
    transportMode,
    startTime,
    endTime,
    durationMinutes,
    distanceKm,
    cost,
    emissionsKg,
    tripStatus,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(this);
  }
}

abstract class _Trip implements Trip {
  const factory _Trip({
    required final String id,
    required final String title,
    @JsonKey(name: 'start_location') required final LocationPoint startLocation,
    @JsonKey(name: 'end_location') required final LocationPoint endLocation,
    @JsonKey(name: 'transport_mode') required final String transportMode,
    @JsonKey(name: 'start_time') required final DateTime startTime,
    @JsonKey(name: 'end_time') final DateTime? endTime,
    @JsonKey(name: 'duration_minutes') final int? durationMinutes,
    @JsonKey(name: 'distance_km') final double? distanceKm,
    @JsonKey(name: 'cost') final double? cost,
    @JsonKey(name: 'emissions_kg') final double? emissionsKg,
    @JsonKey(name: 'trip_status') required final String tripStatus,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'start_location')
  LocationPoint get startLocation;
  @override
  @JsonKey(name: 'end_location')
  LocationPoint get endLocation;
  @override
  @JsonKey(name: 'transport_mode')
  String get transportMode;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'end_time')
  DateTime? get endTime;
  @override
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes;
  @override
  @JsonKey(name: 'distance_km')
  double? get distanceKm;
  @override
  @JsonKey(name: 'cost')
  double? get cost;
  @override
  @JsonKey(name: 'emissions_kg')
  double? get emissionsKg;
  @override
  @JsonKey(name: 'trip_status')
  String get tripStatus;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationPoint _$LocationPointFromJson(Map<String, dynamic> json) {
  return _LocationPoint.fromJson(json);
}

/// @nodoc
mixin _$LocationPoint {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;

  /// Serializes this LocationPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationPointCopyWith<LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPointCopyWith<$Res> {
  factory $LocationPointCopyWith(
    LocationPoint value,
    $Res Function(LocationPoint) then,
  ) = _$LocationPointCopyWithImpl<$Res, LocationPoint>;
  @useResult
  $Res call({
    double latitude,
    double longitude,
    String? address,
    String? name,
    String? city,
    String? country,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class _$LocationPointCopyWithImpl<$Res, $Val extends LocationPoint>
    implements $LocationPointCopyWith<$Res> {
  _$LocationPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            postalCode:
                freezed == postalCode
                    ? _value.postalCode
                    : postalCode // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationPointImplCopyWith<$Res>
    implements $LocationPointCopyWith<$Res> {
  factory _$$LocationPointImplCopyWith(
    _$LocationPointImpl value,
    $Res Function(_$LocationPointImpl) then,
  ) = __$$LocationPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double latitude,
    double longitude,
    String? address,
    String? name,
    String? city,
    String? country,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class __$$LocationPointImplCopyWithImpl<$Res>
    extends _$LocationPointCopyWithImpl<$Res, _$LocationPointImpl>
    implements _$$LocationPointImplCopyWith<$Res> {
  __$$LocationPointImplCopyWithImpl(
    _$LocationPointImpl _value,
    $Res Function(_$LocationPointImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _$LocationPointImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        postalCode:
            freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationPointImpl implements _LocationPoint {
  const _$LocationPointImpl({
    required this.latitude,
    required this.longitude,
    this.address,
    this.name,
    this.city,
    this.country,
    @JsonKey(name: 'postal_code') this.postalCode,
  });

  factory _$LocationPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationPointImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? address;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? country;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @override
  String toString() {
    return 'LocationPoint(latitude: $latitude, longitude: $longitude, address: $address, name: $name, city: $city, country: $country, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPointImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    latitude,
    longitude,
    address,
    name,
    city,
    country,
    postalCode,
  );

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPointImplCopyWith<_$LocationPointImpl> get copyWith =>
      __$$LocationPointImplCopyWithImpl<_$LocationPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationPointImplToJson(this);
  }
}

abstract class _LocationPoint implements LocationPoint {
  const factory _LocationPoint({
    required final double latitude,
    required final double longitude,
    final String? address,
    final String? name,
    final String? city,
    final String? country,
    @JsonKey(name: 'postal_code') final String? postalCode,
  }) = _$LocationPointImpl;

  factory _LocationPoint.fromJson(Map<String, dynamic> json) =
      _$LocationPointImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get address;
  @override
  String? get name;
  @override
  String? get city;
  @override
  String? get country;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;

  /// Create a copy of LocationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPointImplCopyWith<_$LocationPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherConditions _$WeatherConditionsFromJson(Map<String, dynamic> json) {
  return _WeatherConditions.fromJson(json);
}

/// @nodoc
mixin _$WeatherConditions {
  @JsonKey(name: 'temperature_celsius')
  double get temperatureCelsius => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like_celsius')
  double get feelsLikeCelsius => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_kmh')
  double get windSpeedKmh => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction')
  String get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility_km')
  double get visibilityKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  int get uvIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_quality_index')
  int? get airQualityIndex => throw _privateConstructorUsedError;

  /// Serializes this WeatherConditions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherConditions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherConditionsCopyWith<WeatherConditions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionsCopyWith<$Res> {
  factory $WeatherConditionsCopyWith(
    WeatherConditions value,
    $Res Function(WeatherConditions) then,
  ) = _$WeatherConditionsCopyWithImpl<$Res, WeatherConditions>;
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius') double temperatureCelsius,
    @JsonKey(name: 'feels_like_celsius') double feelsLikeCelsius,
    String condition,
    String description,
    int humidity,
    @JsonKey(name: 'wind_speed_kmh') double windSpeedKmh,
    @JsonKey(name: 'wind_direction') String windDirection,
    @JsonKey(name: 'visibility_km') double visibilityKm,
    @JsonKey(name: 'uv_index') int uvIndex,
    @JsonKey(name: 'air_quality_index') int? airQualityIndex,
  });
}

/// @nodoc
class _$WeatherConditionsCopyWithImpl<$Res, $Val extends WeatherConditions>
    implements $WeatherConditionsCopyWith<$Res> {
  _$WeatherConditionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherConditions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsius = null,
    Object? feelsLikeCelsius = null,
    Object? condition = null,
    Object? description = null,
    Object? humidity = null,
    Object? windSpeedKmh = null,
    Object? windDirection = null,
    Object? visibilityKm = null,
    Object? uvIndex = null,
    Object? airQualityIndex = freezed,
  }) {
    return _then(
      _value.copyWith(
            temperatureCelsius:
                null == temperatureCelsius
                    ? _value.temperatureCelsius
                    : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                        as double,
            feelsLikeCelsius:
                null == feelsLikeCelsius
                    ? _value.feelsLikeCelsius
                    : feelsLikeCelsius // ignore: cast_nullable_to_non_nullable
                        as double,
            condition:
                null == condition
                    ? _value.condition
                    : condition // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            humidity:
                null == humidity
                    ? _value.humidity
                    : humidity // ignore: cast_nullable_to_non_nullable
                        as int,
            windSpeedKmh:
                null == windSpeedKmh
                    ? _value.windSpeedKmh
                    : windSpeedKmh // ignore: cast_nullable_to_non_nullable
                        as double,
            windDirection:
                null == windDirection
                    ? _value.windDirection
                    : windDirection // ignore: cast_nullable_to_non_nullable
                        as String,
            visibilityKm:
                null == visibilityKm
                    ? _value.visibilityKm
                    : visibilityKm // ignore: cast_nullable_to_non_nullable
                        as double,
            uvIndex:
                null == uvIndex
                    ? _value.uvIndex
                    : uvIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            airQualityIndex:
                freezed == airQualityIndex
                    ? _value.airQualityIndex
                    : airQualityIndex // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherConditionsImplCopyWith<$Res>
    implements $WeatherConditionsCopyWith<$Res> {
  factory _$$WeatherConditionsImplCopyWith(
    _$WeatherConditionsImpl value,
    $Res Function(_$WeatherConditionsImpl) then,
  ) = __$$WeatherConditionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'temperature_celsius') double temperatureCelsius,
    @JsonKey(name: 'feels_like_celsius') double feelsLikeCelsius,
    String condition,
    String description,
    int humidity,
    @JsonKey(name: 'wind_speed_kmh') double windSpeedKmh,
    @JsonKey(name: 'wind_direction') String windDirection,
    @JsonKey(name: 'visibility_km') double visibilityKm,
    @JsonKey(name: 'uv_index') int uvIndex,
    @JsonKey(name: 'air_quality_index') int? airQualityIndex,
  });
}

/// @nodoc
class __$$WeatherConditionsImplCopyWithImpl<$Res>
    extends _$WeatherConditionsCopyWithImpl<$Res, _$WeatherConditionsImpl>
    implements _$$WeatherConditionsImplCopyWith<$Res> {
  __$$WeatherConditionsImplCopyWithImpl(
    _$WeatherConditionsImpl _value,
    $Res Function(_$WeatherConditionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherConditions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperatureCelsius = null,
    Object? feelsLikeCelsius = null,
    Object? condition = null,
    Object? description = null,
    Object? humidity = null,
    Object? windSpeedKmh = null,
    Object? windDirection = null,
    Object? visibilityKm = null,
    Object? uvIndex = null,
    Object? airQualityIndex = freezed,
  }) {
    return _then(
      _$WeatherConditionsImpl(
        temperatureCelsius:
            null == temperatureCelsius
                ? _value.temperatureCelsius
                : temperatureCelsius // ignore: cast_nullable_to_non_nullable
                    as double,
        feelsLikeCelsius:
            null == feelsLikeCelsius
                ? _value.feelsLikeCelsius
                : feelsLikeCelsius // ignore: cast_nullable_to_non_nullable
                    as double,
        condition:
            null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        humidity:
            null == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                    as int,
        windSpeedKmh:
            null == windSpeedKmh
                ? _value.windSpeedKmh
                : windSpeedKmh // ignore: cast_nullable_to_non_nullable
                    as double,
        windDirection:
            null == windDirection
                ? _value.windDirection
                : windDirection // ignore: cast_nullable_to_non_nullable
                    as String,
        visibilityKm:
            null == visibilityKm
                ? _value.visibilityKm
                : visibilityKm // ignore: cast_nullable_to_non_nullable
                    as double,
        uvIndex:
            null == uvIndex
                ? _value.uvIndex
                : uvIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        airQualityIndex:
            freezed == airQualityIndex
                ? _value.airQualityIndex
                : airQualityIndex // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionsImpl implements _WeatherConditions {
  const _$WeatherConditionsImpl({
    @JsonKey(name: 'temperature_celsius') required this.temperatureCelsius,
    @JsonKey(name: 'feels_like_celsius') required this.feelsLikeCelsius,
    required this.condition,
    required this.description,
    required this.humidity,
    @JsonKey(name: 'wind_speed_kmh') required this.windSpeedKmh,
    @JsonKey(name: 'wind_direction') required this.windDirection,
    @JsonKey(name: 'visibility_km') required this.visibilityKm,
    @JsonKey(name: 'uv_index') required this.uvIndex,
    @JsonKey(name: 'air_quality_index') this.airQualityIndex,
  });

  factory _$WeatherConditionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionsImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_celsius')
  final double temperatureCelsius;
  @override
  @JsonKey(name: 'feels_like_celsius')
  final double feelsLikeCelsius;
  @override
  final String condition;
  @override
  final String description;
  @override
  final int humidity;
  @override
  @JsonKey(name: 'wind_speed_kmh')
  final double windSpeedKmh;
  @override
  @JsonKey(name: 'wind_direction')
  final String windDirection;
  @override
  @JsonKey(name: 'visibility_km')
  final double visibilityKm;
  @override
  @JsonKey(name: 'uv_index')
  final int uvIndex;
  @override
  @JsonKey(name: 'air_quality_index')
  final int? airQualityIndex;

  @override
  String toString() {
    return 'WeatherConditions(temperatureCelsius: $temperatureCelsius, feelsLikeCelsius: $feelsLikeCelsius, condition: $condition, description: $description, humidity: $humidity, windSpeedKmh: $windSpeedKmh, windDirection: $windDirection, visibilityKm: $visibilityKm, uvIndex: $uvIndex, airQualityIndex: $airQualityIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionsImpl &&
            (identical(other.temperatureCelsius, temperatureCelsius) ||
                other.temperatureCelsius == temperatureCelsius) &&
            (identical(other.feelsLikeCelsius, feelsLikeCelsius) ||
                other.feelsLikeCelsius == feelsLikeCelsius) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeedKmh, windSpeedKmh) ||
                other.windSpeedKmh == windSpeedKmh) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.visibilityKm, visibilityKm) ||
                other.visibilityKm == visibilityKm) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.airQualityIndex, airQualityIndex) ||
                other.airQualityIndex == airQualityIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    temperatureCelsius,
    feelsLikeCelsius,
    condition,
    description,
    humidity,
    windSpeedKmh,
    windDirection,
    visibilityKm,
    uvIndex,
    airQualityIndex,
  );

  /// Create a copy of WeatherConditions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionsImplCopyWith<_$WeatherConditionsImpl> get copyWith =>
      __$$WeatherConditionsImplCopyWithImpl<_$WeatherConditionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionsImplToJson(this);
  }
}

abstract class _WeatherConditions implements WeatherConditions {
  const factory _WeatherConditions({
    @JsonKey(name: 'temperature_celsius')
    required final double temperatureCelsius,
    @JsonKey(name: 'feels_like_celsius') required final double feelsLikeCelsius,
    required final String condition,
    required final String description,
    required final int humidity,
    @JsonKey(name: 'wind_speed_kmh') required final double windSpeedKmh,
    @JsonKey(name: 'wind_direction') required final String windDirection,
    @JsonKey(name: 'visibility_km') required final double visibilityKm,
    @JsonKey(name: 'uv_index') required final int uvIndex,
    @JsonKey(name: 'air_quality_index') final int? airQualityIndex,
  }) = _$WeatherConditionsImpl;

  factory _WeatherConditions.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionsImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_celsius')
  double get temperatureCelsius;
  @override
  @JsonKey(name: 'feels_like_celsius')
  double get feelsLikeCelsius;
  @override
  String get condition;
  @override
  String get description;
  @override
  int get humidity;
  @override
  @JsonKey(name: 'wind_speed_kmh')
  double get windSpeedKmh;
  @override
  @JsonKey(name: 'wind_direction')
  String get windDirection;
  @override
  @JsonKey(name: 'visibility_km')
  double get visibilityKm;
  @override
  @JsonKey(name: 'uv_index')
  int get uvIndex;
  @override
  @JsonKey(name: 'air_quality_index')
  int? get airQualityIndex;

  /// Create a copy of WeatherConditions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherConditionsImplCopyWith<_$WeatherConditionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
