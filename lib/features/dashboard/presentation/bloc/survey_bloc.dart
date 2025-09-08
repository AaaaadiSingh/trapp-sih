import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/survey_data.dart';

part 'survey_bloc.freezed.dart';
part 'survey_event.dart';
part 'survey_state.dart';

@injectable
class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  SurveyBloc() : super(const SurveyState()) {
    on<LoadSurveys>(_onLoadSurveys);
    on<AnswerQuestion>(_onAnswerQuestion);
    on<SubmitSurvey>(_onSubmitSurvey);
  }

  void _onLoadSurveys(LoadSurveys event, Emitter<SurveyState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock data
      final surveys = [
        SurveyData(
          id: '1',
          title: 'Travel Experience Survey',
          description: 'Help us improve your travel experience',
          dueDate: DateTime.now().add(const Duration(days: 7)),
          status: SurveyStatus.pending,
          questions: [
            SurveyQuestion(
              id: 'q1',
              question: 'How satisfied are you with your commute?',
              type: QuestionType.rating,
              options: ['1', '2', '3', '4', '5'],
            ),
            SurveyQuestion(
              id: 'q2',
              question: 'What is your preferred mode of transport?',
              type: QuestionType.multipleChoice,
              options: ['Car', 'Bus', 'Train', 'Bicycle', 'Walking'],
            ),
            SurveyQuestion(
              id: 'q3',
              question: 'Any suggestions to improve your commute?',
              type: QuestionType.openEnded,
              options: [],
            ),
          ],
        ),
      ];

      emit(state.copyWith(
        isLoading: false,
        surveys: surveys,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  void _onAnswerQuestion(AnswerQuestion event, Emitter<SurveyState> emit) {
    if (state.surveys == null) return;

    final updatedSurveys = state.surveys!.map((survey) {
      if (survey.id != event.surveyId) return survey;

      final updatedQuestions = survey.questions.map((question) {
        if (question.id != event.questionId) return question;
        return question.copyWith(answer: event.answer);
      }).toList();

      return survey.copyWith(
        questions: updatedQuestions,
        status: SurveyStatus.inProgress,
      );
    }).toList();

    emit(state.copyWith(surveys: updatedSurveys));
  }

  void _onSubmitSurvey(SubmitSurvey event, Emitter<SurveyState> emit) async {
    if (state.surveys == null) return;

    emit(state.copyWith(isSubmitting: true, error: null));

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedSurveys = state.surveys!.map((survey) {
        if (survey.id != event.surveyId) return survey;
        return survey.copyWith(status: SurveyStatus.completed);
      }).toList();

      emit(state.copyWith(
        isSubmitting: false,
        surveys: updatedSurveys,
        successMessage: 'Survey submitted successfully!',
      ));
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        error: e.toString(),
      ));
    }
  }
}