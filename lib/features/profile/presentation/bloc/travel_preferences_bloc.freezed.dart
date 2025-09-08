// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TravelPreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPreferencesEventCopyWith<$Res> {
  factory $TravelPreferencesEventCopyWith(
    TravelPreferencesEvent value,
    $Res Function(TravelPreferencesEvent) then,
  ) = _$TravelPreferencesEventCopyWithImpl<$Res, TravelPreferencesEvent>;
}

/// @nodoc
class _$TravelPreferencesEventCopyWithImpl<
  $Res,
  $Val extends TravelPreferencesEvent
>
    implements $TravelPreferencesEventCopyWith<$Res> {
  _$TravelPreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransportationModesChangedImplCopyWith<$Res> {
  factory _$$TransportationModesChangedImplCopyWith(
    _$TransportationModesChangedImpl value,
    $Res Function(_$TransportationModesChangedImpl) then,
  ) = __$$TransportationModesChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> modes});
}

/// @nodoc
class __$$TransportationModesChangedImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesEventCopyWithImpl<
          $Res,
          _$TransportationModesChangedImpl
        >
    implements _$$TransportationModesChangedImplCopyWith<$Res> {
  __$$TransportationModesChangedImplCopyWithImpl(
    _$TransportationModesChangedImpl _value,
    $Res Function(_$TransportationModesChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? modes = null}) {
    return _then(
      _$TransportationModesChangedImpl(
        modes:
            null == modes
                ? _value._modes
                : modes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$TransportationModesChangedImpl implements TransportationModesChanged {
  const _$TransportationModesChangedImpl({required final List<String> modes})
    : _modes = modes;

  final List<String> _modes;
  @override
  List<String> get modes {
    if (_modes is EqualUnmodifiableListView) return _modes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modes);
  }

  @override
  String toString() {
    return 'TravelPreferencesEvent.transportationModesChanged(modes: $modes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportationModesChangedImpl &&
            const DeepCollectionEquality().equals(other._modes, _modes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modes));

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportationModesChangedImplCopyWith<_$TransportationModesChangedImpl>
  get copyWith => __$$TransportationModesChangedImplCopyWithImpl<
    _$TransportationModesChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return transportationModesChanged(modes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return transportationModesChanged?.call(modes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (transportationModesChanged != null) {
      return transportationModesChanged(modes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return transportationModesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return transportationModesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (transportationModesChanged != null) {
      return transportationModesChanged(this);
    }
    return orElse();
  }
}

abstract class TransportationModesChanged implements TravelPreferencesEvent {
  const factory TransportationModesChanged({
    required final List<String> modes,
  }) = _$TransportationModesChangedImpl;

  List<String> get modes;

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransportationModesChangedImplCopyWith<_$TransportationModesChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelFrequencyChangedImplCopyWith<$Res> {
  factory _$$TravelFrequencyChangedImplCopyWith(
    _$TravelFrequencyChangedImpl value,
    $Res Function(_$TravelFrequencyChangedImpl) then,
  ) = __$$TravelFrequencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String frequency});
}

/// @nodoc
class __$$TravelFrequencyChangedImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesEventCopyWithImpl<$Res, _$TravelFrequencyChangedImpl>
    implements _$$TravelFrequencyChangedImplCopyWith<$Res> {
  __$$TravelFrequencyChangedImplCopyWithImpl(
    _$TravelFrequencyChangedImpl _value,
    $Res Function(_$TravelFrequencyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? frequency = null}) {
    return _then(
      _$TravelFrequencyChangedImpl(
        frequency:
            null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$TravelFrequencyChangedImpl implements TravelFrequencyChanged {
  const _$TravelFrequencyChangedImpl({required this.frequency});

  @override
  final String frequency;

  @override
  String toString() {
    return 'TravelPreferencesEvent.travelFrequencyChanged(frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelFrequencyChangedImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frequency);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelFrequencyChangedImplCopyWith<_$TravelFrequencyChangedImpl>
  get copyWith =>
      __$$TravelFrequencyChangedImplCopyWithImpl<_$TravelFrequencyChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return travelFrequencyChanged(frequency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return travelFrequencyChanged?.call(frequency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFrequencyChanged != null) {
      return travelFrequencyChanged(frequency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return travelFrequencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return travelFrequencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFrequencyChanged != null) {
      return travelFrequencyChanged(this);
    }
    return orElse();
  }
}

abstract class TravelFrequencyChanged implements TravelPreferencesEvent {
  const factory TravelFrequencyChanged({required final String frequency}) =
      _$TravelFrequencyChangedImpl;

  String get frequency;

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelFrequencyChangedImplCopyWith<_$TravelFrequencyChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelPrivacyConsentChangedImplCopyWith<$Res> {
  factory _$$TravelPrivacyConsentChangedImplCopyWith(
    _$TravelPrivacyConsentChangedImpl value,
    $Res Function(_$TravelPrivacyConsentChangedImpl) then,
  ) = __$$TravelPrivacyConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$TravelPrivacyConsentChangedImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesEventCopyWithImpl<
          $Res,
          _$TravelPrivacyConsentChangedImpl
        >
    implements _$$TravelPrivacyConsentChangedImplCopyWith<$Res> {
  __$$TravelPrivacyConsentChangedImplCopyWithImpl(
    _$TravelPrivacyConsentChangedImpl _value,
    $Res Function(_$TravelPrivacyConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$TravelPrivacyConsentChangedImpl(
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

class _$TravelPrivacyConsentChangedImpl implements TravelPrivacyConsentChanged {
  const _$TravelPrivacyConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'TravelPreferencesEvent.travelPrivacyConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPrivacyConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPrivacyConsentChangedImplCopyWith<_$TravelPrivacyConsentChangedImpl>
  get copyWith => __$$TravelPrivacyConsentChangedImplCopyWithImpl<
    _$TravelPrivacyConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return travelPrivacyConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return travelPrivacyConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelPrivacyConsentChanged != null) {
      return travelPrivacyConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return travelPrivacyConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return travelPrivacyConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelPrivacyConsentChanged != null) {
      return travelPrivacyConsentChanged(this);
    }
    return orElse();
  }
}

abstract class TravelPrivacyConsentChanged implements TravelPreferencesEvent {
  const factory TravelPrivacyConsentChanged({required final bool consent}) =
      _$TravelPrivacyConsentChangedImpl;

  bool get consent;

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelPrivacyConsentChangedImplCopyWith<_$TravelPrivacyConsentChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelDataProcessingConsentChangedImplCopyWith<$Res> {
  factory _$$TravelDataProcessingConsentChangedImplCopyWith(
    _$TravelDataProcessingConsentChangedImpl value,
    $Res Function(_$TravelDataProcessingConsentChangedImpl) then,
  ) = __$$TravelDataProcessingConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$TravelDataProcessingConsentChangedImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesEventCopyWithImpl<
          $Res,
          _$TravelDataProcessingConsentChangedImpl
        >
    implements _$$TravelDataProcessingConsentChangedImplCopyWith<$Res> {
  __$$TravelDataProcessingConsentChangedImplCopyWithImpl(
    _$TravelDataProcessingConsentChangedImpl _value,
    $Res Function(_$TravelDataProcessingConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$TravelDataProcessingConsentChangedImpl(
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

class _$TravelDataProcessingConsentChangedImpl
    implements TravelDataProcessingConsentChanged {
  const _$TravelDataProcessingConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'TravelPreferencesEvent.travelDataProcessingConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDataProcessingConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDataProcessingConsentChangedImplCopyWith<
    _$TravelDataProcessingConsentChangedImpl
  >
  get copyWith => __$$TravelDataProcessingConsentChangedImplCopyWithImpl<
    _$TravelDataProcessingConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return travelDataProcessingConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return travelDataProcessingConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelDataProcessingConsentChanged != null) {
      return travelDataProcessingConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return travelDataProcessingConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return travelDataProcessingConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelDataProcessingConsentChanged != null) {
      return travelDataProcessingConsentChanged(this);
    }
    return orElse();
  }
}

abstract class TravelDataProcessingConsentChanged
    implements TravelPreferencesEvent {
  const factory TravelDataProcessingConsentChanged({
    required final bool consent,
  }) = _$TravelDataProcessingConsentChangedImpl;

  bool get consent;

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelDataProcessingConsentChangedImplCopyWith<
    _$TravelDataProcessingConsentChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelFormSubmittedImplCopyWith<$Res> {
  factory _$$TravelFormSubmittedImplCopyWith(
    _$TravelFormSubmittedImpl value,
    $Res Function(_$TravelFormSubmittedImpl) then,
  ) = __$$TravelFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelFormSubmittedImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesEventCopyWithImpl<$Res, _$TravelFormSubmittedImpl>
    implements _$$TravelFormSubmittedImplCopyWith<$Res> {
  __$$TravelFormSubmittedImplCopyWithImpl(
    _$TravelFormSubmittedImpl _value,
    $Res Function(_$TravelFormSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TravelFormSubmittedImpl implements TravelFormSubmitted {
  const _$TravelFormSubmittedImpl();

  @override
  String toString() {
    return 'TravelPreferencesEvent.travelFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return travelFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return travelFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFormSubmitted != null) {
      return travelFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return travelFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return travelFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFormSubmitted != null) {
      return travelFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class TravelFormSubmitted implements TravelPreferencesEvent {
  const factory TravelFormSubmitted() = _$TravelFormSubmittedImpl;
}

/// @nodoc
abstract class _$$TravelFormResetImplCopyWith<$Res> {
  factory _$$TravelFormResetImplCopyWith(
    _$TravelFormResetImpl value,
    $Res Function(_$TravelFormResetImpl) then,
  ) = __$$TravelFormResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelFormResetImplCopyWithImpl<$Res>
    extends _$TravelPreferencesEventCopyWithImpl<$Res, _$TravelFormResetImpl>
    implements _$$TravelFormResetImplCopyWith<$Res> {
  __$$TravelFormResetImplCopyWithImpl(
    _$TravelFormResetImpl _value,
    $Res Function(_$TravelFormResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TravelFormResetImpl implements TravelFormReset {
  const _$TravelFormResetImpl();

  @override
  String toString() {
    return 'TravelPreferencesEvent.travelFormReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TravelFormResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> modes) transportationModesChanged,
    required TResult Function(String frequency) travelFrequencyChanged,
    required TResult Function(bool consent) travelPrivacyConsentChanged,
    required TResult Function(bool consent) travelDataProcessingConsentChanged,
    required TResult Function() travelFormSubmitted,
    required TResult Function() travelFormReset,
  }) {
    return travelFormReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> modes)? transportationModesChanged,
    TResult? Function(String frequency)? travelFrequencyChanged,
    TResult? Function(bool consent)? travelPrivacyConsentChanged,
    TResult? Function(bool consent)? travelDataProcessingConsentChanged,
    TResult? Function()? travelFormSubmitted,
    TResult? Function()? travelFormReset,
  }) {
    return travelFormReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> modes)? transportationModesChanged,
    TResult Function(String frequency)? travelFrequencyChanged,
    TResult Function(bool consent)? travelPrivacyConsentChanged,
    TResult Function(bool consent)? travelDataProcessingConsentChanged,
    TResult Function()? travelFormSubmitted,
    TResult Function()? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFormReset != null) {
      return travelFormReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransportationModesChanged value)
    transportationModesChanged,
    required TResult Function(TravelFrequencyChanged value)
    travelFrequencyChanged,
    required TResult Function(TravelPrivacyConsentChanged value)
    travelPrivacyConsentChanged,
    required TResult Function(TravelDataProcessingConsentChanged value)
    travelDataProcessingConsentChanged,
    required TResult Function(TravelFormSubmitted value) travelFormSubmitted,
    required TResult Function(TravelFormReset value) travelFormReset,
  }) {
    return travelFormReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult? Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult? Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult? Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult? Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult? Function(TravelFormReset value)? travelFormReset,
  }) {
    return travelFormReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransportationModesChanged value)?
    transportationModesChanged,
    TResult Function(TravelFrequencyChanged value)? travelFrequencyChanged,
    TResult Function(TravelPrivacyConsentChanged value)?
    travelPrivacyConsentChanged,
    TResult Function(TravelDataProcessingConsentChanged value)?
    travelDataProcessingConsentChanged,
    TResult Function(TravelFormSubmitted value)? travelFormSubmitted,
    TResult Function(TravelFormReset value)? travelFormReset,
    required TResult orElse(),
  }) {
    if (travelFormReset != null) {
      return travelFormReset(this);
    }
    return orElse();
  }
}

abstract class TravelFormReset implements TravelPreferencesEvent {
  const factory TravelFormReset() = _$TravelFormResetImpl;
}

/// @nodoc
mixin _$TravelPreferencesState {
  TransportationModesInput get transportationModes =>
      throw _privateConstructorUsedError;
  TravelFrequencyInput get travelFrequency =>
      throw _privateConstructorUsedError;
  TravelPrivacyConsentInput get privacyConsent =>
      throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TravelPreferences? get travelPreferences =>
      throw _privateConstructorUsedError;

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelPreferencesStateCopyWith<TravelPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPreferencesStateCopyWith<$Res> {
  factory $TravelPreferencesStateCopyWith(
    TravelPreferencesState value,
    $Res Function(TravelPreferencesState) then,
  ) = _$TravelPreferencesStateCopyWithImpl<$Res, TravelPreferencesState>;
  @useResult
  $Res call({
    TransportationModesInput transportationModes,
    TravelFrequencyInput travelFrequency,
    TravelPrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    String? errorMessage,
    TravelPreferences? travelPreferences,
  });

  $TravelPreferencesCopyWith<$Res>? get travelPreferences;
}

/// @nodoc
class _$TravelPreferencesStateCopyWithImpl<
  $Res,
  $Val extends TravelPreferencesState
>
    implements $TravelPreferencesStateCopyWith<$Res> {
  _$TravelPreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportationModes = null,
    Object? travelFrequency = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? travelPreferences = freezed,
  }) {
    return _then(
      _value.copyWith(
            transportationModes:
                null == transportationModes
                    ? _value.transportationModes
                    : transportationModes // ignore: cast_nullable_to_non_nullable
                        as TransportationModesInput,
            travelFrequency:
                null == travelFrequency
                    ? _value.travelFrequency
                    : travelFrequency // ignore: cast_nullable_to_non_nullable
                        as TravelFrequencyInput,
            privacyConsent:
                null == privacyConsent
                    ? _value.privacyConsent
                    : privacyConsent // ignore: cast_nullable_to_non_nullable
                        as TravelPrivacyConsentInput,
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
            travelPreferences:
                freezed == travelPreferences
                    ? _value.travelPreferences
                    : travelPreferences // ignore: cast_nullable_to_non_nullable
                        as TravelPreferences?,
          )
          as $Val,
    );
  }

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TravelPreferencesCopyWith<$Res>? get travelPreferences {
    if (_value.travelPreferences == null) {
      return null;
    }

    return $TravelPreferencesCopyWith<$Res>(_value.travelPreferences!, (value) {
      return _then(_value.copyWith(travelPreferences: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelPreferencesStateImplCopyWith<$Res>
    implements $TravelPreferencesStateCopyWith<$Res> {
  factory _$$TravelPreferencesStateImplCopyWith(
    _$TravelPreferencesStateImpl value,
    $Res Function(_$TravelPreferencesStateImpl) then,
  ) = __$$TravelPreferencesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TransportationModesInput transportationModes,
    TravelFrequencyInput travelFrequency,
    TravelPrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    String? errorMessage,
    TravelPreferences? travelPreferences,
  });

  @override
  $TravelPreferencesCopyWith<$Res>? get travelPreferences;
}

/// @nodoc
class __$$TravelPreferencesStateImplCopyWithImpl<$Res>
    extends
        _$TravelPreferencesStateCopyWithImpl<$Res, _$TravelPreferencesStateImpl>
    implements _$$TravelPreferencesStateImplCopyWith<$Res> {
  __$$TravelPreferencesStateImplCopyWithImpl(
    _$TravelPreferencesStateImpl _value,
    $Res Function(_$TravelPreferencesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transportationModes = null,
    Object? travelFrequency = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? travelPreferences = freezed,
  }) {
    return _then(
      _$TravelPreferencesStateImpl(
        transportationModes:
            null == transportationModes
                ? _value.transportationModes
                : transportationModes // ignore: cast_nullable_to_non_nullable
                    as TransportationModesInput,
        travelFrequency:
            null == travelFrequency
                ? _value.travelFrequency
                : travelFrequency // ignore: cast_nullable_to_non_nullable
                    as TravelFrequencyInput,
        privacyConsent:
            null == privacyConsent
                ? _value.privacyConsent
                : privacyConsent // ignore: cast_nullable_to_non_nullable
                    as TravelPrivacyConsentInput,
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
        travelPreferences:
            freezed == travelPreferences
                ? _value.travelPreferences
                : travelPreferences // ignore: cast_nullable_to_non_nullable
                    as TravelPreferences?,
      ),
    );
  }
}

/// @nodoc

class _$TravelPreferencesStateImpl implements _TravelPreferencesState {
  const _$TravelPreferencesStateImpl({
    this.transportationModes = const TransportationModesInput.pure(),
    this.travelFrequency = const TravelFrequencyInput.pure(),
    this.privacyConsent = const TravelPrivacyConsentInput.pure(),
    this.dataProcessingConsent = false,
    this.isValid = false,
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.travelPreferences,
  });

  @override
  @JsonKey()
  final TransportationModesInput transportationModes;
  @override
  @JsonKey()
  final TravelFrequencyInput travelFrequency;
  @override
  @JsonKey()
  final TravelPrivacyConsentInput privacyConsent;
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
  final TravelPreferences? travelPreferences;

  @override
  String toString() {
    return 'TravelPreferencesState(transportationModes: $transportationModes, travelFrequency: $travelFrequency, privacyConsent: $privacyConsent, dataProcessingConsent: $dataProcessingConsent, isValid: $isValid, status: $status, errorMessage: $errorMessage, travelPreferences: $travelPreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPreferencesStateImpl &&
            (identical(other.transportationModes, transportationModes) ||
                other.transportationModes == transportationModes) &&
            (identical(other.travelFrequency, travelFrequency) ||
                other.travelFrequency == travelFrequency) &&
            (identical(other.privacyConsent, privacyConsent) ||
                other.privacyConsent == privacyConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.travelPreferences, travelPreferences) ||
                other.travelPreferences == travelPreferences));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    transportationModes,
    travelFrequency,
    privacyConsent,
    dataProcessingConsent,
    isValid,
    status,
    errorMessage,
    travelPreferences,
  );

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPreferencesStateImplCopyWith<_$TravelPreferencesStateImpl>
  get copyWith =>
      __$$TravelPreferencesStateImplCopyWithImpl<_$TravelPreferencesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TravelPreferencesState implements TravelPreferencesState {
  const factory _TravelPreferencesState({
    final TransportationModesInput transportationModes,
    final TravelFrequencyInput travelFrequency,
    final TravelPrivacyConsentInput privacyConsent,
    final bool dataProcessingConsent,
    final bool isValid,
    final FormzSubmissionStatus status,
    final String? errorMessage,
    final TravelPreferences? travelPreferences,
  }) = _$TravelPreferencesStateImpl;

  @override
  TransportationModesInput get transportationModes;
  @override
  TravelFrequencyInput get travelFrequency;
  @override
  TravelPrivacyConsentInput get privacyConsent;
  @override
  bool get dataProcessingConsent;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  String? get errorMessage;
  @override
  TravelPreferences? get travelPreferences;

  /// Create a copy of TravelPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelPreferencesStateImplCopyWith<_$TravelPreferencesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
