import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_data.freezed.dart';
part 'survey_data.g.dart';

@freezed
class SurveyData with _$SurveyData {
  const factory SurveyData({
    required String id,
    required String title,
    required String description,
    required DateTime dueDate,
    required SurveyStatus status,
    required List<SurveyQuestion> questions,
  }) = _SurveyData;

  factory SurveyData.fromJson(Map<String, dynamic> json) =>
      _$SurveyDataFromJson(json);
}

@freezed
class SurveyQuestion with _$SurveyQuestion {
  const factory SurveyQuestion({
    required String id,
    required String question,
    required QuestionType type,
    required List<String> options,
    String? answer,
  }) = _SurveyQuestion;

  factory SurveyQuestion.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuestionFromJson(json);
}

enum QuestionType {
  multipleChoice,
  rating,
  openEnded
}

enum SurveyStatus {
  pending,
  inProgress,
  completed, available
}