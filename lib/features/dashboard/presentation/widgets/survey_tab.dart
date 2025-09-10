import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/gradient_utils.dart';
import '../../domain/entities/survey_data.dart';
import '../bloc/survey_bloc.dart';

class SurveyTab extends StatelessWidget {
  const SurveyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SurveyBloc, SurveyState>(
      listener: (context, state) {
        if (state.successMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.successMessage!),
              backgroundColor: Colors.green,
            ),
          );
        }

        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.surveys == null || state.surveys!.isEmpty) {
          return _buildEmptyState(context);
        }

        return ResponsiveBreakpoints.of(context).isMobile
            ? _buildMobileLayout(context, state)
            : _buildTabletLayout(context, state);
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.assignment_outlined,
            size: 64.sp,
            color: AppColors.textSecondary.withValues(alpha: 0.5),
          ),
          SizedBox(height: 16.h),
          Text(
            'No surveys available',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Check back later for new surveys',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton.icon(
            onPressed: () {
              context.read<SurveyBloc>().add(const SurveyEvent.loadSurveys());
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Refresh'),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, SurveyState state) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Surveys',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          ...state.surveys!.map((survey) => _buildSurveyCard(context, survey)),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, SurveyState state) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Surveys',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 1.5,
            ),
            itemCount: state.surveys?.length,
            itemBuilder: (context, index) {
              return _buildSurveyCard(context, state.surveys![index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSurveyCard(BuildContext context, SurveyData survey) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        gradient: GradientUtils.cardOverlay,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.outline.withOpacity(0.08),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _showSurveyDialog(context, survey);
          },
          borderRadius: BorderRadius.circular(20.r),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        gradient: GradientUtils.accent,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: Icon(
                        Icons.assignment,
                        color: AppColors.onPrimary,
                        size: 20.w,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            survey.title,
                            style: AppTextStyles.titleMedium.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          _buildSurveyStatusChip(context, survey.status),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.surfaceContainer.withOpacity(0.3),
                        AppColors.surfaceContainerHigh.withOpacity(0.2),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    survey.description,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.help_outline,
                          size: 16,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          '${survey.questions.length} questions',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: GradientUtils.primary,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withOpacity(0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            _showSurveyDialog(context, survey);
                          },
                          borderRadius: BorderRadius.circular(12.r),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 8.h,
                            ),
                            child: const Text(
                              'Take Survey',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSurveyStatusChip(BuildContext context, SurveyStatus status) {
    Color chipColor;
    String statusText;

    switch (status) {
      case SurveyStatus.pending:
        chipColor = Colors.grey;
        statusText = 'Pending';
        break;
      case SurveyStatus.available:
        chipColor = Colors.blue;
        statusText = 'Available';
        break;
      case SurveyStatus.inProgress:
        chipColor = Colors.orange;
        statusText = 'In Progress';
        break;
      case SurveyStatus.completed:
        chipColor = Colors.green;
        statusText = 'Completed';
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: chipColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: chipColor, width: 1),
      ),
      child: Text(
        statusText,
        style: AppTextStyles.bodySmall.copyWith(
          color: chipColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  void _showSurveyDialog(BuildContext context, SurveyData survey) {
    showDialog(
      context: context,
      builder: (context) => SurveyDialog(survey: survey),
    );
  }
}

class SurveyDialog extends StatefulWidget {
  final SurveyData survey;

  const SurveyDialog({super.key, required this.survey});

  @override
  State<SurveyDialog> createState() => _SurveyDialogState();
}

class _SurveyDialogState extends State<SurveyDialog> {
  int _currentQuestionIndex = 0;
  final Map<int, dynamic> _answers = {};
  bool get _isLastQuestion =>
      _currentQuestionIndex == widget.survey.questions.length - 1;

  @override
  Widget build(BuildContext context) {
    final isReadOnly = widget.survey.status == SurveyStatus.completed;
    final question = widget.survey.questions[_currentQuestionIndex];

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width:
            ResponsiveBreakpoints.of(context).isMobile
                ? double.infinity
                : 500.w,
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.survey.title,
                  style: AppTextStyles.titleLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            LinearProgressIndicator(
              value:
                  (_currentQuestionIndex + 1) / widget.survey.questions.length,
              backgroundColor: AppColors.primary.withValues(alpha: 0.1),
            ),
            SizedBox(height: 4.h),
            Text(
              'Question ${_currentQuestionIndex + 1}/${widget.survey.questions.length}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 16.h),
            Text(question.question, style: AppTextStyles.titleMedium),
            SizedBox(height: 24.h),
            _buildQuestionInput(question, isReadOnly),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentQuestionIndex > 0)
                  OutlinedButton(
                    onPressed: isReadOnly ? null : _previousQuestion,
                    child: const Text('Previous'),
                  )
                else
                  const SizedBox(),
                ElevatedButton(
                  onPressed:
                      isReadOnly
                          ? (_isLastQuestion
                              ? () => Navigator.of(context).pop()
                              : _nextQuestion)
                          : (_answers.containsKey(_currentQuestionIndex)
                              ? (_isLastQuestion
                                  ? _submitSurvey
                                  : _nextQuestion)
                              : null),
                  child: Text(_isLastQuestion ? 'Submit' : 'Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionInput(SurveyQuestion question, bool isReadOnly) {
    switch (question.type) {
      case QuestionType.multipleChoice:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              question.options.asMap().entries.map((entry) {
                final index = entry.key;
                final option = entry.value;
                // Check if this option is selected

                return RadioListTile<int>(
                  title: Text(option),
                  value: index,
                  groupValue: _answers[_currentQuestionIndex],
                  onChanged:
                      isReadOnly
                          ? null
                          : (value) {
                            setState(() {
                              _answers[_currentQuestionIndex] = value;
                            });
                          },
                  activeColor: AppColors.primary,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                );
              }).toList(),
        );

      case QuestionType.rating:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(5, (index) {
            final rating = index + 1;
            final isSelected = _answers[_currentQuestionIndex] == rating;

            return InkWell(
              onTap:
                  isReadOnly
                      ? null
                      : () {
                        setState(() {
                          _answers[_currentQuestionIndex] = rating;
                        });
                      },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? AppColors.primary
                          : AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  '$rating',
                  style: AppTextStyles.titleMedium.copyWith(
                    color: isSelected ? Colors.white : AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
        );

      case QuestionType.openEnded:
        return TextField(
          enabled: !isReadOnly,
          controller: TextEditingController(
            text: _answers[_currentQuestionIndex] ?? '',
          ),
          decoration: InputDecoration(
            hintText: 'Enter your answer',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          maxLines: 3,
          onChanged: (value) {
            _answers[_currentQuestionIndex] = value;
          },
        );

      // All cases are covered
    }
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void _previousQuestion() {
    setState(() {
      _currentQuestionIndex--;
    });
  }

  void _submitSurvey() {
    // Convert answers to the format expected by the bloc
    final Map<String, dynamic> formattedAnswers = {};
    _answers.forEach((questionIndex, answer) {
      final question = widget.survey.questions[questionIndex];

      // Format the answer based on question type
      dynamic formattedAnswer = answer;
      if (question.type == QuestionType.multipleChoice && answer is int) {
        formattedAnswer = question.options[answer];
      }

      formattedAnswers[question.id] = formattedAnswer;
    });

    // Submit the survey
    context.read<SurveyBloc>().add(SurveyEvent.submitSurvey(widget.survey.id));

    Navigator.of(context).pop();
  }
}
