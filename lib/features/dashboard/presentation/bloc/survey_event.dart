part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.loadSurveys() = LoadSurveys;
  const factory SurveyEvent.answerQuestion({
    required String surveyId,
    required String questionId,
    required String answer,
  }) = AnswerQuestion;
  const factory SurveyEvent.submitSurvey(String surveyId) = SubmitSurvey;
}