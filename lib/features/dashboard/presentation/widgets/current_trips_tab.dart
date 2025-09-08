import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sih/features/dashboard/domain/entities/dashboard_data.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../bloc/dashboard_bloc.dart';

class CurrentTripsTab extends StatelessWidget {
  const CurrentTripsTab({super.key});

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
                  'Error loading trip data',
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

        if (state.dashboardData == null ||
            state.dashboardData!.currentTrips.isEmpty) {
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
            Icons.directions_car_outlined,
            size: 64.sp,
            color: AppColors.textSecondary.withOpacity(0.5),
          ),
          SizedBox(height: 16.h),
          Text(
            'No current trips',
            style: AppTextStyles.titleLarge.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Your ongoing and scheduled trips will appear here',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to Plan Trips tab
              context.read<DashboardBloc>().add(
                    const DashboardEvent.tabChanged(3),
                  );
            },
            icon: const Icon(Icons.add),
            label: const Text('Plan a Trip'),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, DashboardState state) {
    final trips = state.dashboardData!.currentTrips;
    
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTripStatusFilter(context),
          SizedBox(height: 16.h),
          ...trips.map((trip) => _buildTripCard(context, trip)),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, DashboardState state) {
    final trips = state.dashboardData!.currentTrips;
    
    return SingleChildScrollView(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTripStatusFilter(context),
          SizedBox(height: 24.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 2.5,
            ),
            itemCount: trips.length,
            itemBuilder: (context, index) {
              return _buildTripCard(context, trips[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTripStatusFilter(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildFilterChip(context, 'All', isSelected: true),
          SizedBox(width: 8.w),
          _buildFilterChip(context, 'In Progress'),
          SizedBox(width: 8.w),
          _buildFilterChip(context, 'Scheduled'),
          SizedBox(width: 8.w),
          _buildFilterChip(context, 'Completed'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(BuildContext context, String label, {bool isSelected = false}) {
    return FilterChip(
      selected: isSelected,
      showCheckmark: false,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: isSelected ? AppColors.primary : AppColors.textSecondary.withOpacity(0.3),
        ),
      ),
      selectedColor: AppColors.primary.withOpacity(0.1),
      label: Text(
        label,
        style: AppTextStyles.bodyMedium.copyWith(
          color: isSelected ? AppColors.primary : AppColors.textSecondary,
          fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
      onSelected: (selected) {
        // Filter trips by status
      },
    );
  }

  Widget _buildTripCard(BuildContext context, trip) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTripStatusChip(context, trip.status),
                Text(
                  '${_formatTime(trip.startTime)} - ${_formatTime(trip.endTime)}',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
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
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Container(
                width: 1,
                height: 20.h,
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                const Icon(
                  Icons.flag,
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
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.directions_car,
                      size: 16,
                      color: AppColors.textSecondary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '${trip.distance.toInt()} km',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    const Icon(
                      Icons.access_time,
                      size: 16,
                      color: AppColors.textSecondary,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '${trip.duration} mins',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                if (trip.status == TripStatus.inProgress)
                  OutlinedButton(
                    onPressed: () {
                      // Show trip details or navigation
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text('View'),
                  ),
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
        color: chipColor.withOpacity(0.1),
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