import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../bloc/settings_bloc.dart';
import '../bloc/settings_event.dart';
import '../bloc/settings_state.dart';

class DataManagementSection extends StatelessWidget {
  const DataManagementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.storage_outlined,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Data Management',
                      style: AppTextStyles.titleLarge.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                
                // Data Statistics
                _buildDataStatistics(state),
                
                SizedBox(height: 16.h),
                Divider(color: AppColors.outline.withOpacity(0.3)),
                SizedBox(height: 16.h),
                
                // Export Data Button
                _buildActionButton(
                  context,
                  icon: Icons.download_outlined,
                  title: 'Export My Data',
                  subtitle: 'Download all your data in JSON format',
                  onTap: state.isLoading ? null : () {
                    _showExportDialog(context);
                  },
                  color: AppColors.primary,
                ),
                
                SizedBox(height: 12.h),
                
                // Delete Data Button
                _buildActionButton(
                  context,
                  icon: Icons.delete_outline,
                  title: 'Delete My Data',
                  subtitle: 'Permanently remove all your data',
                  onTap: state.isLoading ? null : () {
                    _showDeleteDialog(context);
                  },
                  color: AppColors.error,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDataStatistics(SettingsState state) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.outline.withOpacity(0.3),
        ),
      ),
      child: Column(
        children: [
          _buildStatRow('Total Trips', '${state.totalTrips}'),
          SizedBox(height: 8.h),
          _buildStatRow('Location Points', '${state.locationPoints}'),
          SizedBox(height: 8.h),
          _buildStatRow('Data Size', state.dataSize),
          SizedBox(height: 8.h),
          _buildStatRow('Last Backup', state.lastBackup?.toString() ?? 'Never'),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        Text(
          value,
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback? onTap,
    required Color color,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color.withOpacity(0.3),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 24.sp,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.titleMedium.copyWith(
                      color: color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: color.withOpacity(0.7),
              size: 16.sp,
            ),
          ],
        ),
      ),
    );
  }

  void _showExportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Export Data'),
        content: const Text(
          'This will create a JSON file containing all your data including trips, locations, and preferences. The file will be saved to your device.\n\nDo you want to continue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<SettingsBloc>().add(
                const SettingsEvent.exportData(),
              );
            },
            child: const Text('Export'),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Delete All Data',
          style: TextStyle(color: AppColors.error),
        ),
        content: const Text(
          'This action cannot be undone. All your trips, locations, preferences, and account data will be permanently deleted.\n\nAre you sure you want to continue?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              _showFinalDeleteConfirmation(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showFinalDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Final Confirmation',
          style: TextStyle(color: AppColors.error),
        ),
        content: const Text(
          'Type "DELETE" to confirm permanent deletion of all your data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.deleteAllData(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.error,
                ),
                child: state.isLoading
                    ? SizedBox(
                        width: 16.w,
                        height: 16.h,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text('DELETE'),
              );
            },
          ),
        ],
      ),
    );
  }
}