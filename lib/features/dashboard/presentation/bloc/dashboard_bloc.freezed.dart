// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
    DashboardEvent value,
    $Res Function(DashboardEvent) then,
  ) = _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
    _$TabChangedImpl value,
    $Res Function(_$TabChangedImpl) then,
  ) = __$$TabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
    _$TabChangedImpl _value,
    $Res Function(_$TabChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tabIndex = null}) {
    return _then(
      _$TabChangedImpl(
        null == tabIndex
            ? _value.tabIndex
            : tabIndex // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$TabChangedImpl implements TabChanged {
  const _$TabChangedImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'DashboardEvent.tabChanged(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return tabChanged(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return tabChanged?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements DashboardEvent {
  const factory TabChanged(final int tabIndex) = _$TabChangedImpl;

  int get tabIndex;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDashboardDataImplCopyWith<$Res> {
  factory _$$LoadDashboardDataImplCopyWith(
    _$LoadDashboardDataImpl value,
    $Res Function(_$LoadDashboardDataImpl) then,
  ) = __$$LoadDashboardDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LoadDashboardDataImpl>
    implements _$$LoadDashboardDataImplCopyWith<$Res> {
  __$$LoadDashboardDataImplCopyWithImpl(
    _$LoadDashboardDataImpl _value,
    $Res Function(_$LoadDashboardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDashboardDataImpl implements LoadDashboardData {
  const _$LoadDashboardDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.loadDashboardData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDashboardDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return loadDashboardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return loadDashboardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (loadDashboardData != null) {
      return loadDashboardData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return loadDashboardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return loadDashboardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (loadDashboardData != null) {
      return loadDashboardData(this);
    }
    return orElse();
  }
}

abstract class LoadDashboardData implements DashboardEvent {
  const factory LoadDashboardData() = _$LoadDashboardDataImpl;
}

/// @nodoc
abstract class _$$StartLocationTrackingImplCopyWith<$Res> {
  factory _$$StartLocationTrackingImplCopyWith(
    _$StartLocationTrackingImpl value,
    $Res Function(_$StartLocationTrackingImpl) then,
  ) = __$$StartLocationTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartLocationTrackingImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$StartLocationTrackingImpl>
    implements _$$StartLocationTrackingImplCopyWith<$Res> {
  __$$StartLocationTrackingImplCopyWithImpl(
    _$StartLocationTrackingImpl _value,
    $Res Function(_$StartLocationTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartLocationTrackingImpl implements StartLocationTracking {
  const _$StartLocationTrackingImpl();

  @override
  String toString() {
    return 'DashboardEvent.startLocationTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartLocationTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return startLocationTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return startLocationTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (startLocationTracking != null) {
      return startLocationTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return startLocationTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return startLocationTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (startLocationTracking != null) {
      return startLocationTracking(this);
    }
    return orElse();
  }
}

abstract class StartLocationTracking implements DashboardEvent {
  const factory StartLocationTracking() = _$StartLocationTrackingImpl;
}

/// @nodoc
abstract class _$$StopLocationTrackingImplCopyWith<$Res> {
  factory _$$StopLocationTrackingImplCopyWith(
    _$StopLocationTrackingImpl value,
    $Res Function(_$StopLocationTrackingImpl) then,
  ) = __$$StopLocationTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopLocationTrackingImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$StopLocationTrackingImpl>
    implements _$$StopLocationTrackingImplCopyWith<$Res> {
  __$$StopLocationTrackingImplCopyWithImpl(
    _$StopLocationTrackingImpl _value,
    $Res Function(_$StopLocationTrackingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopLocationTrackingImpl implements StopLocationTracking {
  const _$StopLocationTrackingImpl();

  @override
  String toString() {
    return 'DashboardEvent.stopLocationTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopLocationTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return stopLocationTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return stopLocationTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (stopLocationTracking != null) {
      return stopLocationTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return stopLocationTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return stopLocationTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (stopLocationTracking != null) {
      return stopLocationTracking(this);
    }
    return orElse();
  }
}

abstract class StopLocationTracking implements DashboardEvent {
  const factory StopLocationTracking() = _$StopLocationTrackingImpl;
}

/// @nodoc
abstract class _$$LocationUpdatedImplCopyWith<$Res> {
  factory _$$LocationUpdatedImplCopyWith(
    _$LocationUpdatedImpl value,
    $Res Function(_$LocationUpdatedImpl) then,
  ) = __$$LocationUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$LocationUpdatedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LocationUpdatedImpl>
    implements _$$LocationUpdatedImplCopyWith<$Res> {
  __$$LocationUpdatedImplCopyWithImpl(
    _$LocationUpdatedImpl _value,
    $Res Function(_$LocationUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? position = null}) {
    return _then(
      _$LocationUpdatedImpl(
        null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                as Position,
      ),
    );
  }
}

/// @nodoc

class _$LocationUpdatedImpl implements LocationUpdated {
  const _$LocationUpdatedImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'DashboardEvent.locationUpdated(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdatedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationUpdatedImplCopyWith<_$LocationUpdatedImpl> get copyWith =>
      __$$LocationUpdatedImplCopyWithImpl<_$LocationUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return locationUpdated(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return locationUpdated?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class LocationUpdated implements DashboardEvent {
  const factory LocationUpdated(final Position position) =
      _$LocationUpdatedImpl;

  Position get position;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationUpdatedImplCopyWith<_$LocationUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTripDetectionImplCopyWith<$Res> {
  factory _$$StartTripDetectionImplCopyWith(
    _$StartTripDetectionImpl value,
    $Res Function(_$StartTripDetectionImpl) then,
  ) = __$$StartTripDetectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTripDetectionImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$StartTripDetectionImpl>
    implements _$$StartTripDetectionImplCopyWith<$Res> {
  __$$StartTripDetectionImplCopyWithImpl(
    _$StartTripDetectionImpl _value,
    $Res Function(_$StartTripDetectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartTripDetectionImpl implements StartTripDetection {
  const _$StartTripDetectionImpl();

  @override
  String toString() {
    return 'DashboardEvent.startTripDetection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTripDetectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return startTripDetection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return startTripDetection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (startTripDetection != null) {
      return startTripDetection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return startTripDetection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return startTripDetection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (startTripDetection != null) {
      return startTripDetection(this);
    }
    return orElse();
  }
}

abstract class StartTripDetection implements DashboardEvent {
  const factory StartTripDetection() = _$StartTripDetectionImpl;
}

/// @nodoc
abstract class _$$StopTripDetectionImplCopyWith<$Res> {
  factory _$$StopTripDetectionImplCopyWith(
    _$StopTripDetectionImpl value,
    $Res Function(_$StopTripDetectionImpl) then,
  ) = __$$StopTripDetectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopTripDetectionImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$StopTripDetectionImpl>
    implements _$$StopTripDetectionImplCopyWith<$Res> {
  __$$StopTripDetectionImplCopyWithImpl(
    _$StopTripDetectionImpl _value,
    $Res Function(_$StopTripDetectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopTripDetectionImpl implements StopTripDetection {
  const _$StopTripDetectionImpl();

  @override
  String toString() {
    return 'DashboardEvent.stopTripDetection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopTripDetectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return stopTripDetection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return stopTripDetection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (stopTripDetection != null) {
      return stopTripDetection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return stopTripDetection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return stopTripDetection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (stopTripDetection != null) {
      return stopTripDetection(this);
    }
    return orElse();
  }
}

abstract class StopTripDetection implements DashboardEvent {
  const factory StopTripDetection() = _$StopTripDetectionImpl;
}

/// @nodoc
abstract class _$$TripDetectedImplCopyWith<$Res> {
  factory _$$TripDetectedImplCopyWith(
    _$TripDetectedImpl value,
    $Res Function(_$TripDetectedImpl) then,
  ) = __$$TripDetectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetectedTrip trip});
}

/// @nodoc
class __$$TripDetectedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$TripDetectedImpl>
    implements _$$TripDetectedImplCopyWith<$Res> {
  __$$TripDetectedImplCopyWithImpl(
    _$TripDetectedImpl _value,
    $Res Function(_$TripDetectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trip = null}) {
    return _then(
      _$TripDetectedImpl(
        null == trip
            ? _value.trip
            : trip // ignore: cast_nullable_to_non_nullable
                as DetectedTrip,
      ),
    );
  }
}

/// @nodoc

class _$TripDetectedImpl implements TripDetected {
  const _$TripDetectedImpl(this.trip);

  @override
  final DetectedTrip trip;

  @override
  String toString() {
    return 'DashboardEvent.tripDetected(trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDetectedImpl &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDetectedImplCopyWith<_$TripDetectedImpl> get copyWith =>
      __$$TripDetectedImplCopyWithImpl<_$TripDetectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return tripDetected(trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return tripDetected?.call(trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (tripDetected != null) {
      return tripDetected(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return tripDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return tripDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (tripDetected != null) {
      return tripDetected(this);
    }
    return orElse();
  }
}

abstract class TripDetected implements DashboardEvent {
  const factory TripDetected(final DetectedTrip trip) = _$TripDetectedImpl;

  DetectedTrip get trip;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripDetectedImplCopyWith<_$TripDetectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TripLoggedImplCopyWith<$Res> {
  factory _$$TripLoggedImplCopyWith(
    _$TripLoggedImpl value,
    $Res Function(_$TripLoggedImpl) then,
  ) = __$$TripLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TripLog tripLog});
}

/// @nodoc
class __$$TripLoggedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$TripLoggedImpl>
    implements _$$TripLoggedImplCopyWith<$Res> {
  __$$TripLoggedImplCopyWithImpl(
    _$TripLoggedImpl _value,
    $Res Function(_$TripLoggedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tripLog = null}) {
    return _then(
      _$TripLoggedImpl(
        null == tripLog
            ? _value.tripLog
            : tripLog // ignore: cast_nullable_to_non_nullable
                as TripLog,
      ),
    );
  }
}

/// @nodoc

class _$TripLoggedImpl implements TripLogged {
  const _$TripLoggedImpl(this.tripLog);

  @override
  final TripLog tripLog;

  @override
  String toString() {
    return 'DashboardEvent.tripLogged(tripLog: $tripLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripLoggedImpl &&
            (identical(other.tripLog, tripLog) || other.tripLog == tripLog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tripLog);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripLoggedImplCopyWith<_$TripLoggedImpl> get copyWith =>
      __$$TripLoggedImplCopyWithImpl<_$TripLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
    required TResult Function() startLocationTracking,
    required TResult Function() stopLocationTracking,
    required TResult Function(Position position) locationUpdated,
    required TResult Function() startTripDetection,
    required TResult Function() stopTripDetection,
    required TResult Function(DetectedTrip trip) tripDetected,
    required TResult Function(TripLog tripLog) tripLogged,
  }) {
    return tripLogged(tripLog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
    TResult? Function()? startLocationTracking,
    TResult? Function()? stopLocationTracking,
    TResult? Function(Position position)? locationUpdated,
    TResult? Function()? startTripDetection,
    TResult? Function()? stopTripDetection,
    TResult? Function(DetectedTrip trip)? tripDetected,
    TResult? Function(TripLog tripLog)? tripLogged,
  }) {
    return tripLogged?.call(tripLog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    TResult Function()? startLocationTracking,
    TResult Function()? stopLocationTracking,
    TResult Function(Position position)? locationUpdated,
    TResult Function()? startTripDetection,
    TResult Function()? stopTripDetection,
    TResult Function(DetectedTrip trip)? tripDetected,
    TResult Function(TripLog tripLog)? tripLogged,
    required TResult orElse(),
  }) {
    if (tripLogged != null) {
      return tripLogged(tripLog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
    required TResult Function(StartLocationTracking value)
    startLocationTracking,
    required TResult Function(StopLocationTracking value) stopLocationTracking,
    required TResult Function(LocationUpdated value) locationUpdated,
    required TResult Function(StartTripDetection value) startTripDetection,
    required TResult Function(StopTripDetection value) stopTripDetection,
    required TResult Function(TripDetected value) tripDetected,
    required TResult Function(TripLogged value) tripLogged,
  }) {
    return tripLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
    TResult? Function(StartLocationTracking value)? startLocationTracking,
    TResult? Function(StopLocationTracking value)? stopLocationTracking,
    TResult? Function(LocationUpdated value)? locationUpdated,
    TResult? Function(StartTripDetection value)? startTripDetection,
    TResult? Function(StopTripDetection value)? stopTripDetection,
    TResult? Function(TripDetected value)? tripDetected,
    TResult? Function(TripLogged value)? tripLogged,
  }) {
    return tripLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    TResult Function(StartLocationTracking value)? startLocationTracking,
    TResult Function(StopLocationTracking value)? stopLocationTracking,
    TResult Function(LocationUpdated value)? locationUpdated,
    TResult Function(StartTripDetection value)? startTripDetection,
    TResult Function(StopTripDetection value)? stopTripDetection,
    TResult Function(TripDetected value)? tripDetected,
    TResult Function(TripLogged value)? tripLogged,
    required TResult orElse(),
  }) {
    if (tripLogged != null) {
      return tripLogged(this);
    }
    return orElse();
  }
}

abstract class TripLogged implements DashboardEvent {
  const factory TripLogged(final TripLog tripLog) = _$TripLoggedImpl;

  TripLog get tripLog;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripLoggedImplCopyWith<_$TripLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  int get selectedTabIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  DashboardData? get dashboardData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLocationTracking => throw _privateConstructorUsedError;
  Position? get currentLocation => throw _privateConstructorUsedError;
  List<Position> get locationHistory => throw _privateConstructorUsedError;
  bool get isTripDetectionActive => throw _privateConstructorUsedError;
  DetectedTrip? get currentTrip => throw _privateConstructorUsedError;
  List<TripLog> get recentTrips => throw _privateConstructorUsedError;
  TripStatistics? get tripStatistics => throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
    DashboardState value,
    $Res Function(DashboardState) then,
  ) = _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({
    int selectedTabIndex,
    bool isLoading,
    DashboardData? dashboardData,
    String? error,
    bool isLocationTracking,
    Position? currentLocation,
    List<Position> locationHistory,
    bool isTripDetectionActive,
    DetectedTrip? currentTrip,
    List<TripLog> recentTrips,
    TripStatistics? tripStatistics,
  });

  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? isLoading = null,
    Object? dashboardData = freezed,
    Object? error = freezed,
    Object? isLocationTracking = null,
    Object? currentLocation = freezed,
    Object? locationHistory = null,
    Object? isTripDetectionActive = null,
    Object? currentTrip = freezed,
    Object? recentTrips = null,
    Object? tripStatistics = freezed,
  }) {
    return _then(
      _value.copyWith(
            selectedTabIndex:
                null == selectedTabIndex
                    ? _value.selectedTabIndex
                    : selectedTabIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            dashboardData:
                freezed == dashboardData
                    ? _value.dashboardData
                    : dashboardData // ignore: cast_nullable_to_non_nullable
                        as DashboardData?,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
            isLocationTracking:
                null == isLocationTracking
                    ? _value.isLocationTracking
                    : isLocationTracking // ignore: cast_nullable_to_non_nullable
                        as bool,
            currentLocation:
                freezed == currentLocation
                    ? _value.currentLocation
                    : currentLocation // ignore: cast_nullable_to_non_nullable
                        as Position?,
            locationHistory:
                null == locationHistory
                    ? _value.locationHistory
                    : locationHistory // ignore: cast_nullable_to_non_nullable
                        as List<Position>,
            isTripDetectionActive:
                null == isTripDetectionActive
                    ? _value.isTripDetectionActive
                    : isTripDetectionActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            currentTrip:
                freezed == currentTrip
                    ? _value.currentTrip
                    : currentTrip // ignore: cast_nullable_to_non_nullable
                        as DetectedTrip?,
            recentTrips:
                null == recentTrips
                    ? _value.recentTrips
                    : recentTrips // ignore: cast_nullable_to_non_nullable
                        as List<TripLog>,
            tripStatistics:
                freezed == tripStatistics
                    ? _value.tripStatistics
                    : tripStatistics // ignore: cast_nullable_to_non_nullable
                        as TripStatistics?,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<$Res>? get dashboardData {
    if (_value.dashboardData == null) {
      return null;
    }

    return $DashboardDataCopyWith<$Res>(_value.dashboardData!, (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(
    _$DashboardStateImpl value,
    $Res Function(_$DashboardStateImpl) then,
  ) = __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int selectedTabIndex,
    bool isLoading,
    DashboardData? dashboardData,
    String? error,
    bool isLocationTracking,
    Position? currentLocation,
    List<Position> locationHistory,
    bool isTripDetectionActive,
    DetectedTrip? currentTrip,
    List<TripLog> recentTrips,
    TripStatistics? tripStatistics,
  });

  @override
  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
    _$DashboardStateImpl _value,
    $Res Function(_$DashboardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? isLoading = null,
    Object? dashboardData = freezed,
    Object? error = freezed,
    Object? isLocationTracking = null,
    Object? currentLocation = freezed,
    Object? locationHistory = null,
    Object? isTripDetectionActive = null,
    Object? currentTrip = freezed,
    Object? recentTrips = null,
    Object? tripStatistics = freezed,
  }) {
    return _then(
      _$DashboardStateImpl(
        selectedTabIndex:
            null == selectedTabIndex
                ? _value.selectedTabIndex
                : selectedTabIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        dashboardData:
            freezed == dashboardData
                ? _value.dashboardData
                : dashboardData // ignore: cast_nullable_to_non_nullable
                    as DashboardData?,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
        isLocationTracking:
            null == isLocationTracking
                ? _value.isLocationTracking
                : isLocationTracking // ignore: cast_nullable_to_non_nullable
                    as bool,
        currentLocation:
            freezed == currentLocation
                ? _value.currentLocation
                : currentLocation // ignore: cast_nullable_to_non_nullable
                    as Position?,
        locationHistory:
            null == locationHistory
                ? _value._locationHistory
                : locationHistory // ignore: cast_nullable_to_non_nullable
                    as List<Position>,
        isTripDetectionActive:
            null == isTripDetectionActive
                ? _value.isTripDetectionActive
                : isTripDetectionActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        currentTrip:
            freezed == currentTrip
                ? _value.currentTrip
                : currentTrip // ignore: cast_nullable_to_non_nullable
                    as DetectedTrip?,
        recentTrips:
            null == recentTrips
                ? _value._recentTrips
                : recentTrips // ignore: cast_nullable_to_non_nullable
                    as List<TripLog>,
        tripStatistics:
            freezed == tripStatistics
                ? _value.tripStatistics
                : tripStatistics // ignore: cast_nullable_to_non_nullable
                    as TripStatistics?,
      ),
    );
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl({
    this.selectedTabIndex = 0,
    this.isLoading = false,
    this.dashboardData,
    this.error,
    this.isLocationTracking = false,
    this.currentLocation = null,
    final List<Position> locationHistory = const [],
    this.isTripDetectionActive = false,
    this.currentTrip,
    final List<TripLog> recentTrips = const [],
    this.tripStatistics,
  }) : _locationHistory = locationHistory,
       _recentTrips = recentTrips;

  @override
  @JsonKey()
  final int selectedTabIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final DashboardData? dashboardData;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLocationTracking;
  @override
  @JsonKey()
  final Position? currentLocation;
  final List<Position> _locationHistory;
  @override
  @JsonKey()
  List<Position> get locationHistory {
    if (_locationHistory is EqualUnmodifiableListView) return _locationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationHistory);
  }

  @override
  @JsonKey()
  final bool isTripDetectionActive;
  @override
  final DetectedTrip? currentTrip;
  final List<TripLog> _recentTrips;
  @override
  @JsonKey()
  List<TripLog> get recentTrips {
    if (_recentTrips is EqualUnmodifiableListView) return _recentTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTrips);
  }

  @override
  final TripStatistics? tripStatistics;

  @override
  String toString() {
    return 'DashboardState(selectedTabIndex: $selectedTabIndex, isLoading: $isLoading, dashboardData: $dashboardData, error: $error, isLocationTracking: $isLocationTracking, currentLocation: $currentLocation, locationHistory: $locationHistory, isTripDetectionActive: $isTripDetectionActive, currentTrip: $currentTrip, recentTrips: $recentTrips, tripStatistics: $tripStatistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLocationTracking, isLocationTracking) ||
                other.isLocationTracking == isLocationTracking) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            const DeepCollectionEquality().equals(
              other._locationHistory,
              _locationHistory,
            ) &&
            (identical(other.isTripDetectionActive, isTripDetectionActive) ||
                other.isTripDetectionActive == isTripDetectionActive) &&
            (identical(other.currentTrip, currentTrip) ||
                other.currentTrip == currentTrip) &&
            const DeepCollectionEquality().equals(
              other._recentTrips,
              _recentTrips,
            ) &&
            (identical(other.tripStatistics, tripStatistics) ||
                other.tripStatistics == tripStatistics));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedTabIndex,
    isLoading,
    dashboardData,
    error,
    isLocationTracking,
    currentLocation,
    const DeepCollectionEquality().hash(_locationHistory),
    isTripDetectionActive,
    currentTrip,
    const DeepCollectionEquality().hash(_recentTrips),
    tripStatistics,
  );

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState({
    final int selectedTabIndex,
    final bool isLoading,
    final DashboardData? dashboardData,
    final String? error,
    final bool isLocationTracking,
    final Position? currentLocation,
    final List<Position> locationHistory,
    final bool isTripDetectionActive,
    final DetectedTrip? currentTrip,
    final List<TripLog> recentTrips,
    final TripStatistics? tripStatistics,
  }) = _$DashboardStateImpl;

  @override
  int get selectedTabIndex;
  @override
  bool get isLoading;
  @override
  DashboardData? get dashboardData;
  @override
  String? get error;
  @override
  bool get isLocationTracking;
  @override
  Position? get currentLocation;
  @override
  List<Position> get locationHistory;
  @override
  bool get isTripDetectionActive;
  @override
  DetectedTrip? get currentTrip;
  @override
  List<TripLog> get recentTrips;
  @override
  TripStatistics? get tripStatistics;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
