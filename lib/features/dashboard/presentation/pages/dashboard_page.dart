import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection_container.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
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
          create: (context) => sl<DashboardBloc>()..add(const DashboardEvent.loadDashboardData()),
        ),
        BlocProvider(
          create: (context) => sl<SurveyBloc>()..add(const SurveyEvent.loadSurveys()),
        ),
        BlocProvider(
          create: (context) => sl<TripPlanBloc>()..add(const TripPlanEvent.loadTripPlans()),
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
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: AppColors.background,
            elevation: 0,
            title: Text(
              _getAppBarTitle(state.selectedTabIndex),
              style: AppTextStyles.headlineSmall.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.go('/settings');
              },
            ),
            ],
          ),
          body: _buildBody(context, state),
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
    return BottomNavigationBar(
      currentIndex: state.selectedTabIndex,
      onTap: (index) {
        context.read<DashboardBloc>().add(DashboardEvent.tabChanged(index));
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_outlined),
          activeIcon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_car_outlined),
          activeIcon: Icon(Icons.directions_car),
          label: 'Current Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_outlined),
          activeIcon: Icon(Icons.assignment),
          label: 'Survey',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          activeIcon: Icon(Icons.map),
          label: 'Plan Trips',
        ),
      ],
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