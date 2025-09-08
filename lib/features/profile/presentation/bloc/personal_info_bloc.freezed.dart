// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PersonalInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoEventCopyWith<$Res> {
  factory $PersonalInfoEventCopyWith(
    PersonalInfoEvent value,
    $Res Function(PersonalInfoEvent) then,
  ) = _$PersonalInfoEventCopyWithImpl<$Res, PersonalInfoEvent>;
}

/// @nodoc
class _$PersonalInfoEventCopyWithImpl<$Res, $Val extends PersonalInfoEvent>
    implements $PersonalInfoEventCopyWith<$Res> {
  _$PersonalInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AgeGroupChangedImplCopyWith<$Res> {
  factory _$$AgeGroupChangedImplCopyWith(
    _$AgeGroupChangedImpl value,
    $Res Function(_$AgeGroupChangedImpl) then,
  ) = __$$AgeGroupChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ageGroup});
}

/// @nodoc
class __$$AgeGroupChangedImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$AgeGroupChangedImpl>
    implements _$$AgeGroupChangedImplCopyWith<$Res> {
  __$$AgeGroupChangedImplCopyWithImpl(
    _$AgeGroupChangedImpl _value,
    $Res Function(_$AgeGroupChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ageGroup = null}) {
    return _then(
      _$AgeGroupChangedImpl(
        null == ageGroup
            ? _value.ageGroup
            : ageGroup // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AgeGroupChangedImpl implements AgeGroupChanged {
  const _$AgeGroupChangedImpl(this.ageGroup);

  @override
  final String ageGroup;

  @override
  String toString() {
    return 'PersonalInfoEvent.ageGroupChanged(ageGroup: $ageGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeGroupChangedImpl &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ageGroup);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeGroupChangedImplCopyWith<_$AgeGroupChangedImpl> get copyWith =>
      __$$AgeGroupChangedImplCopyWithImpl<_$AgeGroupChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return ageGroupChanged(ageGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return ageGroupChanged?.call(ageGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (ageGroupChanged != null) {
      return ageGroupChanged(ageGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return ageGroupChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return ageGroupChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (ageGroupChanged != null) {
      return ageGroupChanged(this);
    }
    return orElse();
  }
}

abstract class AgeGroupChanged implements PersonalInfoEvent {
  const factory AgeGroupChanged(final String ageGroup) = _$AgeGroupChangedImpl;

  String get ageGroup;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgeGroupChangedImplCopyWith<_$AgeGroupChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedImplCopyWith<$Res> {
  factory _$$GenderChangedImplCopyWith(
    _$GenderChangedImpl value,
    $Res Function(_$GenderChangedImpl) then,
  ) = __$$GenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gender});
}

/// @nodoc
class __$$GenderChangedImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$GenderChangedImpl>
    implements _$$GenderChangedImplCopyWith<$Res> {
  __$$GenderChangedImplCopyWithImpl(
    _$GenderChangedImpl _value,
    $Res Function(_$GenderChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? gender = null}) {
    return _then(
      _$GenderChangedImpl(
        null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GenderChangedImpl implements GenderChanged {
  const _$GenderChangedImpl(this.gender);

  @override
  final String gender;

  @override
  String toString() {
    return 'PersonalInfoEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderChangedImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      __$$GenderChangedImplCopyWithImpl<_$GenderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return genderChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements PersonalInfoEvent {
  const factory GenderChanged(final String gender) = _$GenderChangedImpl;

  String get gender;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderChangedImplCopyWith<_$GenderChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmploymentStatusChangedImplCopyWith<$Res> {
  factory _$$EmploymentStatusChangedImplCopyWith(
    _$EmploymentStatusChangedImpl value,
    $Res Function(_$EmploymentStatusChangedImpl) then,
  ) = __$$EmploymentStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String employmentStatus});
}

/// @nodoc
class __$$EmploymentStatusChangedImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$EmploymentStatusChangedImpl>
    implements _$$EmploymentStatusChangedImplCopyWith<$Res> {
  __$$EmploymentStatusChangedImplCopyWithImpl(
    _$EmploymentStatusChangedImpl _value,
    $Res Function(_$EmploymentStatusChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? employmentStatus = null}) {
    return _then(
      _$EmploymentStatusChangedImpl(
        null == employmentStatus
            ? _value.employmentStatus
            : employmentStatus // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$EmploymentStatusChangedImpl implements EmploymentStatusChanged {
  const _$EmploymentStatusChangedImpl(this.employmentStatus);

  @override
  final String employmentStatus;

  @override
  String toString() {
    return 'PersonalInfoEvent.employmentStatusChanged(employmentStatus: $employmentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmploymentStatusChangedImpl &&
            (identical(other.employmentStatus, employmentStatus) ||
                other.employmentStatus == employmentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employmentStatus);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmploymentStatusChangedImplCopyWith<_$EmploymentStatusChangedImpl>
  get copyWith => __$$EmploymentStatusChangedImplCopyWithImpl<
    _$EmploymentStatusChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return employmentStatusChanged(employmentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return employmentStatusChanged?.call(employmentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (employmentStatusChanged != null) {
      return employmentStatusChanged(employmentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return employmentStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return employmentStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (employmentStatusChanged != null) {
      return employmentStatusChanged(this);
    }
    return orElse();
  }
}

abstract class EmploymentStatusChanged implements PersonalInfoEvent {
  const factory EmploymentStatusChanged(final String employmentStatus) =
      _$EmploymentStatusChangedImpl;

  String get employmentStatus;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmploymentStatusChangedImplCopyWith<_$EmploymentStatusChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrivacyConsentChangedImplCopyWith<$Res> {
  factory _$$PrivacyConsentChangedImplCopyWith(
    _$PrivacyConsentChangedImpl value,
    $Res Function(_$PrivacyConsentChangedImpl) then,
  ) = __$$PrivacyConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$PrivacyConsentChangedImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$PrivacyConsentChangedImpl>
    implements _$$PrivacyConsentChangedImplCopyWith<$Res> {
  __$$PrivacyConsentChangedImplCopyWithImpl(
    _$PrivacyConsentChangedImpl _value,
    $Res Function(_$PrivacyConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$PrivacyConsentChangedImpl(
        null == consent
            ? _value.consent
            : consent // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$PrivacyConsentChangedImpl implements PrivacyConsentChanged {
  const _$PrivacyConsentChangedImpl(this.consent);

  @override
  final bool consent;

  @override
  String toString() {
    return 'PersonalInfoEvent.privacyConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyConsentChangedImplCopyWith<_$PrivacyConsentChangedImpl>
  get copyWith =>
      __$$PrivacyConsentChangedImplCopyWithImpl<_$PrivacyConsentChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return privacyConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return privacyConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (privacyConsentChanged != null) {
      return privacyConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return privacyConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return privacyConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (privacyConsentChanged != null) {
      return privacyConsentChanged(this);
    }
    return orElse();
  }
}

abstract class PrivacyConsentChanged implements PersonalInfoEvent {
  const factory PrivacyConsentChanged(final bool consent) =
      _$PrivacyConsentChangedImpl;

  bool get consent;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyConsentChangedImplCopyWith<_$PrivacyConsentChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataProcessingConsentChangedImplCopyWith<$Res> {
  factory _$$DataProcessingConsentChangedImplCopyWith(
    _$DataProcessingConsentChangedImpl value,
    $Res Function(_$DataProcessingConsentChangedImpl) then,
  ) = __$$DataProcessingConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$DataProcessingConsentChangedImplCopyWithImpl<$Res>
    extends
        _$PersonalInfoEventCopyWithImpl<
          $Res,
          _$DataProcessingConsentChangedImpl
        >
    implements _$$DataProcessingConsentChangedImplCopyWith<$Res> {
  __$$DataProcessingConsentChangedImplCopyWithImpl(
    _$DataProcessingConsentChangedImpl _value,
    $Res Function(_$DataProcessingConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$DataProcessingConsentChangedImpl(
        null == consent
            ? _value.consent
            : consent // ignore: cast_nullable_to_non_nullable
                as bool,
      ),
    );
  }
}

/// @nodoc

class _$DataProcessingConsentChangedImpl
    implements DataProcessingConsentChanged {
  const _$DataProcessingConsentChangedImpl(this.consent);

  @override
  final bool consent;

  @override
  String toString() {
    return 'PersonalInfoEvent.dataProcessingConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProcessingConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProcessingConsentChangedImplCopyWith<
    _$DataProcessingConsentChangedImpl
  >
  get copyWith => __$$DataProcessingConsentChangedImplCopyWithImpl<
    _$DataProcessingConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return dataProcessingConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return dataProcessingConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (dataProcessingConsentChanged != null) {
      return dataProcessingConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return dataProcessingConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return dataProcessingConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (dataProcessingConsentChanged != null) {
      return dataProcessingConsentChanged(this);
    }
    return orElse();
  }
}

abstract class DataProcessingConsentChanged implements PersonalInfoEvent {
  const factory DataProcessingConsentChanged(final bool consent) =
      _$DataProcessingConsentChangedImpl;

  bool get consent;

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataProcessingConsentChangedImplCopyWith<
    _$DataProcessingConsentChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedImplCopyWith<$Res> {
  factory _$$FormSubmittedImplCopyWith(
    _$FormSubmittedImpl value,
    $Res Function(_$FormSubmittedImpl) then,
  ) = __$$FormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$FormSubmittedImpl>
    implements _$$FormSubmittedImplCopyWith<$Res> {
  __$$FormSubmittedImplCopyWithImpl(
    _$FormSubmittedImpl _value,
    $Res Function(_$FormSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormSubmittedImpl implements FormSubmitted {
  const _$FormSubmittedImpl();

  @override
  String toString() {
    return 'PersonalInfoEvent.formSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements PersonalInfoEvent {
  const factory FormSubmitted() = _$FormSubmittedImpl;
}

/// @nodoc
abstract class _$$FormResetImplCopyWith<$Res> {
  factory _$$FormResetImplCopyWith(
    _$FormResetImpl value,
    $Res Function(_$FormResetImpl) then,
  ) = __$$FormResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormResetImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$FormResetImpl>
    implements _$$FormResetImplCopyWith<$Res> {
  __$$FormResetImplCopyWithImpl(
    _$FormResetImpl _value,
    $Res Function(_$FormResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormResetImpl implements FormReset {
  const _$FormResetImpl();

  @override
  String toString() {
    return 'PersonalInfoEvent.formReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ageGroup) ageGroupChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String employmentStatus) employmentStatusChanged,
    required TResult Function(bool consent) privacyConsentChanged,
    required TResult Function(bool consent) dataProcessingConsentChanged,
    required TResult Function() formSubmitted,
    required TResult Function() formReset,
  }) {
    return formReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ageGroup)? ageGroupChanged,
    TResult? Function(String gender)? genderChanged,
    TResult? Function(String employmentStatus)? employmentStatusChanged,
    TResult? Function(bool consent)? privacyConsentChanged,
    TResult? Function(bool consent)? dataProcessingConsentChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? formReset,
  }) {
    return formReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ageGroup)? ageGroupChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String employmentStatus)? employmentStatusChanged,
    TResult Function(bool consent)? privacyConsentChanged,
    TResult Function(bool consent)? dataProcessingConsentChanged,
    TResult Function()? formSubmitted,
    TResult Function()? formReset,
    required TResult orElse(),
  }) {
    if (formReset != null) {
      return formReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgeGroupChanged value) ageGroupChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmploymentStatusChanged value)
    employmentStatusChanged,
    required TResult Function(PrivacyConsentChanged value)
    privacyConsentChanged,
    required TResult Function(DataProcessingConsentChanged value)
    dataProcessingConsentChanged,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(FormReset value) formReset,
  }) {
    return formReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgeGroupChanged value)? ageGroupChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult? Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult? Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult? Function(FormSubmitted value)? formSubmitted,
    TResult? Function(FormReset value)? formReset,
  }) {
    return formReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgeGroupChanged value)? ageGroupChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmploymentStatusChanged value)? employmentStatusChanged,
    TResult Function(PrivacyConsentChanged value)? privacyConsentChanged,
    TResult Function(DataProcessingConsentChanged value)?
    dataProcessingConsentChanged,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(FormReset value)? formReset,
    required TResult orElse(),
  }) {
    if (formReset != null) {
      return formReset(this);
    }
    return orElse();
  }
}

abstract class FormReset implements PersonalInfoEvent {
  const factory FormReset() = _$FormResetImpl;
}

/// @nodoc
mixin _$PersonalInfoState {
  AgeGroupInput get ageGroup => throw _privateConstructorUsedError;
  GenderInput get gender => throw _privateConstructorUsedError;
  EmploymentStatusInput get employmentStatus =>
      throw _privateConstructorUsedError;
  PrivacyConsentInput get privacyConsent => throw _privateConstructorUsedError;
  bool get dataProcessingConsent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  PersonalInfo? get personalInfo => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalInfoStateCopyWith<PersonalInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoStateCopyWith<$Res> {
  factory $PersonalInfoStateCopyWith(
    PersonalInfoState value,
    $Res Function(PersonalInfoState) then,
  ) = _$PersonalInfoStateCopyWithImpl<$Res, PersonalInfoState>;
  @useResult
  $Res call({
    AgeGroupInput ageGroup,
    GenderInput gender,
    EmploymentStatusInput employmentStatus,
    PrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    PersonalInfo? personalInfo,
    String? errorMessage,
  });

  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res, $Val extends PersonalInfoState>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageGroup = null,
    Object? gender = null,
    Object? employmentStatus = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? personalInfo = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            ageGroup:
                null == ageGroup
                    ? _value.ageGroup
                    : ageGroup // ignore: cast_nullable_to_non_nullable
                        as AgeGroupInput,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as GenderInput,
            employmentStatus:
                null == employmentStatus
                    ? _value.employmentStatus
                    : employmentStatus // ignore: cast_nullable_to_non_nullable
                        as EmploymentStatusInput,
            privacyConsent:
                null == privacyConsent
                    ? _value.privacyConsent
                    : privacyConsent // ignore: cast_nullable_to_non_nullable
                        as PrivacyConsentInput,
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
            personalInfo:
                freezed == personalInfo
                    ? _value.personalInfo
                    : personalInfo // ignore: cast_nullable_to_non_nullable
                        as PersonalInfo?,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res>? get personalInfo {
    if (_value.personalInfo == null) {
      return null;
    }

    return $PersonalInfoCopyWith<$Res>(_value.personalInfo!, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonalInfoStateImplCopyWith<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  factory _$$PersonalInfoStateImplCopyWith(
    _$PersonalInfoStateImpl value,
    $Res Function(_$PersonalInfoStateImpl) then,
  ) = __$$PersonalInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AgeGroupInput ageGroup,
    GenderInput gender,
    EmploymentStatusInput employmentStatus,
    PrivacyConsentInput privacyConsent,
    bool dataProcessingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    PersonalInfo? personalInfo,
    String? errorMessage,
  });

  @override
  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class __$$PersonalInfoStateImplCopyWithImpl<$Res>
    extends _$PersonalInfoStateCopyWithImpl<$Res, _$PersonalInfoStateImpl>
    implements _$$PersonalInfoStateImplCopyWith<$Res> {
  __$$PersonalInfoStateImplCopyWithImpl(
    _$PersonalInfoStateImpl _value,
    $Res Function(_$PersonalInfoStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageGroup = null,
    Object? gender = null,
    Object? employmentStatus = null,
    Object? privacyConsent = null,
    Object? dataProcessingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? personalInfo = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$PersonalInfoStateImpl(
        ageGroup:
            null == ageGroup
                ? _value.ageGroup
                : ageGroup // ignore: cast_nullable_to_non_nullable
                    as AgeGroupInput,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as GenderInput,
        employmentStatus:
            null == employmentStatus
                ? _value.employmentStatus
                : employmentStatus // ignore: cast_nullable_to_non_nullable
                    as EmploymentStatusInput,
        privacyConsent:
            null == privacyConsent
                ? _value.privacyConsent
                : privacyConsent // ignore: cast_nullable_to_non_nullable
                    as PrivacyConsentInput,
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
        personalInfo:
            freezed == personalInfo
                ? _value.personalInfo
                : personalInfo // ignore: cast_nullable_to_non_nullable
                    as PersonalInfo?,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$PersonalInfoStateImpl implements _PersonalInfoState {
  const _$PersonalInfoStateImpl({
    this.ageGroup = const AgeGroupInput.pure(),
    this.gender = const GenderInput.pure(),
    this.employmentStatus = const EmploymentStatusInput.pure(),
    this.privacyConsent = const PrivacyConsentInput.pure(),
    this.dataProcessingConsent = false,
    this.isValid = false,
    this.status = FormzSubmissionStatus.initial,
    this.personalInfo,
    this.errorMessage,
  });

  @override
  @JsonKey()
  final AgeGroupInput ageGroup;
  @override
  @JsonKey()
  final GenderInput gender;
  @override
  @JsonKey()
  final EmploymentStatusInput employmentStatus;
  @override
  @JsonKey()
  final PrivacyConsentInput privacyConsent;
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
  final PersonalInfo? personalInfo;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PersonalInfoState(ageGroup: $ageGroup, gender: $gender, employmentStatus: $employmentStatus, privacyConsent: $privacyConsent, dataProcessingConsent: $dataProcessingConsent, isValid: $isValid, status: $status, personalInfo: $personalInfo, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInfoStateImpl &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.employmentStatus, employmentStatus) ||
                other.employmentStatus == employmentStatus) &&
            (identical(other.privacyConsent, privacyConsent) ||
                other.privacyConsent == privacyConsent) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    ageGroup,
    gender,
    employmentStatus,
    privacyConsent,
    dataProcessingConsent,
    isValid,
    status,
    personalInfo,
    errorMessage,
  );

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInfoStateImplCopyWith<_$PersonalInfoStateImpl> get copyWith =>
      __$$PersonalInfoStateImplCopyWithImpl<_$PersonalInfoStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PersonalInfoState implements PersonalInfoState {
  const factory _PersonalInfoState({
    final AgeGroupInput ageGroup,
    final GenderInput gender,
    final EmploymentStatusInput employmentStatus,
    final PrivacyConsentInput privacyConsent,
    final bool dataProcessingConsent,
    final bool isValid,
    final FormzSubmissionStatus status,
    final PersonalInfo? personalInfo,
    final String? errorMessage,
  }) = _$PersonalInfoStateImpl;

  @override
  AgeGroupInput get ageGroup;
  @override
  GenderInput get gender;
  @override
  EmploymentStatusInput get employmentStatus;
  @override
  PrivacyConsentInput get privacyConsent;
  @override
  bool get dataProcessingConsent;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  PersonalInfo? get personalInfo;
  @override
  String? get errorMessage;

  /// Create a copy of PersonalInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalInfoStateImplCopyWith<_$PersonalInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
