import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
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
                          SizedBox(
                            width: 96.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 4.w),
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
                                    iconSize: 18.sp,
                                    padding: EdgeInsets.all(8.w),
                                    constraints: BoxConstraints(
                                      minWidth: 36.w,
                                      minHeight: 36.h,
                                    ),
                                  ),
                                ),
                                Container(
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
                                      context.go('/settings');
                                    },
                                    color: Colors.white,
                                    iconSize: 18.sp,
                                    padding: EdgeInsets.all(8.w),
                                    constraints: BoxConstraints(
                                      minWidth: 36.w,
                                      minHeight: 36.h,
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
}
