import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../../core/di/injection_container.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/gradient_utils.dart';
import '../../../../core/routing/app_router.dart';
import '../bloc/dashboard_bloc.dart';
import '../bloc/survey_bloc.dart';
import '../bloc/trip_plan_bloc.dart';
import '../widgets/dashboard_tab.dart';
import '../widgets/current_trips_tab.dart';
import '../widgets/survey_tab.dart';
import '../widgets/plan_trips_tab.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  sl<DashboardBloc>()
                    ..add(const DashboardEvent.loadDashboardData()),
        ),
        BlocProvider(
          create:
              (context) =>
                  sl<SurveyBloc>()..add(const SurveyEvent.loadSurveys()),
        ),
        BlocProvider(
          create:
              (context) =>
                  sl<TripPlanBloc>()..add(const TripPlanEvent.loadTripPlans()),
        ),
      ],
      child: const DashboardView(),
    );
  }



  List<Widget> _buildAlertsList(List alerts) {
    if (alerts.isEmpty) {
      return [
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 48.w,
                ),
                SizedBox(height: 12.h),
                Text(
                  'No Active Alerts',
                  style: AppTextStyles.titleMedium.copyWith(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'All systems are operating normally',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ];
    }

    // Display alerts without header, each in separate cards
    return alerts.asMap().entries.map((entry) {
      int index = entry.key;
      dynamic alert = entry.value;
      return Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: _buildNewAlertCard(alert, index + 1),
      );
    }).toList();
  }

  Widget _buildNewAlertCard(dynamic alert, int alertNumber) {
    if (alert is! Map<String, dynamic>) {
      return Card(
        margin: EdgeInsets.only(bottom: 16.h),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alert No. $alertNumber',
                style: AppTextStyles.titleMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                alert.toString(),
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    final alertData = alert as Map<String, dynamic>;
    
    // Extract alert information
    final title = _getAlertValue(alertData, ['title', 'name', 'subject']);
    final body = _getAlertValue(alertData, ['body', 'message', 'description', 'content', 'details']);
    final eventType = _getAlertValue(alertData, ['type', 'event_type', 'category', 'kind']);
    final source = _getAlertValue(alertData, ['source', 'from', 'origin', 'sender']);
    
    // Combine all content into a flowing text
    List<String> contentParts = [];
    if (title.isNotEmpty) contentParts.add(title);
    if (body.isNotEmpty) contentParts.add(body);
    if (eventType.isNotEmpty) contentParts.add(eventType);
    if (source.isNotEmpty) contentParts.add(source);
    
    final combinedContent = contentParts.join('. ');
    
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alert No. $alertNumber',
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.h),
            if (combinedContent.isNotEmpty)
              Text(
                combinedContent,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textPrimary,
                  height: 1.5,
                ),
              )
            else
              Text(
                'No alert details available',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                  fontStyle: FontStyle.italic,
                ),
              ),
          ],
        ),
      ),
    );
  }



  String _getAlertValue(Map<String, dynamic> alert, List<String> possibleKeys) {
    for (String key in possibleKeys) {
      if (alert.containsKey(key) && alert[key] != null) {
        final value = alert[key].toString().trim();
        if (value.isNotEmpty) {
          return value;
        }
      }
    }
    return '';
  }

  Widget _buildAlertCard(dynamic alert, int alertNumber) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.outline.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alert Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: _getAlertColor(alert).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  'Alert #$alertNumber',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: _getAlertColor(alert),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                _getAlertIcon(alert),
                color: _getAlertColor(alert),
                size: 20.w,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          
          // Alert Content
          if (alert is Map<String, dynamic>)
            ..._buildAlertDetails(alert)
          else
            Text(
              alert.toString(),
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildAlertDetails(Map<String, dynamic> alert) {
    List<Widget> widgets = [];
    
    // Priority fields to show first
    final priorityFields = ['title', 'message', 'description', 'type', 'severity', 'status', 'timestamp', 'location'];
    
    // Add priority fields first
    for (String field in priorityFields) {
      if (alert.containsKey(field) && alert[field] != null) {
        widgets.add(_buildAlertDetailItem(field, alert[field]));
      }
    }
    
    // Add remaining fields
    for (String key in alert.keys) {
      if (!priorityFields.contains(key) && alert[key] != null) {
        widgets.add(_buildAlertDetailItem(key, alert[key]));
      }
    }
    
    return widgets;
  }

  Widget _buildAlertDetailItem(String key, dynamic value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80.w,
            child: Text(
              _formatFieldName(key),
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: _buildFormattedValue(value, key),
          ),
        ],
      ),
    );
  }

  Widget _buildFormattedValue(dynamic value, String key) {
    if (value == null) {
      return Text(
        'Not specified',
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textSecondary.withOpacity(0.6),
          fontStyle: FontStyle.italic,
        ),
      );
    }

    // Special formatting for specific fields
    if (key.toLowerCase().contains('timestamp') || key.toLowerCase().contains('time')) {
      return _buildTimestampValue(value);
    }
    
    if (key.toLowerCase().contains('severity') || key.toLowerCase().contains('priority')) {
      return _buildSeverityValue(value);
    }
    
    if (key.toLowerCase().contains('status')) {
      return _buildStatusValue(value);
    }

    if (value is String) {
      return Text(
        value.isEmpty ? 'Empty' : value,
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textPrimary,
        ),
      );
    }

    if (value is num) {
      return Text(
        value.toString(),
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    if (value is bool) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: value ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          value ? 'Yes' : 'No',
          style: AppTextStyles.bodySmall.copyWith(
            color: value ? Colors.green.shade700 : Colors.red.shade700,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    if (value is List) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...value.take(3).map((item) => Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Text(
              '• ${item.toString()}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          )),
          if (value.length > 3)
            Text(
              '... and ${value.length - 3} more items',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
        ],
      );
    }

    return Text(
      value.toString(),
      style: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildTimestampValue(dynamic value) {
    try {
      DateTime? dateTime;
      if (value is String) {
        dateTime = DateTime.tryParse(value);
      } else if (value is int) {
        dateTime = DateTime.fromMillisecondsSinceEpoch(value);
      }
      
      if (dateTime != null) {
        final now = DateTime.now();
        final difference = now.difference(dateTime);
        String timeAgo;
        
        if (difference.inMinutes < 1) {
          timeAgo = 'Just now';
        } else if (difference.inHours < 1) {
          timeAgo = '${difference.inMinutes}m ago';
        } else if (difference.inDays < 1) {
          timeAgo = '${difference.inHours}h ago';
        } else {
          timeAgo = '${difference.inDays}d ago';
        }
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              timeAgo,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        );
      }
    } catch (e) {
      // Fall back to string representation
    }
    
    return Text(
      value.toString(),
      style: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildSeverityValue(dynamic value) {
    final severity = value.toString().toLowerCase();
    Color color;
    IconData icon;
    
    if (severity.contains('high') || severity.contains('critical') || severity.contains('urgent')) {
      color = Colors.red;
      icon = Icons.error;
    } else if (severity.contains('medium') || severity.contains('warning')) {
      color = Colors.orange;
      icon = Icons.warning;
    } else if (severity.contains('low') || severity.contains('info')) {
      color = Colors.blue;
      icon = Icons.info;
    } else {
      color = AppColors.textSecondary;
      icon = Icons.help_outline;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.w, color: color),
          SizedBox(width: 4.w),
          Text(
            _formatFieldName(value.toString()),
            style: AppTextStyles.bodySmall.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusValue(dynamic value) {
    final status = value.toString().toLowerCase();
    Color color;
    IconData icon;
    
    if (status.contains('active') || status.contains('open') || status.contains('pending')) {
      color = Colors.orange;
      icon = Icons.pending;
    } else if (status.contains('resolved') || status.contains('closed') || status.contains('completed')) {
      color = Colors.green;
      icon = Icons.check_circle;
    } else if (status.contains('cancelled') || status.contains('rejected')) {
      color = Colors.red;
      icon = Icons.cancel;
    } else {
      color = AppColors.textSecondary;
      icon = Icons.help_outline;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.w, color: color),
          SizedBox(width: 4.w),
          Text(
            _formatFieldName(value.toString()),
            style: AppTextStyles.bodySmall.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleAlert(Map<String, dynamic> data) {
    return _buildAlertCard(data, 1);
  }

  Widget _buildGenericData(dynamic data) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Raw Data',
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            data.toString(),
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Color _getAlertColor(dynamic alert) {
    if (alert is Map<String, dynamic>) {
      final severity = alert['severity']?.toString().toLowerCase() ?? '';
      final type = alert['type']?.toString().toLowerCase() ?? '';
      
      if (severity.contains('high') || severity.contains('critical') || type.contains('emergency')) {
        return Colors.red;
      } else if (severity.contains('medium') || severity.contains('warning')) {
        return Colors.orange;
      } else if (severity.contains('low') || severity.contains('info')) {
        return Colors.blue;
      }
    }
    return AppColors.primary;
  }

  IconData _getAlertIcon(dynamic alert) {
    if (alert is Map<String, dynamic>) {
      final type = alert['type']?.toString().toLowerCase() ?? '';
      final severity = alert['severity']?.toString().toLowerCase() ?? '';
      
      if (type.contains('emergency') || severity.contains('critical')) {
        return Icons.emergency;
      } else if (type.contains('warning') || severity.contains('warning')) {
        return Icons.warning;
      } else if (type.contains('info') || severity.contains('info')) {
        return Icons.info;
      }
    }
    return Icons.notifications_active;
  }

  String _formatFieldName(String field) {
    // Convert camelCase or snake_case to Title Case
    return field
        .replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (match) => '${match.group(1)} ${match.group(2)}')
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }


}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(gradient: GradientUtils.background),
            child: Column(
              children: [
                Container(
                  height: 80.h + MediaQuery.of(context).padding.top,
                  decoration: const BoxDecoration(
                    gradient: GradientUtils.appBar,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                _getAppBarTitle(state.selectedTabIndex),
                                style: AppTextStyles.headlineSmall.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                  shadows: [
                                    Shadow(
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 2.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.3),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.location_on),
                                      onPressed: () {
                                        ProfileNavigator.toEnhancedDashboard(context);
                                      },
                                      tooltip: 'Enhanced Location',
                                      color: Colors.white,
                                      iconSize: 16.sp,
                                      padding: EdgeInsets.all(6.w),
                                      constraints: BoxConstraints(
                                        minWidth: 32.w,
                                        minHeight: 32.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 2.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.3),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.science),
                                      onPressed: () {
                                        ProfileNavigator.toLocationTest(context);
                                      },
                                      tooltip: 'Location Test',
                                      color: Colors.white,
                                      iconSize: 16.sp,
                                      padding: EdgeInsets.all(6.w),
                                      constraints: BoxConstraints(
                                        minWidth: 32.w,
                                        minHeight: 32.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 2.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.3),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.bug_report),
                                      onPressed: () {
                                        ProfileNavigator.toDebug(context);
                                      },
                                      tooltip: 'Debug Services',
                                      color: Colors.white,
                                      iconSize: 16.sp,
                                      padding: EdgeInsets.all(6.w),
                                      constraints: BoxConstraints(
                                        minWidth: 32.w,
                                        minHeight: 32.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.3),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.settings),
                                      onPressed: () {
                                        context.push('/settings');
                                      },
                                      color: Colors.white,
                                      iconSize: 16.sp,
                                      padding: EdgeInsets.all(6.w),
                                      constraints: BoxConstraints(
                                        minWidth: 32.w,
                                        minHeight: 32.h,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(child: _buildBody(context, state)),
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomNavigationBar(context, state),
          floatingActionButton: state.selectedTabIndex == 1 
              ? _buildFloatingActionButton(context) 
              : null,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, DashboardState state) {
    switch (state.selectedTabIndex) {
      case 0:
        return const DashboardTab();
      case 1:
        return const CurrentTripsTab();
      case 2:
        return const SurveyTab();
      case 3:
        return const PlanTripsTab();
      default:
        return const DashboardTab();
    }
  }

  Widget _buildBottomNavigationBar(BuildContext context, DashboardState state) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.surface.withOpacity(0.95),
            AppColors.surfaceContainer.withOpacity(0.98),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: state.selectedTabIndex,
        onTap: (index) {
          context.read<DashboardBloc>().add(DashboardEvent.tabChanged(index));
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 11.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8.w),
              decoration:
                  state.selectedTabIndex == 0
                      ? BoxDecoration(
                        gradient: GradientUtils.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      )
                      : null,
              child: Icon(
                state.selectedTabIndex == 0
                    ? Icons.dashboard
                    : Icons.dashboard_outlined,
                color:
                    state.selectedTabIndex == 0
                        ? AppColors.onPrimary
                        : AppColors.textSecondary,
              ),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8.w),
              decoration:
                  state.selectedTabIndex == 1
                      ? BoxDecoration(
                        gradient: GradientUtils.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      )
                      : null,
              child: Icon(
                state.selectedTabIndex == 1
                    ? Icons.directions_car
                    : Icons.directions_car_outlined,
                color:
                    state.selectedTabIndex == 1
                        ? AppColors.onPrimary
                        : AppColors.textSecondary,
              ),
            ),
            label: 'Current Trips',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8.w),
              decoration:
                  state.selectedTabIndex == 2
                      ? BoxDecoration(
                        gradient: GradientUtils.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      )
                      : null,
              child: Icon(
                state.selectedTabIndex == 2
                    ? Icons.assignment
                    : Icons.assignment_outlined,
                color:
                    state.selectedTabIndex == 2
                        ? AppColors.onPrimary
                        : AppColors.textSecondary,
              ),
            ),
            label: 'Survey',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(8.w),
              decoration:
                  state.selectedTabIndex == 3
                      ? BoxDecoration(
                        gradient: GradientUtils.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      )
                      : null,
              child: Icon(
                state.selectedTabIndex == 3 ? Icons.map : Icons.map_outlined,
                color:
                    state.selectedTabIndex == 3
                        ? AppColors.onPrimary
                        : AppColors.textSecondary,
              ),
            ),
            label: 'Plan Trips',
          ),
        ],
      ),
    );
  }

  String _getAppBarTitle(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Current Trips';
      case 2:
        return 'Survey';
      case 3:
        return 'Plan Trips';
      default:
        return 'Dashboard';
    }
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showApiDataPopup(context),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      child: const Icon(Icons.api),
      tooltip: 'Show API Data',
    );
  }

  void _showApiDataPopup(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final popupWidth = screenSize.width * 0.9;
    final popupHeight = screenSize.height * 0.4;
    
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: EdgeInsets.only(
            left: 16.w,
            bottom: 100.h, // Above the bottom navigation
          ),
          width: popupWidth,
          height: popupHeight,
          decoration: BoxDecoration(
            gradient: GradientUtils.surface,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow.withOpacity(0.3),
                blurRadius: 25,
                offset: const Offset(0, 8),
                spreadRadius: 2,
              ),
            ],
            border: Border.all(
              color: AppColors.outline.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary.withOpacity(0.1),
                      AppColors.primary.withOpacity(0.05),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Icon(
                        Icons.api,
                        color: AppColors.onPrimary,
                        size: 20.w,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        'Smart Alert Data',
                        style: AppTextStyles.titleMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.close,
                        color: AppColors.textSecondary,
                        size: 20.w,
                      ),
                      padding: EdgeInsets.all(4.w),
                      constraints: BoxConstraints(
                        minWidth: 32.w,
                        minHeight: 32.h,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Content
              Expanded(
                child: _ApiDataWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ApiDataWidget extends StatefulWidget {
  @override
  _ApiDataWidgetState createState() => _ApiDataWidgetState();
}

class _ApiDataWidgetState extends State<_ApiDataWidget> {
  bool _isLoading = false;
  Map<String, dynamic>? _apiData;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchApiData();
  }

  Future<void> _fetchApiData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await http.get(
        Uri.parse('https://smart-alert-extractor.onrender.com/scrape'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _apiData = data;
          _isLoading = false;
        });
      } else {
        setState(() {
          _error = 'Failed to load data: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _error = 'Network error: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              strokeWidth: 3,
            ),
            SizedBox(height: 16.h),
            Text(
              'Loading Smart Alert Data...',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    if (_error != null) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.error.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Icon(
                  Icons.warning_amber_rounded,
                  color: AppColors.error,
                  size: 32.w,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Connection Error',
                style: AppTextStyles.titleMedium.copyWith(
                  color: AppColors.error,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                _error!,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              ElevatedButton.icon(
                onPressed: _fetchApiData,
                icon: Icon(Icons.refresh, size: 16.w),
                label: const Text('Try Again'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.onPrimary,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (_apiData == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.inbox_outlined,
              color: AppColors.textSecondary.withOpacity(0.5),
              size: 48.w,
            ),
            SizedBox(height: 16.h),
            Text(
              'No Data Available',
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Refresh button
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton.icon(
                  onPressed: _fetchApiData,
                  icon: Icon(Icons.refresh, size: 16.w, color: AppColors.primary),
                  label: Text(
                    'Refresh',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // Formatted Data Display
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainer.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: AppColors.outline.withOpacity(0.1),
              ),
            ),
            child: _buildFormattedData(),
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildFormattedData() {
    if (_apiData == null) return const SizedBox.shrink();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Parse and display the data intelligently
          if (_apiData is Map<String, dynamic>)
            ..._buildDataFromMap(_apiData as Map<String, dynamic>)
          else if (_apiData is List)
            ..._buildDataFromList(_apiData as List)
          else if (_apiData is String)
            _buildDataFromString(_apiData as String)
          else
            _buildRawData(_apiData),
        ],
      ),
    );
  }

  List<Widget> _buildAlertsList(List alerts) {
    if (alerts.isEmpty) {
      return [
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 48.w,
                ),
                SizedBox(height: 12.h),
                Text(
                  'No Active Alerts',
                  style: AppTextStyles.titleMedium.copyWith(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'All systems are operating normally',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ];
    }

    // Display alerts without header, each in separate cards
    return alerts.asMap().entries.map((entry) {
      int index = entry.key;
      dynamic alert = entry.value;
      return Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: _buildNewAlertCard(alert, index + 1),
      );
    }).toList();
  }

  Widget _buildAlertCard(dynamic alert, int alertNumber) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.outline.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alert Header
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: _getAlertColor(alert).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  'Alert #$alertNumber',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: _getAlertColor(alert),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                _getAlertIcon(alert),
                color: _getAlertColor(alert),
                size: 20.w,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          
          // Alert Content
          if (alert is Map<String, dynamic>)
            ..._buildAlertDetails(alert)
          else
            Text(
              alert.toString(),
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildAlertDetails(Map<String, dynamic> alert) {
    List<Widget> widgets = [];
    
    // Priority fields to show first
    final priorityFields = ['title', 'message', 'description', 'type', 'severity', 'status', 'timestamp', 'location'];
    
    // Add priority fields first
    for (String field in priorityFields) {
      if (alert.containsKey(field) && alert[field] != null) {
        widgets.add(_buildAlertDetailItem(field, alert[field]));
      }
    }
    
    // Add remaining fields
    for (String key in alert.keys) {
      if (!priorityFields.contains(key) && alert[key] != null) {
        widgets.add(_buildAlertDetailItem(key, alert[key]));
      }
    }
    
    return widgets;
  }

  Widget _buildAlertDetailItem(String key, dynamic value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80.w,
            child: Text(
              _formatFieldName(key),
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: _buildFormattedValue(value, key),
          ),
        ],
      ),
    );
  }

  Widget _buildFormattedValue(dynamic value, String key) {
    if (value == null) {
      return Text(
        'Not specified',
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textSecondary.withOpacity(0.6),
          fontStyle: FontStyle.italic,
        ),
      );
    }

    // Special formatting for specific fields
    if (key.toLowerCase().contains('timestamp') || key.toLowerCase().contains('time')) {
      return _buildTimestampValue(value);
    }
    
    if (key.toLowerCase().contains('severity') || key.toLowerCase().contains('priority')) {
      return _buildSeverityValue(value);
    }
    
    if (key.toLowerCase().contains('status')) {
      return _buildStatusValue(value);
    }

    if (value is String) {
      return Text(
        value.isEmpty ? 'Empty' : value,
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textPrimary,
        ),
      );
    }

    if (value is num) {
      return Text(
        value.toString(),
        style: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    if (value is bool) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: value ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          value ? 'Yes' : 'No',
          style: AppTextStyles.bodySmall.copyWith(
            color: value ? Colors.green.shade700 : Colors.red.shade700,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }

    if (value is List) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...value.take(3).map((item) => Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Text(
              '• ${item.toString()}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          )),
          if (value.length > 3)
            Text(
              '... and ${value.length - 3} more items',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
        ],
      );
    }

    return Text(
      value.toString(),
      style: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildTimestampValue(dynamic value) {
    try {
      DateTime? dateTime;
      if (value is String) {
        dateTime = DateTime.tryParse(value);
      } else if (value is int) {
        dateTime = DateTime.fromMillisecondsSinceEpoch(value);
      }
      
      if (dateTime != null) {
        final now = DateTime.now();
        final difference = now.difference(dateTime);
        String timeAgo;
        
        if (difference.inMinutes < 1) {
          timeAgo = 'Just now';
        } else if (difference.inHours < 1) {
          timeAgo = '${difference.inMinutes}m ago';
        } else if (difference.inDays < 1) {
          timeAgo = '${difference.inHours}h ago';
        } else {
          timeAgo = '${difference.inDays}d ago';
        }
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              timeAgo,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        );
      }
    } catch (e) {
      // Fall back to string representation
    }
    
    return Text(
      value.toString(),
      style: AppTextStyles.bodyMedium.copyWith(
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildSeverityValue(dynamic value) {
    final severity = value.toString().toLowerCase();
    Color color;
    IconData icon;
    
    if (severity.contains('high') || severity.contains('critical') || severity.contains('urgent')) {
      color = Colors.red;
      icon = Icons.error;
    } else if (severity.contains('medium') || severity.contains('warning')) {
      color = Colors.orange;
      icon = Icons.warning;
    } else if (severity.contains('low') || severity.contains('info')) {
      color = Colors.blue;
      icon = Icons.info;
    } else {
      color = AppColors.textSecondary;
      icon = Icons.help_outline;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.w, color: color),
          SizedBox(width: 4.w),
          Text(
            _formatFieldName(value.toString()),
            style: AppTextStyles.bodySmall.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusValue(dynamic value) {
    final status = value.toString().toLowerCase();
    Color color;
    IconData icon;
    
    if (status.contains('active') || status.contains('open') || status.contains('pending')) {
      color = Colors.orange;
      icon = Icons.pending;
    } else if (status.contains('resolved') || status.contains('closed') || status.contains('completed')) {
      color = Colors.green;
      icon = Icons.check_circle;
    } else if (status.contains('cancelled') || status.contains('rejected')) {
      color = Colors.red;
      icon = Icons.cancel;
    } else {
      color = AppColors.textSecondary;
      icon = Icons.help_outline;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.w, color: color),
          SizedBox(width: 4.w),
          Text(
            _formatFieldName(value.toString()),
            style: AppTextStyles.bodySmall.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleAlert(Map<String, dynamic> data) {
    return _buildAlertCard(data, 1);
  }

  Widget _buildGenericData(dynamic data) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Raw Data',
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            data.toString(),
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Color _getAlertColor(dynamic alert) {
    if (alert is Map<String, dynamic>) {
      final severity = alert['severity']?.toString().toLowerCase() ?? '';
      final type = alert['type']?.toString().toLowerCase() ?? '';
      
      if (severity.contains('high') || severity.contains('critical') || type.contains('emergency')) {
        return Colors.red;
      } else if (severity.contains('medium') || severity.contains('warning')) {
        return Colors.orange;
      } else if (severity.contains('low') || severity.contains('info')) {
        return Colors.blue;
      }
    }
    return AppColors.primary;
  }

  IconData _getAlertIcon(dynamic alert) {
    if (alert is Map<String, dynamic>) {
      final type = alert['type']?.toString().toLowerCase() ?? '';
      final severity = alert['severity']?.toString().toLowerCase() ?? '';
      
      if (type.contains('emergency') || severity.contains('critical')) {
        return Icons.emergency;
      } else if (type.contains('warning') || severity.contains('warning')) {
        return Icons.warning;
      } else if (type.contains('info') || severity.contains('info')) {
        return Icons.info;
      }
    }
    return Icons.notifications_active;
  }

  String _formatFieldName(String field) {
    // Convert camelCase or snake_case to Title Case
    return field
        .replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (match) => '${match.group(1)} ${match.group(2)}')
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }

  List<Widget> _buildDataFromMap(Map<String, dynamic> data) {
    List<Widget> widgets = [];
    
    // Check if this looks like alert data
    if (data.containsKey('alerts') || data.containsKey('data') || data.containsKey('results')) {
      // Handle structured response
      widgets.add(_buildStructuredResponse(data));
    } else if (_isAlertLikeData(data)) {
      // Handle single alert
      widgets.add(_buildSingleAlertCard(data));
    } else {
      // Handle generic map data
      widgets.addAll(_buildGenericMapData(data));
    }
    
    return widgets;
  }

  List<Widget> _buildDataFromList(List data) {
    if (data.isEmpty) {
      return [_buildEmptyState()];
    }
    
    List<Widget> widgets = [];
    
    // Add header
    widgets.add(_buildSectionHeader('Data Results', data.length));
    widgets.add(SizedBox(height: 16.h));
    
    // Process each item
    for (int i = 0; i < data.length; i++) {
      if (data[i] is Map<String, dynamic>) {
        widgets.add(_buildListItemCard(data[i], i + 1));
      } else {
        widgets.add(_buildSimpleListItem(data[i], i + 1));
      }
      if (i < data.length - 1) {
        widgets.add(SizedBox(height: 12.h));
      }
    }
    
    return widgets;
  }

  Widget _buildDataFromString(String data) {
    // Try to parse as JSON first
    try {
      final parsed = json.decode(data);
      if (parsed is Map<String, dynamic>) {
        return Column(children: _buildDataFromMap(parsed));
      } else if (parsed is List) {
        return Column(children: _buildDataFromList(parsed));
      }
    } catch (e) {
      // Not JSON, treat as plain text
    }
    
    // Handle as formatted text
    return _buildTextContent(data);
  }

  Widget _buildRawData(dynamic data) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.data_object, color: AppColors.primary, size: 20.w),
              SizedBox(width: 8.w),
              Text(
                'Raw Data',
                style: AppTextStyles.titleMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            data.toString(),
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStructuredResponse(Map<String, dynamic> data) {
    List<Widget> widgets = [];
    
    // Handle different response structures
    if (data.containsKey('alerts')) {
      final alerts = data['alerts'];
      if (alerts is List) {
        widgets.addAll(_buildAlertsList(alerts));
      }
    } else if (data.containsKey('data')) {
      final responseData = data['data'];
      if (responseData is List) {
        widgets.addAll(_buildDataFromList(responseData));
      } else if (responseData is Map<String, dynamic>) {
        widgets.addAll(_buildDataFromMap(responseData));
      }
    } else if (data.containsKey('results')) {
      final results = data['results'];
      if (results is List) {
        widgets.addAll(_buildDataFromList(results));
      }
    } else {
      // Fallback to generic map handling
      widgets.addAll(_buildGenericMapData(data));
    }
    
    return Column(children: widgets);
  }

  bool _isAlertLikeData(Map<String, dynamic> data) {
    final alertKeys = ['alert', 'message', 'severity', 'type', 'status', 'timestamp', 'title', 'description'];
    return alertKeys.any((key) => data.containsKey(key));
  }

  Widget _buildSingleAlertCard(Map<String, dynamic> data) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.notifications_active, color: AppColors.primary, size: 20.w),
              SizedBox(width: 8.w),
              Text(
                'Alert Information',
                style: AppTextStyles.titleMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ..._buildAlertDetails(data),
        ],
      ),
    );
  }

  List<Widget> _buildGenericMapData(Map<String, dynamic> data) {
    List<Widget> widgets = [];
    
    widgets.add(_buildSectionHeader('Information', data.length));
    widgets.add(SizedBox(height: 16.h));
    
    for (String key in data.keys) {
      if (data[key] != null) {
        widgets.add(_buildDataRow(key, data[key]));
        widgets.add(SizedBox(height: 8.h));
      }
    }
    
    return widgets;
  }

  Widget _buildSectionHeader(String title, int count) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withOpacity(0.15),
            AppColors.primary.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Icon(Icons.folder_open, color: AppColors.primary, size: 20.w),
          SizedBox(width: 8.w),
          Text(
            '$title ($count)',
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItemCard(Map<String, dynamic> item, int index) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Item #$index',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          ...item.entries.take(5).map((entry) => 
            _buildDataRow(entry.key, entry.value)
          ),
          if (item.length > 5)
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Text(
                '... and ${item.length - 5} more fields',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSimpleListItem(dynamic item, int index) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 24.w,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Text(
                '$index',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              item.toString(),
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataRow(String key, dynamic value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80.w,
            child: Text(
              _formatFieldName(key),
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: _buildFormattedValue(value, key),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContent(String text) {
    // Clean up the text and format it nicely
    final cleanText = text.trim();
    
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.article, color: AppColors.primary, size: 20.w),
              SizedBox(width: 8.w),
              Text(
                'Content',
                style: AppTextStyles.titleMedium.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            cleanText,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textPrimary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            Icon(
              Icons.inbox_outlined,
              color: AppColors.textSecondary,
              size: 48.w,
            ),
            SizedBox(height: 12.h),
            Text(
              'No Data Available',
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'The response contains no data to display',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewAlertCard(dynamic alert, int alertNumber) {
    if (alert is! Map<String, dynamic>) {
      return Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.outline.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          alert.toString(),
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
      );
    }

    final alertData = alert as Map<String, dynamic>;
    
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Section
          _buildAlertSection(
            'Title',
            _getAlertValue(alertData, ['title', 'name', 'subject']),
            Icons.title,
            AppColors.primary,
          ),
          
          SizedBox(height: 16.h),
          
          // Body Section
          _buildAlertSection(
            'Body',
            _getAlertValue(alertData, ['body', 'message', 'description', 'content', 'details']),
            Icons.description,
            Colors.blue,
          ),
          
          SizedBox(height: 16.h),
          
          // Event Type Section
          _buildAlertSection(
            'Event Type',
            _getAlertValue(alertData, ['type', 'event_type', 'category', 'kind']),
            Icons.category,
            Colors.orange,
          ),
          
          SizedBox(height: 16.h),
          
          // Source Section
          _buildAlertSection(
            'Source',
            _getAlertValue(alertData, ['source', 'from', 'origin', 'sender']),
            Icons.source,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildAlertSection(String sectionTitle, String value, IconData icon, Color color) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 18.w,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  sectionTitle,
                  style: AppTextStyles.titleSmall.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColors.outline.withOpacity(0.1)),
            ),
            child: Text(
              value.isNotEmpty ? value : 'Not specified',
              style: AppTextStyles.bodyMedium.copyWith(
                color: value.isNotEmpty ? AppColors.textPrimary : AppColors.textSecondary,
                fontStyle: value.isNotEmpty ? FontStyle.normal : FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getAlertValue(Map<String, dynamic> alert, List<String> possibleKeys) {
    for (String key in possibleKeys) {
      if (alert.containsKey(key) && alert[key] != null) {
        final value = alert[key].toString().trim();
        if (value.isNotEmpty) {
          return value;
        }
      }
    }
    return '';
  }
}
