// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TripPlan _$TripPlanFromJson(Map<String, dynamic> json) {
  return _TripPlan.fromJson(json);
}

/// @nodoc
mixin _$TripPlan {
  String get id => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  DateTime get plannedDate => throw _privateConstructorUsedError;
  DateTime get plannedTime => throw _privateConstructorUsedError;
  TransportMode get transportMode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this TripPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripPlanCopyWith<TripPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlanCopyWith<$Res> {
  factory $TripPlanCopyWith(TripPlan value, $Res Function(TripPlan) then) =
      _$TripPlanCopyWithImpl<$Res, TripPlan>;
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime plannedDate,
    DateTime plannedTime,
    TransportMode transportMode,
    String? notes,
  });
}

/// @nodoc
class _$TripPlanCopyWithImpl<$Res, $Val extends TripPlan>
    implements $TripPlanCopyWith<$Res> {
  _$TripPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? plannedDate = null,
    Object? plannedTime = null,
    Object? transportMode = null,
    Object? notes = freezed,
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
            plannedDate:
                null == plannedDate
                    ? _value.plannedDate
                    : plannedDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            plannedTime:
                null == plannedTime
                    ? _value.plannedTime
                    : plannedTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            transportMode:
                null == transportMode
                    ? _value.transportMode
                    : transportMode // ignore: cast_nullable_to_non_nullable
                        as TransportMode,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripPlanImplCopyWith<$Res>
    implements $TripPlanCopyWith<$Res> {
  factory _$$TripPlanImplCopyWith(
    _$TripPlanImpl value,
    $Res Function(_$TripPlanImpl) then,
  ) = __$$TripPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String origin,
    String destination,
    DateTime plannedDate,
    DateTime plannedTime,
    TransportMode transportMode,
    String? notes,
  });
}

/// @nodoc
class __$$TripPlanImplCopyWithImpl<$Res>
    extends _$TripPlanCopyWithImpl<$Res, _$TripPlanImpl>
    implements _$$TripPlanImplCopyWith<$Res> {
  __$$TripPlanImplCopyWithImpl(
    _$TripPlanImpl _value,
    $Res Function(_$TripPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? origin = null,
    Object? destination = null,
    Object? plannedDate = null,
    Object? plannedTime = null,
    Object? transportMode = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$TripPlanImpl(
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
        plannedDate:
            null == plannedDate
                ? _value.plannedDate
                : plannedDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        plannedTime:
            null == plannedTime
                ? _value.plannedTime
                : plannedTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        transportMode:
            null == transportMode
                ? _value.transportMode
                : transportMode // ignore: cast_nullable_to_non_nullable
                    as TransportMode,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripPlanImpl implements _TripPlan {
  const _$TripPlanImpl({
    required this.id,
    required this.origin,
    required this.destination,
    required this.plannedDate,
    required this.plannedTime,
    required this.transportMode,
    this.notes,
  });

  factory _$TripPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String origin;
  @override
  final String destination;
  @override
  final DateTime plannedDate;
  @override
  final DateTime plannedTime;
  @override
  final TransportMode transportMode;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TripPlan(id: $id, origin: $origin, destination: $destination, plannedDate: $plannedDate, plannedTime: $plannedTime, transportMode: $transportMode, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.plannedDate, plannedDate) ||
                other.plannedDate == plannedDate) &&
            (identical(other.plannedTime, plannedTime) ||
                other.plannedTime == plannedTime) &&
            (identical(other.transportMode, transportMode) ||
                other.transportMode == transportMode) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    origin,
    destination,
    plannedDate,
    plannedTime,
    transportMode,
    notes,
  );

  /// Create a copy of TripPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripPlanImplCopyWith<_$TripPlanImpl> get copyWith =>
      __$$TripPlanImplCopyWithImpl<_$TripPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripPlanImplToJson(this);
  }
}

abstract class _TripPlan implements TripPlan {
  const factory _TripPlan({
    required final String id,
    required final String origin,
    required final String destination,
    required final DateTime plannedDate,
    required final DateTime plannedTime,
    required final TransportMode transportMode,
    final String? notes,
  }) = _$TripPlanImpl;

  factory _TripPlan.fromJson(Map<String, dynamic> json) =
      _$TripPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get origin;
  @override
  String get destination;
  @override
  DateTime get plannedDate;
  @override
  DateTime get plannedTime;
  @override
  TransportMode get transportMode;
  @override
  String? get notes;

  /// Create a copy of TripPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripPlanImplCopyWith<_$TripPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
