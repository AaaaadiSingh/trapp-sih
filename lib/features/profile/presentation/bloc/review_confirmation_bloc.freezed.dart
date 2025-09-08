// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewConfirmationEventCopyWith<$Res> {
  factory $ReviewConfirmationEventCopyWith(
    ReviewConfirmationEvent value,
    $Res Function(ReviewConfirmationEvent) then,
  ) = _$ReviewConfirmationEventCopyWithImpl<$Res, ReviewConfirmationEvent>;
}

/// @nodoc
class _$ReviewConfirmationEventCopyWithImpl<
  $Res,
  $Val extends ReviewConfirmationEvent
>
    implements $ReviewConfirmationEventCopyWith<$Res> {
  _$ReviewConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadReviewDataImplCopyWith<$Res> {
  factory _$$LoadReviewDataImplCopyWith(
    _$LoadReviewDataImpl value,
    $Res Function(_$LoadReviewDataImpl) then,
  ) = __$$LoadReviewDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    PersonalInfo personalInfo,
    LocationDemographics locationDemographics,
  });

  $PersonalInfoCopyWith<$Res> get personalInfo;
  $LocationDemographicsCopyWith<$Res> get locationDemographics;
}

/// @nodoc
class __$$LoadReviewDataImplCopyWithImpl<$Res>
    extends _$ReviewConfirmationEventCopyWithImpl<$Res, _$LoadReviewDataImpl>
    implements _$$LoadReviewDataImplCopyWith<$Res> {
  __$$LoadReviewDataImplCopyWithImpl(
    _$LoadReviewDataImpl _value,
    $Res Function(_$LoadReviewDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalInfo = null,
    Object? locationDemographics = null,
  }) {
    return _then(
      _$LoadReviewDataImpl(
        personalInfo:
            null == personalInfo
                ? _value.personalInfo
                : personalInfo // ignore: cast_nullable_to_non_nullable
                    as PersonalInfo,
        locationDemographics:
            null == locationDemographics
                ? _value.locationDemographics
                : locationDemographics // ignore: cast_nullable_to_non_nullable
                    as LocationDemographics,
      ),
    );
  }

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res> get personalInfo {
    return $PersonalInfoCopyWith<$Res>(_value.personalInfo, (value) {
      return _then(_value.copyWith(personalInfo: value));
    });
  }

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDemographicsCopyWith<$Res> get locationDemographics {
    return $LocationDemographicsCopyWith<$Res>(_value.locationDemographics, (
      value,
    ) {
      return _then(_value.copyWith(locationDemographics: value));
    });
  }
}

/// @nodoc

class _$LoadReviewDataImpl implements LoadReviewData {
  const _$LoadReviewDataImpl({
    required this.personalInfo,
    required this.locationDemographics,
  });

  @override
  final PersonalInfo personalInfo;
  @override
  final LocationDemographics locationDemographics;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.loadReviewData(personalInfo: $personalInfo, locationDemographics: $locationDemographics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReviewDataImpl &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.locationDemographics, locationDemographics) ||
                other.locationDemographics == locationDemographics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, personalInfo, locationDemographics);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReviewDataImplCopyWith<_$LoadReviewDataImpl> get copyWith =>
      __$$LoadReviewDataImplCopyWithImpl<_$LoadReviewDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return loadReviewData(personalInfo, locationDemographics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return loadReviewData?.call(personalInfo, locationDemographics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (loadReviewData != null) {
      return loadReviewData(personalInfo, locationDemographics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return loadReviewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return loadReviewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (loadReviewData != null) {
      return loadReviewData(this);
    }
    return orElse();
  }
}

abstract class LoadReviewData implements ReviewConfirmationEvent {
  const factory LoadReviewData({
    required final PersonalInfo personalInfo,
    required final LocationDemographics locationDemographics,
  }) = _$LoadReviewDataImpl;

  PersonalInfo get personalInfo;
  LocationDemographics get locationDemographics;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadReviewDataImplCopyWith<_$LoadReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinalConsentChangedImplCopyWith<$Res> {
  factory _$$FinalConsentChangedImplCopyWith(
    _$FinalConsentChangedImpl value,
    $Res Function(_$FinalConsentChangedImpl) then,
  ) = __$$FinalConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$FinalConsentChangedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<$Res, _$FinalConsentChangedImpl>
    implements _$$FinalConsentChangedImplCopyWith<$Res> {
  __$$FinalConsentChangedImplCopyWithImpl(
    _$FinalConsentChangedImpl _value,
    $Res Function(_$FinalConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$FinalConsentChangedImpl(
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

class _$FinalConsentChangedImpl implements FinalConsentChanged {
  const _$FinalConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.finalConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalConsentChangedImplCopyWith<_$FinalConsentChangedImpl> get copyWith =>
      __$$FinalConsentChangedImplCopyWithImpl<_$FinalConsentChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return finalConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return finalConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (finalConsentChanged != null) {
      return finalConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return finalConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return finalConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (finalConsentChanged != null) {
      return finalConsentChanged(this);
    }
    return orElse();
  }
}

abstract class FinalConsentChanged implements ReviewConfirmationEvent {
  const factory FinalConsentChanged({required final bool consent}) =
      _$FinalConsentChangedImpl;

  bool get consent;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalConsentChangedImplCopyWith<_$FinalConsentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrivacyPolicyChangedImplCopyWith<$Res> {
  factory _$$PrivacyPolicyChangedImplCopyWith(
    _$PrivacyPolicyChangedImpl value,
    $Res Function(_$PrivacyPolicyChangedImpl) then,
  ) = __$$PrivacyPolicyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool accepted});
}

/// @nodoc
class __$$PrivacyPolicyChangedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<$Res, _$PrivacyPolicyChangedImpl>
    implements _$$PrivacyPolicyChangedImplCopyWith<$Res> {
  __$$PrivacyPolicyChangedImplCopyWithImpl(
    _$PrivacyPolicyChangedImpl _value,
    $Res Function(_$PrivacyPolicyChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accepted = null}) {
    return _then(
      _$PrivacyPolicyChangedImpl(
        accepted:
            null == accepted
                ? _value.accepted
                : accepted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PrivacyPolicyChangedImpl implements PrivacyPolicyChanged {
  const _$PrivacyPolicyChangedImpl({required this.accepted});

  @override
  final bool accepted;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.privacyPolicyChanged(accepted: $accepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyPolicyChangedImpl &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accepted);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyPolicyChangedImplCopyWith<_$PrivacyPolicyChangedImpl>
  get copyWith =>
      __$$PrivacyPolicyChangedImplCopyWithImpl<_$PrivacyPolicyChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return privacyPolicyChanged(accepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return privacyPolicyChanged?.call(accepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (privacyPolicyChanged != null) {
      return privacyPolicyChanged(accepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return privacyPolicyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return privacyPolicyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (privacyPolicyChanged != null) {
      return privacyPolicyChanged(this);
    }
    return orElse();
  }
}

abstract class PrivacyPolicyChanged implements ReviewConfirmationEvent {
  const factory PrivacyPolicyChanged({required final bool accepted}) =
      _$PrivacyPolicyChangedImpl;

  bool get accepted;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyPolicyChangedImplCopyWith<_$PrivacyPolicyChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TermsOfServiceChangedImplCopyWith<$Res> {
  factory _$$TermsOfServiceChangedImplCopyWith(
    _$TermsOfServiceChangedImpl value,
    $Res Function(_$TermsOfServiceChangedImpl) then,
  ) = __$$TermsOfServiceChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool accepted});
}

/// @nodoc
class __$$TermsOfServiceChangedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<$Res, _$TermsOfServiceChangedImpl>
    implements _$$TermsOfServiceChangedImplCopyWith<$Res> {
  __$$TermsOfServiceChangedImplCopyWithImpl(
    _$TermsOfServiceChangedImpl _value,
    $Res Function(_$TermsOfServiceChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accepted = null}) {
    return _then(
      _$TermsOfServiceChangedImpl(
        accepted:
            null == accepted
                ? _value.accepted
                : accepted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$TermsOfServiceChangedImpl implements TermsOfServiceChanged {
  const _$TermsOfServiceChangedImpl({required this.accepted});

  @override
  final bool accepted;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.termsOfServiceChanged(accepted: $accepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsOfServiceChangedImpl &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accepted);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsOfServiceChangedImplCopyWith<_$TermsOfServiceChangedImpl>
  get copyWith =>
      __$$TermsOfServiceChangedImplCopyWithImpl<_$TermsOfServiceChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return termsOfServiceChanged(accepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return termsOfServiceChanged?.call(accepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (termsOfServiceChanged != null) {
      return termsOfServiceChanged(accepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return termsOfServiceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return termsOfServiceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (termsOfServiceChanged != null) {
      return termsOfServiceChanged(this);
    }
    return orElse();
  }
}

abstract class TermsOfServiceChanged implements ReviewConfirmationEvent {
  const factory TermsOfServiceChanged({required final bool accepted}) =
      _$TermsOfServiceChangedImpl;

  bool get accepted;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermsOfServiceChangedImplCopyWith<_$TermsOfServiceChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewDataProcessingConsentChangedImplCopyWith<$Res> {
  factory _$$ReviewDataProcessingConsentChangedImplCopyWith(
    _$ReviewDataProcessingConsentChangedImpl value,
    $Res Function(_$ReviewDataProcessingConsentChangedImpl) then,
  ) = __$$ReviewDataProcessingConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$ReviewDataProcessingConsentChangedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<
          $Res,
          _$ReviewDataProcessingConsentChangedImpl
        >
    implements _$$ReviewDataProcessingConsentChangedImplCopyWith<$Res> {
  __$$ReviewDataProcessingConsentChangedImplCopyWithImpl(
    _$ReviewDataProcessingConsentChangedImpl _value,
    $Res Function(_$ReviewDataProcessingConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$ReviewDataProcessingConsentChangedImpl(
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

class _$ReviewDataProcessingConsentChangedImpl
    implements ReviewDataProcessingConsentChanged {
  const _$ReviewDataProcessingConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.reviewDataProcessingConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDataProcessingConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDataProcessingConsentChangedImplCopyWith<
    _$ReviewDataProcessingConsentChangedImpl
  >
  get copyWith => __$$ReviewDataProcessingConsentChangedImplCopyWithImpl<
    _$ReviewDataProcessingConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return reviewDataProcessingConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return reviewDataProcessingConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewDataProcessingConsentChanged != null) {
      return reviewDataProcessingConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return reviewDataProcessingConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return reviewDataProcessingConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewDataProcessingConsentChanged != null) {
      return reviewDataProcessingConsentChanged(this);
    }
    return orElse();
  }
}

abstract class ReviewDataProcessingConsentChanged
    implements ReviewConfirmationEvent {
  const factory ReviewDataProcessingConsentChanged({
    required final bool consent,
  }) = _$ReviewDataProcessingConsentChangedImpl;

  bool get consent;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewDataProcessingConsentChangedImplCopyWith<
    _$ReviewDataProcessingConsentChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarketingConsentChangedImplCopyWith<$Res> {
  factory _$$MarketingConsentChangedImplCopyWith(
    _$MarketingConsentChangedImpl value,
    $Res Function(_$MarketingConsentChangedImpl) then,
  ) = __$$MarketingConsentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool consent});
}

/// @nodoc
class __$$MarketingConsentChangedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<
          $Res,
          _$MarketingConsentChangedImpl
        >
    implements _$$MarketingConsentChangedImplCopyWith<$Res> {
  __$$MarketingConsentChangedImplCopyWithImpl(
    _$MarketingConsentChangedImpl _value,
    $Res Function(_$MarketingConsentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? consent = null}) {
    return _then(
      _$MarketingConsentChangedImpl(
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

class _$MarketingConsentChangedImpl implements MarketingConsentChanged {
  const _$MarketingConsentChangedImpl({required this.consent});

  @override
  final bool consent;

  @override
  String toString() {
    return 'ReviewConfirmationEvent.marketingConsentChanged(consent: $consent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingConsentChangedImpl &&
            (identical(other.consent, consent) || other.consent == consent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, consent);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingConsentChangedImplCopyWith<_$MarketingConsentChangedImpl>
  get copyWith => __$$MarketingConsentChangedImplCopyWithImpl<
    _$MarketingConsentChangedImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return marketingConsentChanged(consent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return marketingConsentChanged?.call(consent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (marketingConsentChanged != null) {
      return marketingConsentChanged(consent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return marketingConsentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return marketingConsentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (marketingConsentChanged != null) {
      return marketingConsentChanged(this);
    }
    return orElse();
  }
}

abstract class MarketingConsentChanged implements ReviewConfirmationEvent {
  const factory MarketingConsentChanged({required final bool consent}) =
      _$MarketingConsentChangedImpl;

  bool get consent;

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketingConsentChangedImplCopyWith<_$MarketingConsentChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewFormSubmittedImplCopyWith<$Res> {
  factory _$$ReviewFormSubmittedImplCopyWith(
    _$ReviewFormSubmittedImpl value,
    $Res Function(_$ReviewFormSubmittedImpl) then,
  ) = __$$ReviewFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewFormSubmittedImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationEventCopyWithImpl<$Res, _$ReviewFormSubmittedImpl>
    implements _$$ReviewFormSubmittedImplCopyWith<$Res> {
  __$$ReviewFormSubmittedImplCopyWithImpl(
    _$ReviewFormSubmittedImpl _value,
    $Res Function(_$ReviewFormSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReviewFormSubmittedImpl implements ReviewFormSubmitted {
  const _$ReviewFormSubmittedImpl();

  @override
  String toString() {
    return 'ReviewConfirmationEvent.reviewFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return reviewFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return reviewFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewFormSubmitted != null) {
      return reviewFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return reviewFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return reviewFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewFormSubmitted != null) {
      return reviewFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class ReviewFormSubmitted implements ReviewConfirmationEvent {
  const factory ReviewFormSubmitted() = _$ReviewFormSubmittedImpl;
}

/// @nodoc
abstract class _$$ReviewFormResetImplCopyWith<$Res> {
  factory _$$ReviewFormResetImplCopyWith(
    _$ReviewFormResetImpl value,
    $Res Function(_$ReviewFormResetImpl) then,
  ) = __$$ReviewFormResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewFormResetImplCopyWithImpl<$Res>
    extends _$ReviewConfirmationEventCopyWithImpl<$Res, _$ReviewFormResetImpl>
    implements _$$ReviewFormResetImplCopyWith<$Res> {
  __$$ReviewFormResetImplCopyWithImpl(
    _$ReviewFormResetImpl _value,
    $Res Function(_$ReviewFormResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReviewFormResetImpl implements ReviewFormReset {
  const _$ReviewFormResetImpl();

  @override
  String toString() {
    return 'ReviewConfirmationEvent.reviewFormReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewFormResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )
    loadReviewData,
    required TResult Function(bool consent) finalConsentChanged,
    required TResult Function(bool accepted) privacyPolicyChanged,
    required TResult Function(bool accepted) termsOfServiceChanged,
    required TResult Function(bool consent) reviewDataProcessingConsentChanged,
    required TResult Function(bool consent) marketingConsentChanged,
    required TResult Function() reviewFormSubmitted,
    required TResult Function() reviewFormReset,
  }) {
    return reviewFormReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult? Function(bool consent)? finalConsentChanged,
    TResult? Function(bool accepted)? privacyPolicyChanged,
    TResult? Function(bool accepted)? termsOfServiceChanged,
    TResult? Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult? Function(bool consent)? marketingConsentChanged,
    TResult? Function()? reviewFormSubmitted,
    TResult? Function()? reviewFormReset,
  }) {
    return reviewFormReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      PersonalInfo personalInfo,
      LocationDemographics locationDemographics,
    )?
    loadReviewData,
    TResult Function(bool consent)? finalConsentChanged,
    TResult Function(bool accepted)? privacyPolicyChanged,
    TResult Function(bool accepted)? termsOfServiceChanged,
    TResult Function(bool consent)? reviewDataProcessingConsentChanged,
    TResult Function(bool consent)? marketingConsentChanged,
    TResult Function()? reviewFormSubmitted,
    TResult Function()? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewFormReset != null) {
      return reviewFormReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReviewData value) loadReviewData,
    required TResult Function(FinalConsentChanged value) finalConsentChanged,
    required TResult Function(PrivacyPolicyChanged value) privacyPolicyChanged,
    required TResult Function(TermsOfServiceChanged value)
    termsOfServiceChanged,
    required TResult Function(ReviewDataProcessingConsentChanged value)
    reviewDataProcessingConsentChanged,
    required TResult Function(MarketingConsentChanged value)
    marketingConsentChanged,
    required TResult Function(ReviewFormSubmitted value) reviewFormSubmitted,
    required TResult Function(ReviewFormReset value) reviewFormReset,
  }) {
    return reviewFormReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReviewData value)? loadReviewData,
    TResult? Function(FinalConsentChanged value)? finalConsentChanged,
    TResult? Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult? Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult? Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult? Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult? Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult? Function(ReviewFormReset value)? reviewFormReset,
  }) {
    return reviewFormReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReviewData value)? loadReviewData,
    TResult Function(FinalConsentChanged value)? finalConsentChanged,
    TResult Function(PrivacyPolicyChanged value)? privacyPolicyChanged,
    TResult Function(TermsOfServiceChanged value)? termsOfServiceChanged,
    TResult Function(ReviewDataProcessingConsentChanged value)?
    reviewDataProcessingConsentChanged,
    TResult Function(MarketingConsentChanged value)? marketingConsentChanged,
    TResult Function(ReviewFormSubmitted value)? reviewFormSubmitted,
    TResult Function(ReviewFormReset value)? reviewFormReset,
    required TResult orElse(),
  }) {
    if (reviewFormReset != null) {
      return reviewFormReset(this);
    }
    return orElse();
  }
}

abstract class ReviewFormReset implements ReviewConfirmationEvent {
  const factory ReviewFormReset() = _$ReviewFormResetImpl;
}

/// @nodoc
mixin _$ReviewConfirmationState {
  FinalConsentInput get finalConsent => throw _privateConstructorUsedError;
  PrivacyPolicyInput get privacyPolicy => throw _privateConstructorUsedError;
  TermsOfServiceInput get termsOfService => throw _privateConstructorUsedError;
  ReviewDataProcessingConsentInput get dataProcessingConsent =>
      throw _privateConstructorUsedError;
  MarketingConsentInput get marketingConsent =>
      throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isDataLoaded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  PersonalInfo? get personalInfo => throw _privateConstructorUsedError;
  LocationDemographics? get locationDemographics =>
      throw _privateConstructorUsedError;
  DataSummary? get dataSummary => throw _privateConstructorUsedError;
  ReviewConfirmation? get reviewConfirmation =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewConfirmationStateCopyWith<ReviewConfirmationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewConfirmationStateCopyWith<$Res> {
  factory $ReviewConfirmationStateCopyWith(
    ReviewConfirmationState value,
    $Res Function(ReviewConfirmationState) then,
  ) = _$ReviewConfirmationStateCopyWithImpl<$Res, ReviewConfirmationState>;
  @useResult
  $Res call({
    FinalConsentInput finalConsent,
    PrivacyPolicyInput privacyPolicy,
    TermsOfServiceInput termsOfService,
    ReviewDataProcessingConsentInput dataProcessingConsent,
    MarketingConsentInput marketingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    bool isDataLoaded,
    String? errorMessage,
    PersonalInfo? personalInfo,
    LocationDemographics? locationDemographics,
    DataSummary? dataSummary,
    ReviewConfirmation? reviewConfirmation,
  });

  $PersonalInfoCopyWith<$Res>? get personalInfo;
  $LocationDemographicsCopyWith<$Res>? get locationDemographics;
  $DataSummaryCopyWith<$Res>? get dataSummary;
  $ReviewConfirmationCopyWith<$Res>? get reviewConfirmation;
}

/// @nodoc
class _$ReviewConfirmationStateCopyWithImpl<
  $Res,
  $Val extends ReviewConfirmationState
>
    implements $ReviewConfirmationStateCopyWith<$Res> {
  _$ReviewConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalConsent = null,
    Object? privacyPolicy = null,
    Object? termsOfService = null,
    Object? dataProcessingConsent = null,
    Object? marketingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? isDataLoaded = null,
    Object? errorMessage = freezed,
    Object? personalInfo = freezed,
    Object? locationDemographics = freezed,
    Object? dataSummary = freezed,
    Object? reviewConfirmation = freezed,
  }) {
    return _then(
      _value.copyWith(
            finalConsent:
                null == finalConsent
                    ? _value.finalConsent
                    : finalConsent // ignore: cast_nullable_to_non_nullable
                        as FinalConsentInput,
            privacyPolicy:
                null == privacyPolicy
                    ? _value.privacyPolicy
                    : privacyPolicy // ignore: cast_nullable_to_non_nullable
                        as PrivacyPolicyInput,
            termsOfService:
                null == termsOfService
                    ? _value.termsOfService
                    : termsOfService // ignore: cast_nullable_to_non_nullable
                        as TermsOfServiceInput,
            dataProcessingConsent:
                null == dataProcessingConsent
                    ? _value.dataProcessingConsent
                    : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                        as ReviewDataProcessingConsentInput,
            marketingConsent:
                null == marketingConsent
                    ? _value.marketingConsent
                    : marketingConsent // ignore: cast_nullable_to_non_nullable
                        as MarketingConsentInput,
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
            isDataLoaded:
                null == isDataLoaded
                    ? _value.isDataLoaded
                    : isDataLoaded // ignore: cast_nullable_to_non_nullable
                        as bool,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            personalInfo:
                freezed == personalInfo
                    ? _value.personalInfo
                    : personalInfo // ignore: cast_nullable_to_non_nullable
                        as PersonalInfo?,
            locationDemographics:
                freezed == locationDemographics
                    ? _value.locationDemographics
                    : locationDemographics // ignore: cast_nullable_to_non_nullable
                        as LocationDemographics?,
            dataSummary:
                freezed == dataSummary
                    ? _value.dataSummary
                    : dataSummary // ignore: cast_nullable_to_non_nullable
                        as DataSummary?,
            reviewConfirmation:
                freezed == reviewConfirmation
                    ? _value.reviewConfirmation
                    : reviewConfirmation // ignore: cast_nullable_to_non_nullable
                        as ReviewConfirmation?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReviewConfirmationState
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

  /// Create a copy of ReviewConfirmationState
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

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataSummaryCopyWith<$Res>? get dataSummary {
    if (_value.dataSummary == null) {
      return null;
    }

    return $DataSummaryCopyWith<$Res>(_value.dataSummary!, (value) {
      return _then(_value.copyWith(dataSummary: value) as $Val);
    });
  }

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewConfirmationCopyWith<$Res>? get reviewConfirmation {
    if (_value.reviewConfirmation == null) {
      return null;
    }

    return $ReviewConfirmationCopyWith<$Res>(_value.reviewConfirmation!, (
      value,
    ) {
      return _then(_value.copyWith(reviewConfirmation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewConfirmationStateImplCopyWith<$Res>
    implements $ReviewConfirmationStateCopyWith<$Res> {
  factory _$$ReviewConfirmationStateImplCopyWith(
    _$ReviewConfirmationStateImpl value,
    $Res Function(_$ReviewConfirmationStateImpl) then,
  ) = __$$ReviewConfirmationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FinalConsentInput finalConsent,
    PrivacyPolicyInput privacyPolicy,
    TermsOfServiceInput termsOfService,
    ReviewDataProcessingConsentInput dataProcessingConsent,
    MarketingConsentInput marketingConsent,
    bool isValid,
    FormzSubmissionStatus status,
    bool isDataLoaded,
    String? errorMessage,
    PersonalInfo? personalInfo,
    LocationDemographics? locationDemographics,
    DataSummary? dataSummary,
    ReviewConfirmation? reviewConfirmation,
  });

  @override
  $PersonalInfoCopyWith<$Res>? get personalInfo;
  @override
  $LocationDemographicsCopyWith<$Res>? get locationDemographics;
  @override
  $DataSummaryCopyWith<$Res>? get dataSummary;
  @override
  $ReviewConfirmationCopyWith<$Res>? get reviewConfirmation;
}

/// @nodoc
class __$$ReviewConfirmationStateImplCopyWithImpl<$Res>
    extends
        _$ReviewConfirmationStateCopyWithImpl<
          $Res,
          _$ReviewConfirmationStateImpl
        >
    implements _$$ReviewConfirmationStateImplCopyWith<$Res> {
  __$$ReviewConfirmationStateImplCopyWithImpl(
    _$ReviewConfirmationStateImpl _value,
    $Res Function(_$ReviewConfirmationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalConsent = null,
    Object? privacyPolicy = null,
    Object? termsOfService = null,
    Object? dataProcessingConsent = null,
    Object? marketingConsent = null,
    Object? isValid = null,
    Object? status = null,
    Object? isDataLoaded = null,
    Object? errorMessage = freezed,
    Object? personalInfo = freezed,
    Object? locationDemographics = freezed,
    Object? dataSummary = freezed,
    Object? reviewConfirmation = freezed,
  }) {
    return _then(
      _$ReviewConfirmationStateImpl(
        finalConsent:
            null == finalConsent
                ? _value.finalConsent
                : finalConsent // ignore: cast_nullable_to_non_nullable
                    as FinalConsentInput,
        privacyPolicy:
            null == privacyPolicy
                ? _value.privacyPolicy
                : privacyPolicy // ignore: cast_nullable_to_non_nullable
                    as PrivacyPolicyInput,
        termsOfService:
            null == termsOfService
                ? _value.termsOfService
                : termsOfService // ignore: cast_nullable_to_non_nullable
                    as TermsOfServiceInput,
        dataProcessingConsent:
            null == dataProcessingConsent
                ? _value.dataProcessingConsent
                : dataProcessingConsent // ignore: cast_nullable_to_non_nullable
                    as ReviewDataProcessingConsentInput,
        marketingConsent:
            null == marketingConsent
                ? _value.marketingConsent
                : marketingConsent // ignore: cast_nullable_to_non_nullable
                    as MarketingConsentInput,
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
        isDataLoaded:
            null == isDataLoaded
                ? _value.isDataLoaded
                : isDataLoaded // ignore: cast_nullable_to_non_nullable
                    as bool,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        personalInfo:
            freezed == personalInfo
                ? _value.personalInfo
                : personalInfo // ignore: cast_nullable_to_non_nullable
                    as PersonalInfo?,
        locationDemographics:
            freezed == locationDemographics
                ? _value.locationDemographics
                : locationDemographics // ignore: cast_nullable_to_non_nullable
                    as LocationDemographics?,
        dataSummary:
            freezed == dataSummary
                ? _value.dataSummary
                : dataSummary // ignore: cast_nullable_to_non_nullable
                    as DataSummary?,
        reviewConfirmation:
            freezed == reviewConfirmation
                ? _value.reviewConfirmation
                : reviewConfirmation // ignore: cast_nullable_to_non_nullable
                    as ReviewConfirmation?,
      ),
    );
  }
}

/// @nodoc

class _$ReviewConfirmationStateImpl implements _ReviewConfirmationState {
  const _$ReviewConfirmationStateImpl({
    this.finalConsent = const FinalConsentInput.pure(),
    this.privacyPolicy = const PrivacyPolicyInput.pure(),
    this.termsOfService = const TermsOfServiceInput.pure(),
    this.dataProcessingConsent = const ReviewDataProcessingConsentInput.pure(),
    this.marketingConsent = const MarketingConsentInput.pure(),
    this.isValid = false,
    this.status = FormzSubmissionStatus.initial,
    this.isDataLoaded = false,
    this.errorMessage,
    this.personalInfo,
    this.locationDemographics,
    this.dataSummary,
    this.reviewConfirmation,
  });

  @override
  @JsonKey()
  final FinalConsentInput finalConsent;
  @override
  @JsonKey()
  final PrivacyPolicyInput privacyPolicy;
  @override
  @JsonKey()
  final TermsOfServiceInput termsOfService;
  @override
  @JsonKey()
  final ReviewDataProcessingConsentInput dataProcessingConsent;
  @override
  @JsonKey()
  final MarketingConsentInput marketingConsent;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isDataLoaded;
  @override
  final String? errorMessage;
  @override
  final PersonalInfo? personalInfo;
  @override
  final LocationDemographics? locationDemographics;
  @override
  final DataSummary? dataSummary;
  @override
  final ReviewConfirmation? reviewConfirmation;

  @override
  String toString() {
    return 'ReviewConfirmationState(finalConsent: $finalConsent, privacyPolicy: $privacyPolicy, termsOfService: $termsOfService, dataProcessingConsent: $dataProcessingConsent, marketingConsent: $marketingConsent, isValid: $isValid, status: $status, isDataLoaded: $isDataLoaded, errorMessage: $errorMessage, personalInfo: $personalInfo, locationDemographics: $locationDemographics, dataSummary: $dataSummary, reviewConfirmation: $reviewConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewConfirmationStateImpl &&
            (identical(other.finalConsent, finalConsent) ||
                other.finalConsent == finalConsent) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy) &&
            (identical(other.termsOfService, termsOfService) ||
                other.termsOfService == termsOfService) &&
            (identical(other.dataProcessingConsent, dataProcessingConsent) ||
                other.dataProcessingConsent == dataProcessingConsent) &&
            (identical(other.marketingConsent, marketingConsent) ||
                other.marketingConsent == marketingConsent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDataLoaded, isDataLoaded) ||
                other.isDataLoaded == isDataLoaded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.locationDemographics, locationDemographics) ||
                other.locationDemographics == locationDemographics) &&
            (identical(other.dataSummary, dataSummary) ||
                other.dataSummary == dataSummary) &&
            (identical(other.reviewConfirmation, reviewConfirmation) ||
                other.reviewConfirmation == reviewConfirmation));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    finalConsent,
    privacyPolicy,
    termsOfService,
    dataProcessingConsent,
    marketingConsent,
    isValid,
    status,
    isDataLoaded,
    errorMessage,
    personalInfo,
    locationDemographics,
    dataSummary,
    reviewConfirmation,
  );

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewConfirmationStateImplCopyWith<_$ReviewConfirmationStateImpl>
  get copyWith => __$$ReviewConfirmationStateImplCopyWithImpl<
    _$ReviewConfirmationStateImpl
  >(this, _$identity);
}

abstract class _ReviewConfirmationState implements ReviewConfirmationState {
  const factory _ReviewConfirmationState({
    final FinalConsentInput finalConsent,
    final PrivacyPolicyInput privacyPolicy,
    final TermsOfServiceInput termsOfService,
    final ReviewDataProcessingConsentInput dataProcessingConsent,
    final MarketingConsentInput marketingConsent,
    final bool isValid,
    final FormzSubmissionStatus status,
    final bool isDataLoaded,
    final String? errorMessage,
    final PersonalInfo? personalInfo,
    final LocationDemographics? locationDemographics,
    final DataSummary? dataSummary,
    final ReviewConfirmation? reviewConfirmation,
  }) = _$ReviewConfirmationStateImpl;

  @override
  FinalConsentInput get finalConsent;
  @override
  PrivacyPolicyInput get privacyPolicy;
  @override
  TermsOfServiceInput get termsOfService;
  @override
  ReviewDataProcessingConsentInput get dataProcessingConsent;
  @override
  MarketingConsentInput get marketingConsent;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isDataLoaded;
  @override
  String? get errorMessage;
  @override
  PersonalInfo? get personalInfo;
  @override
  LocationDemographics? get locationDemographics;
  @override
  DataSummary? get dataSummary;
  @override
  ReviewConfirmation? get reviewConfirmation;

  /// Create a copy of ReviewConfirmationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewConfirmationStateImplCopyWith<_$ReviewConfirmationStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
