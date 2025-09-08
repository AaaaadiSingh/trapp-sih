// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyDataImpl _$$SurveyDataImplFromJson(Map<String, dynamic> json) =>
    _$SurveyDataImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      status: $enumDecode(_$SurveyStatusEnumMap, json['status']),
      questions:
          (json['questions'] as List<dynamic>)
              .map((e) => SurveyQuestion.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$SurveyDataImplToJson(_$SurveyDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
      'status': _$SurveyStatusEnumMap[instance.status]!,
      'questions': instance.questions,
    };

const _$SurveyStatusEnumMap = {
  SurveyStatus.pending: 'pending',
  SurveyStatus.inProgress: 'inProgress',
  SurveyStatus.completed: 'completed',
  SurveyStatus.available: 'available',
};

_$SurveyQuestionImpl _$$SurveyQuestionImplFromJson(Map<String, dynamic> json) =>
    _$SurveyQuestionImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$SurveyQuestionImplToJson(
  _$SurveyQuestionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'type': _$QuestionTypeEnumMap[instance.type]!,
  'options': instance.options,
  'answer': instance.answer,
};

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multipleChoice',
  QuestionType.rating: 'rating',
  QuestionType.openEnded: 'openEnded',
};
