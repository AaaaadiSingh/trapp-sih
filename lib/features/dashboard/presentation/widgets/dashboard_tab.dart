import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/gradient_utils.dart';
import '../../domain/entities/dashboard_data.dart';
import '../bloc/dashboard_bloc.dart';
import 'location_tracking_card.dart';
import 'trip_tracking_card.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error loading dashboard data',
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.error,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<DashboardBloc>().add(
                      const DashboardEvent.loadDashboardData(),
                    );
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        if (state.dashboardData == null) {
          return const Center(child: Text('No data available'));
        }

        return ResponsiveBreakpoints.of(context).isMobile
            ? _buildMobileLayout(context, state)
            : _buildTabletLayout(context, state);
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context, DashboardState state) {
    final dashboardData = state.dashboardData!;

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTripsSummaryCard(context, dashboardData),
          SizedBox(height: 16.h),
          _buildTripStatisticsCards(context, dashboardData),
          SizedBox(height: 16.h),
          const LocationTrackingCard(),
          SizedBox(height: 16.h),
          const TripTrackingCard(),
          SizedBox(height: 16.h),
          _buildCurrentTripsSection(context, dashboardData),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, DashboardState state) {
    final dashboardData = state.dashboardData!;

    return SingleChildScrollView(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: _buildTripsSummaryCard(context, dashboardData),
              ),
              SizedBox(width: 16.w),
              Expanded(
                flex: 3,
                child: _buildTripStatisticsCards(context, dashboardData),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          const LocationTrackingCard(),
          SizedBox(height: 24.h),
          const TripTrackingCard(),
          SizedBox(height: 24.h),
          _buildCurrentTripsSection(context, dashboardData),
        ],
      ),
    );
  }

  Widget _buildTripsSummaryCard(BuildContext context, dashboardData) {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientUtils.surface,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    gradient: GradientUtils.primary,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Icon(
                    Icons.directions_car,
                    color: AppColors.onPrimary,
                    size: 24.w,
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  'Trips Today',
                  style: AppTextStyles.titleLarge.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${dashboardData.totalTrips}',
                  style: AppTextStyles.displayLarge.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w800,
                    fontSize: 48.sp,
                  ),
                ),
                SizedBox(width: 12.w),
                Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: Text(
                    'trips',
                    style: AppTextStyles.titleMedium.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: AppColors.surfaceContainer.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: SizedBox(
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildBarChartBar(
                      context,
                      height: 30,
                      isHighlighted: false,
                    ),
                    _buildBarChartBar(
                      context,
                      height: 40,
                      isHighlighted: false,
                    ),
                    _buildBarChartBar(
                      context,
                      height: 50,
                      isHighlighted: false,
                    ),
                    _buildBarChartBar(context, height: 60, isHighlighted: true),
                    _buildBarChartBar(
                      context,
                      height: 40,
                      isHighlighted: false,
                    ),
                    _buildBarChartBar(
                      context,
                      height: 50,
                      isHighlighted: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBarChartBar(
    BuildContext context, {
    required double height,
    bool isHighlighted = false,
  }) {
    return Container(
      width: 24.w,
      height: height.h,
      decoration: BoxDecoration(
        gradient:
            isHighlighted
                ? GradientUtils.primary
                : LinearGradient(
                  colors: [
                    AppColors.primary.withOpacity(0.4),
                    AppColors.primaryLight.withOpacity(0.2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow:
            isHighlighted
                ? [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
                : null,
      ),
    );
  }

  Widget _buildTripStatisticsCards(BuildContext context, dashboardData) {
    return Row(
      children: [
        Expanded(
          child: _buildStatisticCard(
            context,
            title: 'Estimated distance',
            value: '${dashboardData.estimatedDistance.toInt()}',
            unit: 'km',
            icon: Icons.straighten,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: _buildStatisticCard(
            context,
            title: 'Estimated travel',
            value: '${dashboardData.estimatedTravelTime}',
            unit: 'mins',
            icon: Icons.access_time,
          ),
        ),
      ],
    );
  }

  Widget _buildStatisticCard(
    BuildContext context, {
    required String title,
    required String value,
    required String unit,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientUtils.cardOverlay,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.outline.withOpacity(0.1), width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyles.titleMedium.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    gradient: GradientUtils.accent,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(icon, color: AppColors.onPrimary, size: 18.w),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Flexible(
                  child: Text(
                    value,
                    style: AppTextStyles.displayMedium.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w800,
                      fontSize: 28.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  unit,
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentTripsSection(BuildContext context, dashboardData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Current trips',
          style: AppTextStyles.titleLarge.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.h),
        ...dashboardData.currentTrips.map(
          (trip) => _buildTripCard(context, trip),
        ),
        if (dashboardData.currentTrips.isEmpty)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24.h),
                Icon(
                  Icons.directions_car_outlined,
                  size: 48,
                  color: AppColors.textSecondary.withValues(alpha: 0.5),
                ),
                SizedBox(height: 16.h),
                Text(
                  'No trips scheduled for today',
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to plan trips tab
                    context.read<DashboardBloc>().add(
                      const DashboardEvent.tabChanged(3),
                    );
                  },
                  child: const Text('Plan a Trip'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildTripCard(BuildContext context, trip) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
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
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    gradient: GradientUtils.primary,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: AppColors.onPrimary,
                    size: 18.w,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    trip.origin,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 8.h, bottom: 8.h),
              child: Container(
                width: 2,
                height: 20.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary.withOpacity(0.6),
                      AppColors.secondary.withOpacity(0.6),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(1.r),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    gradient: GradientUtils.secondary,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: AppColors.onSecondary,
                    size: 18.w,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Text(
                    trip.destination,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.surfaceContainer.withOpacity(0.5),
                    AppColors.surfaceContainerHigh.withOpacity(0.3),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${_formatTime(trip.startTime)} - ${_formatTime(trip.endTime)}',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _buildTripStatusChip(context, trip.status),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripStatusChip(BuildContext context, status) {
    Color chipColor;
    String statusText;

    switch (status) {
      case TripStatus.inProgress:
        chipColor = Colors.green;
        statusText = 'In Progress';
        break;
      case TripStatus.scheduled:
        chipColor = Colors.blue;
        statusText = 'Scheduled';
        break;
      case TripStatus.completed:
        chipColor = Colors.grey;
        statusText = 'Completed';
        break;
      case TripStatus.cancelled:
        chipColor = Colors.red;
        statusText = 'Cancelled';
        break;
      default:
        chipColor = Colors.grey;
        statusText = 'Unknown';
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

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
