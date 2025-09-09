import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
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
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trips today',
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${dashboardData.totalTrips}',
                  style: AppTextStyles.displayLarge.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.w),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Text(
                    'trips',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildBarChartBar(context, height: 30, isHighlighted: false),
                  _buildBarChartBar(context, height: 40, isHighlighted: false),
                  _buildBarChartBar(context, height: 50, isHighlighted: false),
                  _buildBarChartBar(context, height: 60, isHighlighted: true),
                  _buildBarChartBar(context, height: 40, isHighlighted: false),
                  _buildBarChartBar(context, height: 50, isHighlighted: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBarChartBar(BuildContext context, {required double height, bool isHighlighted = false}) {
    return Container(
      width: 20.w,
      height: height.h,
      decoration: BoxDecoration(
        color: isHighlighted
            ? AppColors.primary
            : AppColors.primary.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(4),
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
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.titleMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value,
                  style: AppTextStyles.displayMedium.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  unit,
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: AppColors.textSecondary,
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
        ...dashboardData.currentTrips.map((trip) => _buildTripCard(context, trip)),
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
    return Card(
      elevation: 1,
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    trip.origin,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 2.h, bottom: 2.h),
              child: Container(
                width: 1,
                height: 16.h,
                color: AppColors.textSecondary.withValues(alpha: 0.3),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.secondary,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    trip.destination,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${_formatTime(trip.startTime)} - ${_formatTime(trip.endTime)}',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                _buildTripStatusChip(context, trip.status),
              ],
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