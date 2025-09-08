// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_demographics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationDemographicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDemographicsEventCopyWith<$Res> {
  factory $LocationDemographicsEventCopyWith(
    LocationDemographicsEvent value,
    $Res Function(LocationDemographicsEvent) then,
  ) = _$LocationDemographicsEventCopyWithImpl<$Res, LocationDemographicsEvent>;
}

/// @nodoc
class _$LocationDemographicsEventCopyWithImpl<
  $Res,
  $Val extends LocationDemographicsEvent
>
    implements $LocationDemographicsEventCopyWith<$Res> {
  _$LocationDemographicsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeLocationChangedImplCopyWith<$Res> {
  factory _$$HomeLocationChangedImplCopyWith(
    _$HomeLocationChangedImpl value,
    $Res Function(_$HomeLocationChangedImpl) then,
  ) = __$$HomeLocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$HomeLocationChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<$Res, _$HomeLocationChangedImpl>
    implements _$$HomeLocationChangedImplCopyWith<$Res> {
  __$$HomeLocationChangedImplCopyWithImpl(
    _$HomeLocationChangedImpl _value,
    $Res Function(_$HomeLocationChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null}) {
    return _then(
      _$HomeLocationChangedImpl(
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$HomeLocationChangedImpl implements HomeLocationChanged {
  const _$HomeLocationChangedImpl({required this.location});

  @override
  final String location;

  @override
  String toString() {
    return 'LocationDemographicsEvent.homeLocationChanged(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLocationChangedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLocationChangedImplCopyWith<_$HomeLocationChangedImpl> get copyWith =>
      __$$HomeLocationChangedImplCopyWithImpl<_$HomeLocationChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return homeLocationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return homeLocationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (homeLocationChanged != null) {
      return homeLocationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return homeLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return homeLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (homeLocationChanged != null) {
      return homeLocationChanged(this);
    }
    return orElse();
  }
}

abstract class HomeLocationChanged implements LocationDemographicsEvent {
  const factory HomeLocationChanged({required final String location}) =
      _$HomeLocationChangedImpl;

  String get location;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeLocationChangedImplCopyWith<_$HomeLocationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkLocationChangedImplCopyWith<$Res> {
  factory _$$WorkLocationChangedImplCopyWith(
    _$WorkLocationChangedImpl value,
    $Res Function(_$WorkLocationChangedImpl) then,
  ) = __$$WorkLocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$WorkLocationChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<$Res, _$WorkLocationChangedImpl>
    implements _$$WorkLocationChangedImplCopyWith<$Res> {
  __$$WorkLocationChangedImplCopyWithImpl(
    _$WorkLocationChangedImpl _value,
    $Res Function(_$WorkLocationChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null}) {
    return _then(
      _$WorkLocationChangedImpl(
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$WorkLocationChangedImpl implements WorkLocationChanged {
  const _$WorkLocationChangedImpl({required this.location});

  @override
  final String location;

  @override
  String toString() {
    return 'LocationDemographicsEvent.workLocationChanged(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkLocationChangedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkLocationChangedImplCopyWith<_$WorkLocationChangedImpl> get copyWith =>
      __$$WorkLocationChangedImplCopyWithImpl<_$WorkLocationChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return workLocationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return workLocationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (workLocationChanged != null) {
      return workLocationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return workLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return workLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (workLocationChanged != null) {
      return workLocationChanged(this);
    }
    return orElse();
  }
}

abstract class WorkLocationChanged implements LocationDemographicsEvent {
  const factory WorkLocationChanged({required final String location}) =
      _$WorkLocationChangedImpl;

  String get location;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkLocationChangedImplCopyWith<_$WorkLocationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrivacyLevelChangedImplCopyWith<$Res> {
  factory _$$PrivacyLevelChangedImplCopyWith(
    _$PrivacyLevelChangedImpl value,
    $Res Function(_$PrivacyLevelChangedImpl) then,
  ) = __$$PrivacyLevelChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String level});
}

/// @nodoc
class __$$PrivacyLevelChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<$Res, _$PrivacyLevelChangedImpl>
    implements _$$PrivacyLevelChangedImplCopyWith<$Res> {
  __$$PrivacyLevelChangedImplCopyWithImpl(
    _$PrivacyLevelChangedImpl _value,
    $Res Function(_$PrivacyLevelChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? level = null}) {
    return _then(
      _$PrivacyLevelChangedImpl(
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$PrivacyLevelChangedImpl implements PrivacyLevelChanged {
  const _$PrivacyLevelChangedImpl({required this.level});

  @override
  final String level;

  @override
  String toString() {
    return 'LocationDemographicsEvent.privacyLevelChanged(level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyLevelChangedImpl &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyLevelChangedImplCopyWith<_$PrivacyLevelChangedImpl> get copyWith =>
      __$$PrivacyLevelChangedImplCopyWithImpl<_$PrivacyLevelChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return privacyLevelChanged(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return privacyLevelChanged?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (privacyLevelChanged != null) {
      return privacyLevelChanged(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return privacyLevelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return privacyLevelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (privacyLevelChanged != null) {
      return privacyLevelChanged(this);
    }
    return orElse();
  }
}

abstract class PrivacyLevelChanged implements LocationDemographicsEvent {
  const factory PrivacyLevelChanged({required final String level}) =
      _$PrivacyLevelChangedImpl;

  String get level;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyLevelChangedImplCopyWith<_$PrivacyLevelChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareLocationDataChangedImplCopyWith<$Res> {
  factory _$$ShareLocationDataChangedImplCopyWith(
    _$ShareLocationDataChangedImpl value,
    $Res Function(_$ShareLocationDataChangedImpl) then,
  ) = __$$ShareLocationDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool share});
}

/// @nodoc
class __$$ShareLocationDataChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<
          $Res,
          _$ShareLocationDataChangedImpl
        >
    implements _$$ShareLocationDataChangedImplCopyWith<$Res> {
  __$$ShareLocationDataChangedImplCopyWithImpl(
    _$ShareLocationDataChangedImpl _value,
    $Res Function(_$ShareLocationDataChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? share = null}) {
    return _then(
      _$ShareLocationDataChangedImpl(
        share:
            null == share
                ? _value.share
                : share // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$ShareLocationDataChangedImpl implements ShareLocationDataChanged {
  const _$ShareLocationDataChangedImpl({required this.share});

  @override
  final bool share;

  @override
  String toString() {
    return 'LocationDemographicsEvent.shareLocationDataChanged(share: $share)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareLocationDataChangedImpl &&
            (identical(other.share, share) || other.share == share));
  }

  @override
  int get hashCode => Object.hash(runtimeType, share);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareLocationDataChangedImplCopyWith<_$ShareLocationDataChangedImpl>
  get copyWith => __$$ShareLocationDataChangedImplCopyWithImpl<
    _$ShareLocationDataChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return shareLocationDataChanged(share);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return shareLocationDataChanged?.call(share);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (shareLocationDataChanged != null) {
      return shareLocationDataChanged(share);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return shareLocationDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return shareLocationDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (shareLocationDataChanged != null) {
      return shareLocationDataChanged(this);
    }
    return orElse();
  }
}

abstract class ShareLocationDataChanged implements LocationDemographicsEvent {
  const factory ShareLocationDataChanged({required final bool share}) =
      _$ShareLocationDataChangedImpl;

  bool get share;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareLocationDataChangedImplCopyWith<_$ShareLocationDataChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationPrivacyConsentChangedImplCopyWith<$Res> {
  factory _$$LocationPrivacyConsentChangedImplCopyWith(
    _$LocationPrivacyConsentChangedImpl value,
    $Res Function(_$LocationPrivacyConsentChangedImpl) then,
  ) = __$$LocationPrivacyConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$LocationPrivacyConsentChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<
          $Res,
          _$LocationPrivacyConsentChangedImpl
        >
    implements _$$LocationPrivacyConsentChangedImplCopyWith<$Res> {
  __$$LocationPrivacyConsentChangedImplCopyWithImpl(
    _$LocationPrivacyConsentChangedImpl _value,
    $Res Function(_$LocationPrivacyConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$LocationPrivacyConsentChangedImpl(
        consent:
            null == consent
                ? _value.consent
                : consent // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$LocationPrivacyConsentChangedImpl
    implements LocationPrivacyConsentChanged {
  const _$LocationPrivacyConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'LocationDemographicsEvent.locationPrivacyConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPrivacyConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPrivacyConsentChangedImplCopyWith<
    _$LocationPrivacyConsentChangedImpl
  >
  get copyWith => __$$LocationPrivacyConsentChangedImplCopyWithImpl<
    _$LocationPrivacyConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return locationPrivacyConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return locationPrivacyConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationPrivacyConsentChanged != null) {
      return locationPrivacyConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return locationPrivacyConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return locationPrivacyConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationPrivacyConsentChanged != null) {
      return locationPrivacyConsentChanged(this);
    }
    return orElse();
  }
}

abstract class LocationPrivacyConsentChanged
    implements LocationDemographicsEvent {
  const factory LocationPrivacyConsentChanged({required final bool consent}) =
      _$LocationPrivacyConsentChangedImpl;

  bool get consent;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationPrivacyConsentChangedImplCopyWith<
    _$LocationPrivacyConsentChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationDataProcessingConsentChangedImplCopyWith<$Res> {
  factory _$$LocationDataProcessingConsentChangedImplCopyWith(
    _$LocationDataProcessingConsentChangedImpl value,
    $Res Function(_$LocationDataProcessingConsentChangedImpl) then,
  ) = __$$LocationDataProcessingConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$LocationDataProcessingConsentChangedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<
          $Res,
          _$LocationDataProcessingConsentChangedImpl
        >
    implements _$$LocationDataProcessingConsentChangedImplCopyWith<$Res> {
  __$$LocationDataProcessingConsentChangedImplCopyWithImpl(
    _$LocationDataProcessingConsentChangedImpl _value,
    $Res Function(_$LocationDataProcessingConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$LocationDataProcessingConsentChangedImpl(
        consent:
            null == consent
                ? _value.consent
                : consent // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$LocationDataProcessingConsentChangedImpl
    implements LocationDataProcessingConsentChanged {
  const _$LocationDataProcessingConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'LocationDemographicsEvent.locationDataProcessingConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataProcessingConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataProcessingConsentChangedImplCopyWith<
    _$LocationDataProcessingConsentChangedImpl
  >
  get copyWith => __$$LocationDataProcessingConsentChangedImplCopyWithImpl<
    _$LocationDataProcessingConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return locationDataProcessingConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return locationDataProcessingConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationDataProcessingConsentChanged != null) {
      return locationDataProcessingConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return locationDataProcessingConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return locationDataProcessingConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationDataProcessingConsentChanged != null) {
      return locationDataProcessingConsentChanged(this);
    }
    return orElse();
  }
}

abstract class LocationDataProcessingConsentChanged
    implements LocationDemographicsEvent {
  const factory LocationDataProcessingConsentChanged({
    required final bool consent,
  }) = _$LocationDataProcessingConsentChangedImpl;

  bool get consent;

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDataProcessingConsentChangedImplCopyWith<
    _$LocationDataProcessingConsentChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFormSubmittedImplCopyWith<$Res> {
  factory _$$LocationFormSubmittedImplCopyWith(
    _$LocationFormSubmittedImpl value,
    $Res Function(_$LocationFormSubmittedImpl) then,
  ) = __$$LocationFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationFormSubmittedImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<
          $Res,
          _$LocationFormSubmittedImpl
        >
    implements _$$LocationFormSubmittedImplCopyWith<$Res> {
  __$$LocationFormSubmittedImplCopyWithImpl(
    _$LocationFormSubmittedImpl _value,
    $Res Function(_$LocationFormSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationFormSubmittedImpl implements LocationFormSubmitted {
  const _$LocationFormSubmittedImpl();

  @override
  String toString() {
    return 'LocationDemographicsEvent.locationFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return locationFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return locationFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationFormSubmitted != null) {
      return locationFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return locationFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return locationFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationFormSubmitted != null) {
      return locationFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class LocationFormSubmitted implements LocationDemographicsEvent {
  const factory LocationFormSubmitted() = _$LocationFormSubmittedImpl;
}

/// @nodoc
abstract class _$$LocationFormResetImplCopyWith<$Res> {
  factory _$$LocationFormResetImplCopyWith(
    _$LocationFormResetImpl value,
    $Res Function(_$LocationFormResetImpl) then,
  ) = __$$LocationFormResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationFormResetImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsEventCopyWithImpl<$Res, _$LocationFormResetImpl>
    implements _$$LocationFormResetImplCopyWith<$Res> {
  __$$LocationFormResetImplCopyWithImpl(
    _$LocationFormResetImpl _value,
    $Res Function(_$LocationFormResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationFormResetImpl implements LocationFormReset {
  const _$LocationFormResetImpl();

  @override
  String toString() {
    return 'LocationDemographicsEvent.locationFormReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationFormResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) homeLocationChanged,
    required TResult Function(String location) workLocationChanged,
    required TResult Function(String level) privacyLevelChanged,
    required TResult Function(bool share) shareLocationDataChanged,
    required TResult Function(bool consent) locationPrivacyConsentChanged,
    required TResult Function(bool consent)
    locationDataProcessingConsentChanged,
    required TResult Function() locationFormSubmitted,
    required TResult Function() locationFormReset,
  }) {
    return locationFormReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String location)? homeLocationChanged,
    TResult? Function(String location)? workLocationChanged,
    TResult? Function(String level)? privacyLevelChanged,
    TResult? Function(bool share)? shareLocationDataChanged,
    TResult? Function(bool consent)? locationPrivacyConsentChanged,
    TResult? Function(bool consent)? locationDataProcessingConsentChanged,
    TResult? Function()? locationFormSubmitted,
    TResult? Function()? locationFormReset,
  }) {
    return locationFormReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? homeLocationChanged,
    TResult Function(String location)? workLocationChanged,
    TResult Function(String level)? privacyLevelChanged,
    TResult Function(bool share)? shareLocationDataChanged,
    TResult Function(bool consent)? locationPrivacyConsentChanged,
    TResult Function(bool consent)? locationDataProcessingConsentChanged,
    TResult Function()? locationFormSubmitted,
    TResult Function()? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationFormReset != null) {
      return locationFormReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLocationChanged value) homeLocationChanged,
    required TResult Function(WorkLocationChanged value) workLocationChanged,
    required TResult Function(PrivacyLevelChanged value) privacyLevelChanged,
    required TResult Function(ShareLocationDataChanged value)
    shareLocationDataChanged,
    required TResult Function(LocationPrivacyConsentChanged value)
    locationPrivacyConsentChanged,
    required TResult Function(LocationDataProcessingConsentChanged value)
    locationDataProcessingConsentChanged,
    required TResult Function(LocationFormSubmitted value)
    locationFormSubmitted,
    required TResult Function(LocationFormReset value) locationFormReset,
  }) {
    return locationFormReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLocationChanged value)? homeLocationChanged,
    TResult? Function(WorkLocationChanged value)? workLocationChanged,
    TResult? Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult? Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult? Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult? Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult? Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult? Function(LocationFormReset value)? locationFormReset,
  }) {
    return locationFormReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLocationChanged value)? homeLocationChanged,
    TResult Function(WorkLocationChanged value)? workLocationChanged,
    TResult Function(PrivacyLevelChanged value)? privacyLevelChanged,
    TResult Function(ShareLocationDataChanged value)? shareLocationDataChanged,
    TResult Function(LocationPrivacyConsentChanged value)?
    locationPrivacyConsentChanged,
    TResult Function(LocationDataProcessingConsentChanged value)?
    locationDataProcessingConsentChanged,
    TResult Function(LocationFormSubmitted value)? locationFormSubmitted,
    TResult Function(LocationFormReset value)? locationFormReset,
    required TResult orElse(),
  }) {
    if (locationFormReset != null) {
      return locationFormReset(this);
    }
    return orElse();
  }
}

abstract class LocationFormReset implements LocationDemographicsEvent {
  const factory LocationFormReset() = _$LocationFormResetImpl;
}

/// @nodoc
mixin _$LocationDemographicsState {
  HomeLocationInput get homeLocation => throw _privateConstructorUsedError;
  WorkLocationInput get workLocation => throw _privateConstructorUsedError;
  PrivacyLevelInput get privacyLevel => throw _privateConstructorUsedError;
  ShareLocationDataInput get shareLocationData =>
      throw _privateConstructorUsedError;
  LocationPrivacyConsentInput get privacyConsent =>
      throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  LocationDemographics? get locationDemographics =>
      throw _privateConstructorUsedError;

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDemographicsStateCopyWith<LocationDemographicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDemographicsStateCopyWith<$Res> {
  factory $LocationDemographicsStateCopyWith(
    LocationDemographicsState value,
    $Res Function(LocationDemographicsState) then,
  ) = _$LocationDemographicsStateCopyWithImpl<$Res, LocationDemographicsState>;
  @useResult
  $Res call({
    HomeLocationInput homeLocation,
    WorkLocationInput workLocation,
    PrivacyLevelInput privacyLevel,
    ShareLocationDataInput shareLocationData,
    LocationPrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    String? errorMessage,
    LocationDemographics? locationDemographics,
  });

  $LocationDemographicsCopyWith<$Res>? get locationDemographics;
}

/// @nodoc
class _$LocationDemographicsStateCopyWithImpl<
  $Res,
  $Val extends LocationDemographicsState
>
    implements $LocationDemographicsStateCopyWith<$Res> {
  _$LocationDemographicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeLocation = null,
    Object? workLocation = null,
    Object? privacyLevel = null,
    Object? shareLocationData = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? locationDemographics = freezed,
  }) {
    return _then(
      _value.copyWith(
            homeLocation:
                null == homeLocation
                    ? _value.homeLocation
                    : homeLocation // ignore: cast_nullable_to_non_nullable
                        as HomeLocationInput,
            workLocation:
                null == workLocation
                    ? _value.workLocation
                    : workLocation // ignore: cast_nullable_to_non_nullable
                        as WorkLocationInput,
            privacyLevel:
                null == privacyLevel
                    ? _value.privacyLevel
                    : privacyLevel // ignore: cast_nullable_to_non_nullable
                        as PrivacyLevelInput,
            shareLocationData:
                null == shareLocationData
                    ? _value.shareLocationData
                    : shareLocationData // ignore: cast_nullable_to_non_nullable
                        as ShareLocationDataInput,
            privacyConsent:
                null == privacyConsent
                    ? _value.privacyConsent
                    : privacyConsent // ignore: cast_nullable_to_non_nullable
                        as LocationPrivacyConsentInput,
            dataProcessingConsent:
                null == dataProcessingConsent
                    ? _value.dataProcessingConsent
                    : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                        as bool,
            isValid:
                null == isValid
                    ? _value.isValid
                    : isValid // ignore: cast_nullable_to_non_nullable
                        as bool,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as FormzSubmissionStatus,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            locationDemographics:
                freezed == locationDemographics
                    ? _value.locationDemographics
                    : locationDemographics // ignore: cast_nullable_to_non_nullable
                        as LocationDemographics?,
          )
          as $Val,
    );
  }

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDemographicsCopyWith<$Res>? get locationDemographics {
    if (_value.locationDemographics == null) {
      return null;
    }

    return $LocationDemographicsCopyWith<$Res>(_value.locationDemographics!, (
      value,
    ) {
      return _then(_value.copyWith(locationDemographics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationDemographicsStateImplCopyWith<$Res>
    implements $LocationDemographicsStateCopyWith<$Res> {
  factory _$$LocationDemographicsStateImplCopyWith(
    _$LocationDemographicsStateImpl value,
    $Res Function(_$LocationDemographicsStateImpl) then,
  ) = __$$LocationDemographicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    HomeLocationInput homeLocation,
    WorkLocationInput workLocation,
    PrivacyLevelInput privacyLevel,
    ShareLocationDataInput shareLocationData,
    LocationPrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    String? errorMessage,
    LocationDemographics? locationDemographics,
  });

  @override
  $LocationDemographicsCopyWith<$Res>? get locationDemographics;
}

/// @nodoc
class __$$LocationDemographicsStateImplCopyWithImpl<$Res>
    extends
        _$LocationDemographicsStateCopyWithImpl<
          $Res,
          _$LocationDemographicsStateImpl
        >
    implements _$$LocationDemographicsStateImplCopyWith<$Res> {
  __$$LocationDemographicsStateImplCopyWithImpl(
    _$LocationDemographicsStateImpl _value,
    $Res Function(_$LocationDemographicsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeLocation = null,
    Object? workLocation = null,
    Object? privacyLevel = null,
    Object? shareLocationData = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? locationDemographics = freezed,
  }) {
    return _then(
      _$LocationDemographicsStateImpl(
        homeLocation:
            null == homeLocation
                ? _value.homeLocation
                : homeLocation // ignore: cast_nullable_to_non_nullable
                    as HomeLocationInput,
        workLocation:
            null == workLocation
                ? _value.workLocation
                : workLocation // ignore: cast_nullable_to_non_nullable
                    as WorkLocationInput,
        privacyLevel:
            null == privacyLevel
                ? _value.privacyLevel
                : privacyLevel // ignore: cast_nullable_to_non_nullable
                    as PrivacyLevelInput,
        shareLocationData:
            null == shareLocationData
                ? _value.shareLocationData
                : shareLocationData // ignore: cast_nullable_to_non_nullable
                    as ShareLocationDataInput,
        privacyConsent:
            null == privacyConsent
                ? _value.privacyConsent
                : privacyConsent // ignore: cast_nullable_to_non_nullable
                    as LocationPrivacyConsentInput,
        dataProcessingConsent:
            null == dataProcessingConsent
                ? _value.dataProcessingConsent
                : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                    as bool,
        isValid:
            null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                    as bool,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as FormzSubmissionStatus,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        locationDemographics:
            freezed == locationDemographics
                ? _value.locationDemographics
                : locationDemographics // ignore: cast_nullable_to_non_nullable
                    as LocationDemographics?,
      ),
    );
  }
}

/// @nodoc

class _$LocationDemographicsStateImpl implements _LocationDemographicsState {
  const _$LocationDemographicsStateImpl({
    this.homeLocation = const HomeLocationInput.pure(),
    this.workLocation = const WorkLocationInput.pure(),
    this.privacyLevel = const PrivacyLevelInput.pure(),
    this.shareLocationData = const ShareLocationDataInput.pure(),
    this.privacyConsent = const LocationPrivacyConsentInput.pure(),
    this.dataProcessingConsent = false,
    this.isValid = false,
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.locationDemographics,
  });

  @override
  @JsonKey()
  final HomeLocationInput homeLocation;
  @override
  @JsonKey()
  final WorkLocationInput workLocation;
  @override
  @JsonKey()
  final PrivacyLevelInput privacyLevel;
  @override
  @JsonKey()
  final ShareLocationDataInput shareLocationData;
  @override
  @JsonKey()
  final LocationPrivacyConsentInput privacyConsent;
  @override
  @JsonKey()
  final bool dataProcessingConsent;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  final String? errorMessage;
  @override
  final LocationDemographics? locationDemographics;

  @override
  String toString() {
    return 'LocationDemographicsState(homeLocation: $homeLocation, workLocation: $workLocation, privacyLevel: $privacyLevel, shareLocationData: $shareLocationData, privacyConsent: $privacyConsent, dataProcessingConsent: $dataProcessingConsent, isValid: $isValid, status: $status, errorMessage: $errorMessage, locationDemographics: $locationDemographics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDemographicsStateImpl &&
            (identical(other.homeLocation, homeLocation) ||
                other.homeLocation == homeLocation) &&
            (identical(other.workLocation, workLocation) ||
                other.workLocation == workLocation) &&
            (identical(other.privacyLevel, privacyLevel) ||
                other.privacyLevel == privacyLevel) &&
            (identical(other.shareLocationData, shareLocationData) ||
                other.shareLocationData == shareLocationData) &&
            (identical(other.privacyConsent, privacyConsent) ||
                other.privacyConsent == privacyConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.locationDemographics, locationDemographics) ||
                other.locationDemographics == locationDemographics));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    homeLocation,
    workLocation,
    privacyLevel,
    shareLocationData,
    privacyConsent,
    dataProcessingConsent,
    isValid,
    status,
    errorMessage,
    locationDemographics,
  );

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDemographicsStateImplCopyWith<_$LocationDemographicsStateImpl>
  get copyWith => __$$LocationDemographicsStateImplCopyWithImpl<
    _$LocationDemographicsStateImpl
  >(this, _$identity);
}

abstract class _LocationDemographicsState implements LocationDemographicsState {
  const factory _LocationDemographicsState({
    final HomeLocationInput homeLocation,
    final WorkLocationInput workLocation,
    final PrivacyLevelInput privacyLevel,
    final ShareLocationDataInput shareLocationData,
    final LocationPrivacyConsentInput privacyConsent,
    final bool dataProcessingConsent,
    final bool isValid,
    final FormzSubmissionStatus status,
    final String? errorMessage,
    final LocationDemographics? locationDemographics,
  }) = _$LocationDemographicsStateImpl;

  @override
  HomeLocationInput get homeLocation;
  @override
  WorkLocationInput get workLocation;
  @override
  PrivacyLevelInput get privacyLevel;
  @override
  ShareLocationDataInput get shareLocationData;
  @override
  LocationPrivacyConsentInput get privacyConsent;
  @override
  bool get dataProcessingConsent;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  String? get errorMessage;
  @override
  LocationDemographics? get locationDemographics;

  /// Create a copy of LocationDemographicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDemographicsStateImplCopyWith<_$LocationDemographicsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
