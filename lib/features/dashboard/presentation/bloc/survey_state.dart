part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    List<SurveyData>? surveys,
    String? error,
    String? successMessage,
  }) = _SurveyState;
}