// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSurveys,
    required TResult Function(String surveyId, String questionId, String answer)
    answerQuestion,
    required TResult Function(String surveyId) submitSurvey,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSurveys,
    TResult? Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult? Function(String surveyId)? submitSurvey,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSurveys,
    TResult Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult Function(String surveyId)? submitSurvey,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSurveys value) loadSurveys,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(SubmitSurvey value) submitSurvey,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSurveys value)? loadSurveys,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(SubmitSurvey value)? submitSurvey,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSurveys value)? loadSurveys,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(SubmitSurvey value)? submitSurvey,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEventCopyWith<$Res> {
  factory $SurveyEventCopyWith(
    SurveyEvent value,
    $Res Function(SurveyEvent) then,
  ) = _$SurveyEventCopyWithImpl<$Res, SurveyEvent>;
}

/// @nodoc
class _$SurveyEventCopyWithImpl<$Res, $Val extends SurveyEvent>
    implements $SurveyEventCopyWith<$Res> {
  _$SurveyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadSurveysImplCopyWith<$Res> {
  factory _$$LoadSurveysImplCopyWith(
    _$LoadSurveysImpl value,
    $Res Function(_$LoadSurveysImpl) then,
  ) = __$$LoadSurveysImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSurveysImplCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res, _$LoadSurveysImpl>
    implements _$$LoadSurveysImplCopyWith<$Res> {
  __$$LoadSurveysImplCopyWithImpl(
    _$LoadSurveysImpl _value,
    $Res Function(_$LoadSurveysImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSurveysImpl implements LoadSurveys {
  const _$LoadSurveysImpl();

  @override
  String toString() {
    return 'SurveyEvent.loadSurveys()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSurveysImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSurveys,
    required TResult Function(String surveyId, String questionId, String answer)
    answerQuestion,
    required TResult Function(String surveyId) submitSurvey,
  }) {
    return loadSurveys();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSurveys,
    TResult? Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult? Function(String surveyId)? submitSurvey,
  }) {
    return loadSurveys?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSurveys,
    TResult Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult Function(String surveyId)? submitSurvey,
    required TResult orElse(),
  }) {
    if (loadSurveys != null) {
      return loadSurveys();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSurveys value) loadSurveys,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(SubmitSurvey value) submitSurvey,
  }) {
    return loadSurveys(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSurveys value)? loadSurveys,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(SubmitSurvey value)? submitSurvey,
  }) {
    return loadSurveys?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSurveys value)? loadSurveys,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(SubmitSurvey value)? submitSurvey,
    required TResult orElse(),
  }) {
    if (loadSurveys != null) {
      return loadSurveys(this);
    }
    return orElse();
  }
}

abstract class LoadSurveys implements SurveyEvent {
  const factory LoadSurveys() = _$LoadSurveysImpl;
}

/// @nodoc
abstract class _$$AnswerQuestionImplCopyWith<$Res> {
  factory _$$AnswerQuestionImplCopyWith(
    _$AnswerQuestionImpl value,
    $Res Function(_$AnswerQuestionImpl) then,
  ) = __$$AnswerQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surveyId, String questionId, String answer});
}

/// @nodoc
class __$$AnswerQuestionImplCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res, _$AnswerQuestionImpl>
    implements _$$AnswerQuestionImplCopyWith<$Res> {
  __$$AnswerQuestionImplCopyWithImpl(
    _$AnswerQuestionImpl _value,
    $Res Function(_$AnswerQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
    Object? questionId = null,
    Object? answer = null,
  }) {
    return _then(
      _$AnswerQuestionImpl(
        surveyId:
            null == surveyId
                ? _value.surveyId
                : surveyId // ignore: cast_nullable_to_non_nullable
                    as String,
        questionId:
            null == questionId
                ? _value.questionId
                : questionId // ignore: cast_nullable_to_non_nullable
                    as String,
        answer:
            null == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$AnswerQuestionImpl implements AnswerQuestion {
  const _$AnswerQuestionImpl({
    required this.surveyId,
    required this.questionId,
    required this.answer,
  });

  @override
  final String surveyId;
  @override
  final String questionId;
  @override
  final String answer;

  @override
  String toString() {
    return 'SurveyEvent.answerQuestion(surveyId: $surveyId, questionId: $questionId, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerQuestionImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surveyId, questionId, answer);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      __$$AnswerQuestionImplCopyWithImpl<_$AnswerQuestionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSurveys,
    required TResult Function(String surveyId, String questionId, String answer)
    answerQuestion,
    required TResult Function(String surveyId) submitSurvey,
  }) {
    return answerQuestion(surveyId, questionId, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSurveys,
    TResult? Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult? Function(String surveyId)? submitSurvey,
  }) {
    return answerQuestion?.call(surveyId, questionId, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSurveys,
    TResult Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult Function(String surveyId)? submitSurvey,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(surveyId, questionId, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSurveys value) loadSurveys,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(SubmitSurvey value) submitSurvey,
  }) {
    return answerQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSurveys value)? loadSurveys,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(SubmitSurvey value)? submitSurvey,
  }) {
    return answerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSurveys value)? loadSurveys,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(SubmitSurvey value)? submitSurvey,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(this);
    }
    return orElse();
  }
}

abstract class AnswerQuestion implements SurveyEvent {
  const factory AnswerQuestion({
    required final String surveyId,
    required final String questionId,
    required final String answer,
  }) = _$AnswerQuestionImpl;

  String get surveyId;
  String get questionId;
  String get answer;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSurveyImplCopyWith<$Res> {
  factory _$$SubmitSurveyImplCopyWith(
    _$SubmitSurveyImpl value,
    $Res Function(_$SubmitSurveyImpl) then,
  ) = __$$SubmitSurveyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surveyId});
}

/// @nodoc
class __$$SubmitSurveyImplCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res, _$SubmitSurveyImpl>
    implements _$$SubmitSurveyImplCopyWith<$Res> {
  __$$SubmitSurveyImplCopyWithImpl(
    _$SubmitSurveyImpl _value,
    $Res Function(_$SubmitSurveyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? surveyId = null}) {
    return _then(
      _$SubmitSurveyImpl(
        null == surveyId
            ? _value.surveyId
            : surveyId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitSurveyImpl implements SubmitSurvey {
  const _$SubmitSurveyImpl(this.surveyId);

  @override
  final String surveyId;

  @override
  String toString() {
    return 'SurveyEvent.submitSurvey(surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSurveyImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surveyId);

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSurveyImplCopyWith<_$SubmitSurveyImpl> get copyWith =>
      __$$SubmitSurveyImplCopyWithImpl<_$SubmitSurveyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSurveys,
    required TResult Function(String surveyId, String questionId, String answer)
    answerQuestion,
    required TResult Function(String surveyId) submitSurvey,
  }) {
    return submitSurvey(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSurveys,
    TResult? Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult? Function(String surveyId)? submitSurvey,
  }) {
    return submitSurvey?.call(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSurveys,
    TResult Function(String surveyId, String questionId, String answer)?
    answerQuestion,
    TResult Function(String surveyId)? submitSurvey,
    required TResult orElse(),
  }) {
    if (submitSurvey != null) {
      return submitSurvey(surveyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSurveys value) loadSurveys,
    required TResult Function(AnswerQuestion value) answerQuestion,
    required TResult Function(SubmitSurvey value) submitSurvey,
  }) {
    return submitSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSurveys value)? loadSurveys,
    TResult? Function(AnswerQuestion value)? answerQuestion,
    TResult? Function(SubmitSurvey value)? submitSurvey,
  }) {
    return submitSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSurveys value)? loadSurveys,
    TResult Function(AnswerQuestion value)? answerQuestion,
    TResult Function(SubmitSurvey value)? submitSurvey,
    required TResult orElse(),
  }) {
    if (submitSurvey != null) {
      return submitSurvey(this);
    }
    return orElse();
  }
}

abstract class SubmitSurvey implements SurveyEvent {
  const factory SubmitSurvey(final String surveyId) = _$SubmitSurveyImpl;

  String get surveyId;

  /// Create a copy of SurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSurveyImplCopyWith<_$SubmitSurveyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurveyState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  List<SurveyData>? get surveys => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
    SurveyState value,
    $Res Function(SurveyState) then,
  ) = _$SurveyStateCopyWithImpl<$Res, SurveyState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isSubmitting,
    List<SurveyData>? surveys,
    String? error,
    String? successMessage,
  });
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res, $Val extends SurveyState>
    implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? surveys = freezed,
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
            surveys:
                freezed == surveys
                    ? _value.surveys
                    : surveys // ignore: cast_nullable_to_non_nullable
                        as List<SurveyData>?,
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
abstract class _$$SurveyStateImplCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$$SurveyStateImplCopyWith(
    _$SurveyStateImpl value,
    $Res Function(_$SurveyStateImpl) then,
  ) = __$$SurveyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isSubmitting,
    List<SurveyData>? surveys,
    String? error,
    String? successMessage,
  });
}

/// @nodoc
class __$$SurveyStateImplCopyWithImpl<$Res>
    extends _$SurveyStateCopyWithImpl<$Res, _$SurveyStateImpl>
    implements _$$SurveyStateImplCopyWith<$Res> {
  __$$SurveyStateImplCopyWithImpl(
    _$SurveyStateImpl _value,
    $Res Function(_$SurveyStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSubmitting = null,
    Object? surveys = freezed,
    Object? error = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(
      _$SurveyStateImpl(
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
        surveys:
            freezed == surveys
                ? _value._surveys
                : surveys // ignore: cast_nullable_to_non_nullable
                    as List<SurveyData>?,
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

class _$SurveyStateImpl implements _SurveyState {
  const _$SurveyStateImpl({
    this.isLoading = false,
    this.isSubmitting = false,
    final List<SurveyData>? surveys,
    this.error,
    this.successMessage,
  }) : _surveys = surveys;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSubmitting;
  final List<SurveyData>? _surveys;
  @override
  List<SurveyData>? get surveys {
    final value = _surveys;
    if (value == null) return null;
    if (_surveys is EqualUnmodifiableListView) return _surveys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'SurveyState(isLoading: $isLoading, isSubmitting: $isSubmitting, surveys: $surveys, error: $error, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality().equals(other._surveys, _surveys) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isSubmitting,
    const DeepCollectionEquality().hash(_surveys),
    error,
    successMessage,
  );

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyStateImplCopyWith<_$SurveyStateImpl> get copyWith =>
      __$$SurveyStateImplCopyWithImpl<_$SurveyStateImpl>(this, _$identity);
}

abstract class _SurveyState implements SurveyState {
  const factory _SurveyState({
    final bool isLoading,
    final bool isSubmitting,
    final List<SurveyData>? surveys,
    final String? error,
    final String? successMessage,
  }) = _$SurveyStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSubmitting;
  @override
  List<SurveyData>? get surveys;
  @override
  String? get error;
  @override
  String? get successMessage;

  /// Create a copy of SurveyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyStateImplCopyWith<_$SurveyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
