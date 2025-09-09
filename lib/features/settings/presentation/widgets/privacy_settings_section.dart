import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../bloc/settings_bloc.dart';
import '../bloc/settings_event.dart';
import '../bloc/settings_state.dart';

class PrivacySettingsSection extends StatelessWidget {
  const PrivacySettingsSection({super.key});

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
                      Icons.privacy_tip_outlined,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Privacy Controls',
                      style: AppTextStyles.titleLarge.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                
                // Location Consent
                _buildSwitchTile(
                  context,
                  title: 'Location Access',
                  subtitle: 'Allow the app to access your location for trip tracking',
                  value: state.locationConsent,
                  onChanged: state.isSaving ? null : (value) {
                    context.read<SettingsBloc>().add(
                      SettingsEvent.updateLocationConsent(value),
                    );
                  },
                ),
                
                // Background Location Consent (only if location is enabled)
                if (state.locationConsent) ...[
                  Divider(color: AppColors.outline.withValues(alpha: 0.3)),
                  _buildSwitchTile(
                    context,
                    title: 'Background Location',
                    subtitle: 'Track location when app is in background for automatic trip detection',
                    value: state.backgroundLocationConsent,
                    onChanged: state.isSaving ? null : (value) {
                      context.read<SettingsBloc>().add(
                        SettingsEvent.updateBackgroundLocationConsent(value),
                      );
                    },
                  ),
                ],
                
                Divider(color: AppColors.outline.withValues(alpha: 0.3)),
                
                // Data Sharing Consent
                _buildSwitchTile(
                  context,
                  title: 'Data Sharing',
                  subtitle: 'Share anonymized data to improve transportation research',
                  value: state.dataSharingConsent,
                  onChanged: state.isSaving ? null : (value) {
                    context.read<SettingsBloc>().add(
                      SettingsEvent.updateDataSharingConsent(value),
                    );
                  },
                ),
                
                Divider(color: AppColors.outline.withValues(alpha: 0.3)),
                
                // Analytics Consent
                _buildSwitchTile(
                  context,
                  title: 'Analytics',
                  subtitle: 'Help improve the app by sharing usage analytics',
                  value: state.analyticsConsent,
                  onChanged: state.isSaving ? null : (value) {
                    context.read<SettingsBloc>().add(
                      SettingsEvent.updateAnalyticsConsent(value),
                    );
                  },
                ),
                
                if (state.isSaving) ...[
                  SizedBox(height: 16.h),
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSwitchTile(
    BuildContext context, {
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool>? onChanged,
  }) {
    return SwitchListTile(
      title: Text(
        title,
        style: AppTextStyles.titleMedium.copyWith(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: AppTextStyles.bodySmall.copyWith(
          color: AppColors.textSecondary,
        ),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: AppColors.primary,
      contentPadding: EdgeInsets.zero,
    );
  }
}