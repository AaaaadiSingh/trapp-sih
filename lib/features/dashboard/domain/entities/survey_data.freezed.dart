// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SurveyData _$SurveyDataFromJson(Map<String, dynamic> json) {
  return _SurveyData.fromJson(json);
}

/// @nodoc
mixin _$SurveyData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  SurveyStatus get status => throw _privateConstructorUsedError;
  List<SurveyQuestion> get questions => throw _privateConstructorUsedError;

  /// Serializes this SurveyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyDataCopyWith<SurveyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDataCopyWith<$Res> {
  factory $SurveyDataCopyWith(
    SurveyData value,
    $Res Function(SurveyData) then,
  ) = _$SurveyDataCopyWithImpl<$Res, SurveyData>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    DateTime dueDate,
    SurveyStatus status,
    List<SurveyQuestion> questions,
  });
}

/// @nodoc
class _$SurveyDataCopyWithImpl<$Res, $Val extends SurveyData>
    implements $SurveyDataCopyWith<$Res> {
  _$SurveyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? status = null,
    Object? questions = null,
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
            dueDate:
                null == dueDate
                    ? _value.dueDate
                    : dueDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as SurveyStatus,
            questions:
                null == questions
                    ? _value.questions
                    : questions // ignore: cast_nullable_to_non_nullable
                        as List<SurveyQuestion>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SurveyDataImplCopyWith<$Res>
    implements $SurveyDataCopyWith<$Res> {
  factory _$$SurveyDataImplCopyWith(
    _$SurveyDataImpl value,
    $Res Function(_$SurveyDataImpl) then,
  ) = __$$SurveyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    DateTime dueDate,
    SurveyStatus status,
    List<SurveyQuestion> questions,
  });
}

/// @nodoc
class __$$SurveyDataImplCopyWithImpl<$Res>
    extends _$SurveyDataCopyWithImpl<$Res, _$SurveyDataImpl>
    implements _$$SurveyDataImplCopyWith<$Res> {
  __$$SurveyDataImplCopyWithImpl(
    _$SurveyDataImpl _value,
    $Res Function(_$SurveyDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? status = null,
    Object? questions = null,
  }) {
    return _then(
      _$SurveyDataImpl(
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
        dueDate:
            null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as SurveyStatus,
        questions:
            null == questions
                ? _value._questions
                : questions // ignore: cast_nullable_to_non_nullable
                    as List<SurveyQuestion>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyDataImpl implements _SurveyData {
  const _$SurveyDataImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.status,
    required final List<SurveyQuestion> questions,
  }) : _questions = questions;

  factory _$SurveyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyDataImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dueDate;
  @override
  final SurveyStatus status;
  final List<SurveyQuestion> _questions;
  @override
  List<SurveyQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'SurveyData(id: $id, title: $title, description: $description, dueDate: $dueDate, status: $status, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._questions,
              _questions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    dueDate,
    status,
    const DeepCollectionEquality().hash(_questions),
  );

  /// Create a copy of SurveyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyDataImplCopyWith<_$SurveyDataImpl> get copyWith =>
      __$$SurveyDataImplCopyWithImpl<_$SurveyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyDataImplToJson(this);
  }
}

abstract class _SurveyData implements SurveyData {
  const factory _SurveyData({
    required final String id,
    required final String title,
    required final String description,
    required final DateTime dueDate,
    required final SurveyStatus status,
    required final List<SurveyQuestion> questions,
  }) = _$SurveyDataImpl;

  factory _SurveyData.fromJson(Map<String, dynamic> json) =
      _$SurveyDataImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get dueDate;
  @override
  SurveyStatus get status;
  @override
  List<SurveyQuestion> get questions;

  /// Create a copy of SurveyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyDataImplCopyWith<_$SurveyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyQuestion _$SurveyQuestionFromJson(Map<String, dynamic> json) {
  return _SurveyQuestion.fromJson(json);
}

/// @nodoc
mixin _$SurveyQuestion {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  /// Serializes this SurveyQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveyQuestionCopyWith<SurveyQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyQuestionCopyWith<$Res> {
  factory $SurveyQuestionCopyWith(
    SurveyQuestion value,
    $Res Function(SurveyQuestion) then,
  ) = _$SurveyQuestionCopyWithImpl<$Res, SurveyQuestion>;
  @useResult
  $Res call({
    String id,
    String question,
    QuestionType type,
    List<String> options,
    String? answer,
  });
}

/// @nodoc
class _$SurveyQuestionCopyWithImpl<$Res, $Val extends SurveyQuestion>
    implements $SurveyQuestionCopyWith<$Res> {
  _$SurveyQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? options = null,
    Object? answer = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            question:
                null == question
                    ? _value.question
                    : question // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as QuestionType,
            options:
                null == options
                    ? _value.options
                    : options // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            answer:
                freezed == answer
                    ? _value.answer
                    : answer // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SurveyQuestionImplCopyWith<$Res>
    implements $SurveyQuestionCopyWith<$Res> {
  factory _$$SurveyQuestionImplCopyWith(
    _$SurveyQuestionImpl value,
    $Res Function(_$SurveyQuestionImpl) then,
  ) = __$$SurveyQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String question,
    QuestionType type,
    List<String> options,
    String? answer,
  });
}

/// @nodoc
class __$$SurveyQuestionImplCopyWithImpl<$Res>
    extends _$SurveyQuestionCopyWithImpl<$Res, _$SurveyQuestionImpl>
    implements _$$SurveyQuestionImplCopyWith<$Res> {
  __$$SurveyQuestionImplCopyWithImpl(
    _$SurveyQuestionImpl _value,
    $Res Function(_$SurveyQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurveyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? options = null,
    Object? answer = freezed,
  }) {
    return _then(
      _$SurveyQuestionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        question:
            null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as QuestionType,
        options:
            null == options
                ? _value._options
                : options // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        answer:
            freezed == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyQuestionImpl implements _SurveyQuestion {
  const _$SurveyQuestionImpl({
    required this.id,
    required this.question,
    required this.type,
    required final List<String> options,
    this.answer,
  }) : _options = options;

  factory _$SurveyQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final QuestionType type;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String? answer;

  @override
  String toString() {
    return 'SurveyQuestion(id: $id, question: $question, type: $type, options: $options, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    question,
    type,
    const DeepCollectionEquality().hash(_options),
    answer,
  );

  /// Create a copy of SurveyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyQuestionImplCopyWith<_$SurveyQuestionImpl> get copyWith =>
      __$$SurveyQuestionImplCopyWithImpl<_$SurveyQuestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyQuestionImplToJson(this);
  }
}

abstract class _SurveyQuestion implements SurveyQuestion {
  const factory _SurveyQuestion({
    required final String id,
    required final String question,
    required final QuestionType type,
    required final List<String> options,
    final String? answer,
  }) = _$SurveyQuestionImpl;

  factory _SurveyQuestion.fromJson(Map<String, dynamic> json) =
      _$SurveyQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  QuestionType get type;
  @override
  List<String> get options;
  @override
  String? get answer;

  /// Create a copy of SurveyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveyQuestionImplCopyWith<_$SurveyQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
