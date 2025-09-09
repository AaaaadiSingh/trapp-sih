import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/dashboard_bloc.dart';
import '../../../../core/services/trip_detection_service.dart';
import '../../../../core/services/trip_logging_service.dart';

class TripTrackingCard extends StatelessWidget {
  const TripTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, state),
                SizedBox(height: 16.h),
                if (state.currentTrip != null) ...[
                  _buildCurrentTripInfo(state.currentTrip!),
                  SizedBox(height: 16.h),
                ],
                if (state.tripStatistics != null) ...[
                  _buildTripStatistics(state.tripStatistics!),
                  SizedBox(height: 16.h),
                ],
                if (state.recentTrips.isNotEmpty) ...[
                  _buildRecentTrips(state.recentTrips),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, DashboardState state) {
    return Row(
      children: [
        Icon(
          Icons.route,
          color: Theme.of(context).primaryColor,
          size: 24.sp,
        ),
        SizedBox(width: 8.w),
        Text(
          'Trip Tracking',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Switch(
          value: state.isTripDetectionActive,
          onChanged: (value) {
            if (value) {
              context.read<DashboardBloc>().add(
                const DashboardEvent.startTripDetection(),
              );
            } else {
              context.read<DashboardBloc>().add(
                const DashboardEvent.stopTripDetection(),
              );
            }
          },
        ),
      ],
    );
  }

  Widget _buildCurrentTripInfo(DetectedTrip trip) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.blue.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.trip_origin,
                color: Colors.blue,
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                'Current Trip',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: _getTripStateColor(trip.state),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  _getTripStateText(trip.state),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _buildTripStat(
                  'Distance',
                  '${(trip.totalDistance / 1000).toStringAsFixed(2)} km',
                  Icons.straighten,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildTripStat(
                  'Duration',
                  _formatDuration(trip.duration),
                  Icons.timer,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: _buildTripStat(
                  'Avg Speed',
                  '${(trip.averageSpeed * 3.6).toStringAsFixed(1)} km/h',
                  Icons.speed,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildTripStat(
                  'Max Speed',
                  '${(trip.maxSpeed * 3.6).toStringAsFixed(1)} km/h',
                  Icons.flash_on,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTripStatistics(TripStatistics stats) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trip Statistics',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                'Total Trips',
                stats.totalTrips.toString(),
                Icons.list_alt,
                Colors.green,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildStatCard(
                'Total Distance',
                '${(stats.totalDistance / 1000).toStringAsFixed(1)} km',
                Icons.straighten,
                Colors.blue,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _buildStatCard(
                'Total Time',
                _formatDuration(stats.totalDuration),
                Icons.timer,
                Colors.orange,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildStatCard(
                'Avg Speed',
                '${(stats.averageSpeed * 3.6).toStringAsFixed(1)} km/h',
                Icons.speed,
                Colors.purple,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRecentTrips(List<TripLog> trips) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Trips',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.h),
        ...trips.take(3).map((trip) => _buildTripItem(trip)),
      ],
    );
  }

  Widget _buildTripItem(TripLog trip) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.trip_origin,
            color: Colors.grey[600],
            size: 16.sp,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trip.formattedDistance,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${trip.formattedDuration} • ${trip.formattedAverageSpeed}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Text(
            _formatTime(trip.startTime),
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTripStat(String label, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 16.sp,
              color: Colors.grey[600],
            ),
            SizedBox(width: 4.w),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 16.sp,
                color: color,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Color _getTripStateColor(TripState state) {
    switch (state) {
      case TripState.idle:
        return Colors.grey;
      case TripState.moving:
        return Colors.green;
      case TripState.stopped:
        return Colors.orange;
    }
  }

  String _getTripStateText(TripState state) {
    switch (state) {
      case TripState.idle:
        return 'Idle';
      case TripState.moving:
        return 'Moving';
      case TripState.stopped:
        return 'Stopped';
    }
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    
    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}