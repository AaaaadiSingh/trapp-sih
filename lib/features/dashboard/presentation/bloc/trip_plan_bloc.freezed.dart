// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TripPlanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTripPlans,
    required TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )
    createTripPlan,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTripPlans,
    TResult? Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTripPlans,
    TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTripPlans value) loadTripPlans,
    required TResult Function(CreateTripPlan value) createTripPlan,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTripPlans value)? loadTripPlans,
    TResult? Function(CreateTripPlan value)? createTripPlan,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTripPlans value)? loadTripPlans,
    TResult Function(CreateTripPlan value)? createTripPlan,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlanEventCopyWith<$Res> {
  factory $TripPlanEventCopyWith(
    TripPlanEvent value,
    $Res Function(TripPlanEvent) then,
  ) = _$TripPlanEventCopyWithImpl<$Res, TripPlanEvent>;
}

/// @nodoc
class _$TripPlanEventCopyWithImpl<$Res, $Val extends TripPlanEvent>
    implements $TripPlanEventCopyWith<$Res> {
  _$TripPlanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripPlanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTripPlansImplCopyWith<$Res> {
  factory _$$LoadTripPlansImplCopyWith(
    _$LoadTripPlansImpl value,
    $Res Function(_$LoadTripPlansImpl) then,
  ) = __$$LoadTripPlansImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTripPlansImplCopyWithImpl<$Res>
    extends _$TripPlanEventCopyWithImpl<$Res, _$LoadTripPlansImpl>
    implements _$$LoadTripPlansImplCopyWith<$Res> {
  __$$LoadTripPlansImplCopyWithImpl(
    _$LoadTripPlansImpl _value,
    $Res Function(_$LoadTripPlansImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripPlanEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTripPlansImpl implements LoadTripPlans {
  const _$LoadTripPlansImpl();

  @override
  String toString() {
    return 'TripPlanEvent.loadTripPlans()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTripPlansImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTripPlans,
    required TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )
    createTripPlan,
  }) {
    return loadTripPlans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTripPlans,
    TResult? Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
  }) {
    return loadTripPlans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTripPlans,
    TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
    required TResult orElse(),
  }) {
    if (loadTripPlans != null) {
      return loadTripPlans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTripPlans value) loadTripPlans,
    required TResult Function(CreateTripPlan value) createTripPlan,
  }) {
    return loadTripPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTripPlans value)? loadTripPlans,
    TResult? Function(CreateTripPlan value)? createTripPlan,
  }) {
    return loadTripPlans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTripPlans value)? loadTripPlans,
    TResult Function(CreateTripPlan value)? createTripPlan,
    required TResult orElse(),
  }) {
    if (loadTripPlans != null) {
      return loadTripPlans(this);
    }
    return orElse();
  }
}

abstract class LoadTripPlans implements TripPlanEvent {
  const factory LoadTripPlans() = _$LoadTripPlansImpl;
}

/// @nodoc
abstract class _$$CreateTripPlanImplCopyWith<$Res> {
  factory _$$CreateTripPlanImplCopyWith(
    _$CreateTripPlanImpl value,
    $Res Function(_$CreateTripPlanImpl) then,
  ) = __$$CreateTripPlanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String origin,
    String destination,
    DateTime plannedDate,
    DateTime plannedTime,
    TransportMode transportMode,
    String? notes,
  });
}

/// @nodoc
class __$$CreateTripPlanImplCopyWithImpl<$Res>
    extends _$TripPlanEventCopyWithImpl<$Res, _$CreateTripPlanImpl>
    implements _$$CreateTripPlanImplCopyWith<$Res> {
  __$$CreateTripPlanImplCopyWithImpl(
    _$CreateTripPlanImpl _value,
    $Res Function(_$CreateTripPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
    Object? plannedDate = null,
    Object? plannedTime = null,
    Object? transportMode = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$CreateTripPlanImpl(
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

class _$CreateTripPlanImpl implements CreateTripPlan {
  const _$CreateTripPlanImpl({
    required this.origin,
    required this.destination,
    required this.plannedDate,
    required this.plannedTime,
    required this.transportMode,
    this.notes,
  });

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
    return 'TripPlanEvent.createTripPlan(origin: $origin, destination: $destination, plannedDate: $plannedDate, plannedTime: $plannedTime, transportMode: $transportMode, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTripPlanImpl &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    origin,
    destination,
    plannedDate,
    plannedTime,
    transportMode,
    notes,
  );

  /// Create a copy of TripPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTripPlanImplCopyWith<_$CreateTripPlanImpl> get copyWith =>
      __$$CreateTripPlanImplCopyWithImpl<_$CreateTripPlanImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTripPlans,
    required TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )
    createTripPlan,
  }) {
    return createTripPlan(
      origin,
      destination,
      plannedDate,
      plannedTime,
      transportMode,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTripPlans,
    TResult? Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
  }) {
    return createTripPlan?.call(
      origin,
      destination,
      plannedDate,
      plannedTime,
      transportMode,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTripPlans,
    TResult Function(
      String origin,
      String destination,
      DateTime plannedDate,
      DateTime plannedTime,
      TransportMode transportMode,
      String? notes,
    )?
    createTripPlan,
    required TResult orElse(),
  }) {
    if (createTripPlan != null) {
      return createTripPlan(
        origin,
        destination,
        plannedDate,
        plannedTime,
        transportMode,
        notes,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTripPlans value) loadTripPlans,
    required TResult Function(CreateTripPlan value) createTripPlan,
  }) {
    return createTripPlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTripPlans value)? loadTripPlans,
    TResult? Function(CreateTripPlan value)? createTripPlan,
  }) {
    return createTripPlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTripPlans value)? loadTripPlans,
    TResult Function(CreateTripPlan value)? createTripPlan,
    required TResult orElse(),
  }) {
    if (createTripPlan != null) {
      return createTripPlan(this);
    }
    return orElse();
  }
}

abstract class CreateTripPlan implements TripPlanEvent {
  const factory CreateTripPlan({
    required final String origin,
    required final String destination,
    required final DateTime plannedDate,
    required final DateTime plannedTime,
    required final TransportMode transportMode,
    final String? notes,
  }) = _$CreateTripPlanImpl;

  String get origin;
  String get destination;
  DateTime get plannedDate;
  DateTime get plannedTime;
  TransportMode get transportMode;
  String? get notes;

  /// Create a copy of TripPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTripPlanImplCopyWith<_$CreateTripPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripPlanState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  List<TripPlan>? get tripPlans => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  /// Create a copy of TripPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripPlanStateCopyWith<TripPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPlanStateCopyWith<$Res> {
  factory $TripPlanStateCopyWith(
    TripPlanState value,
    $Res Function(TripPlanState) then,
  ) = _$TripPlanStateCopyWithImpl<$Res, TripPlanState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isSubmitting,
    List<TripPlan>? tripPlans,
    String? error,
    String? successMessage,
  });
}

/// @nodoc
class _$TripPlanStateCopyWithImpl<$Res, $Val extends TripPlanState>
    implements $TripPlanStateCopyWith<$Res> {
  _$TripPlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? tripPlans = freezed,
    Object? error = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSubmitting:
                null == isSubmitting
                    ? _value.isSubmitting
                    : isSubmitting // ignore: cast_nullable_to_non_nullable
                        as bool,
            tripPlans:
                freezed == tripPlans
                    ? _value.tripPlans
                    : tripPlans // ignore: cast_nullable_to_non_nullable
                        as List<TripPlan>?,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TripPlanStateImplCopyWith<$Res>
    implements $TripPlanStateCopyWith<$Res> {
  factory _$$TripPlanStateImplCopyWith(
    _$TripPlanStateImpl value,
    $Res Function(_$TripPlanStateImpl) then,
  ) = __$$TripPlanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isSubmitting,
    List<TripPlan>? tripPlans,
    String? error,
    String? successMessage,
  });
}

/// @nodoc
class __$$TripPlanStateImplCopyWithImpl<$Res>
    extends _$TripPlanStateCopyWithImpl<$Res, _$TripPlanStateImpl>
    implements _$$TripPlanStateImplCopyWith<$Res> {
  __$$TripPlanStateImplCopyWithImpl(
    _$TripPlanStateImpl _value,
    $Res Function(_$TripPlanStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? tripPlans = freezed,
    Object? error = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(
      _$TripPlanStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSubmitting:
            null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                    as bool,
        tripPlans:
            freezed == tripPlans
                ? _value._tripPlans
                : tripPlans // ignore: cast_nullable_to_non_nullable
                    as List<TripPlan>?,
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
      ),
    );
  }
}

/// @nodoc

class _$TripPlanStateImpl implements _TripPlanState {
  const _$TripPlanStateImpl({
    this.isLoading = false,
    this.isSubmitting = false,
    final List<TripPlan>? tripPlans,
    this.error,
    this.successMessage,
  }) : _tripPlans = tripPlans;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSubmitting;
  final List<TripPlan>? _tripPlans;
  @override
  List<TripPlan>? get tripPlans {
    final value = _tripPlans;
    if (value == null) return null;
    if (_tripPlans is EqualUnmodifiableListView) return _tripPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'TripPlanState(isLoading: $isLoading, isSubmitting: $isSubmitting, tripPlans: $tripPlans, error: $error, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripPlanStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality().equals(
              other._tripPlans,
              _tripPlans,
            ) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSubmitting,
    const DeepCollectionEquality().hash(_tripPlans),
    error,
    successMessage,
  );

  /// Create a copy of TripPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripPlanStateImplCopyWith<_$TripPlanStateImpl> get copyWith =>
      __$$TripPlanStateImplCopyWithImpl<_$TripPlanStateImpl>(this, _$identity);
}

abstract class _TripPlanState implements TripPlanState {
  const factory _TripPlanState({
    final bool isLoading,
    final bool isSubmitting,
    final List<TripPlan>? tripPlans,
    final String? error,
    final String? successMessage,
  }) = _$TripPlanStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  List<TripPlan>? get tripPlans;
  @override
  String? get error;
  @override
  String? get successMessage;

  /// Create a copy of TripPlanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripPlanStateImplCopyWith<_$TripPlanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
