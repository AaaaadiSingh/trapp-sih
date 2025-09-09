import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../bloc/dashboard_bloc.dart';

class LocationTrackingCard extends StatelessWidget {
  const LocationTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location Tracking',
                      style: AppTextStyles.titleMedium.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _buildTrackingToggle(context, state),
                  ],
                ),
                SizedBox(height: 16.h),
                _buildLocationInfo(context, state),
                if (state.locationHistory.isNotEmpty) ...[
                  SizedBox(height: 16.h),
                  _buildLocationStats(context, state),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTrackingToggle(BuildContext context, DashboardState state) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          state.isLocationTracking ? Icons.location_on : Icons.location_off,
          color: state.isLocationTracking ? AppColors.success : AppColors.textSecondary,
          size: 20,
        ),
        SizedBox(width: 8.w),
        Switch(
          value: state.isLocationTracking,
          onChanged: (value) {
            if (value) {
              context.read<DashboardBloc>().add(
                const DashboardEvent.startLocationTracking(),
              );
            } else {
              context.read<DashboardBloc>().add(
                const DashboardEvent.stopLocationTracking(),
              );
            }
          },
          activeColor: AppColors.primary,
        ),
      ],
    );
  }

  Widget _buildLocationInfo(BuildContext context, DashboardState state) {
    if (state.currentLocation == null) {
      return Row(
        children: [
          Icon(
            Icons.location_searching,
            color: AppColors.textSecondary,
            size: 20,
          ),
          SizedBox(width: 8.w),
          Text(
            state.isLocationTracking ? 'Getting location...' : 'Location tracking disabled',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      );
    }

    final position = state.currentLocation!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.my_location,
              color: AppColors.primary,
              size: 20,
            ),
            SizedBox(width: 8.w),
            Text(
              'Current Location',
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lat: ${position.latitude.toStringAsFixed(6)}',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                'Lng: ${position.longitude.toStringAsFixed(6)}',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                'Accuracy: ${position.accuracy.toStringAsFixed(1)}m',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLocationStats(BuildContext context, DashboardState state) {
    final history = state.locationHistory;
    if (history.length < 2) return const SizedBox.shrink();

    // Calculate total distance traveled
    double totalDistance = 0;
    for (int i = 1; i < history.length; i++) {
      totalDistance += Geolocator.distanceBetween(
        history[i - 1].latitude,
        history[i - 1].longitude,
        history[i].latitude,
        history[i].longitude,
      );
    }

    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            icon: Icons.straighten,
            label: 'Distance',
            value: '${(totalDistance / 1000).toStringAsFixed(2)} km',
          ),
          _buildStatItem(
            icon: Icons.timeline,
            label: 'Points',
            value: '${history.length}',
          ),
          _buildStatItem(
            icon: Icons.speed,
            label: 'Speed',
            value: '${(state.currentLocation?.speed ?? 0).toStringAsFixed(1)} m/s',
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 20,
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: AppTextStyles.bodySmall.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}