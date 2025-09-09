import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart' hide State;
import '../../../../core/theme/app_colors.dart';
import '../../../../core/services/location_service.dart';
import '../../../../core/di/injection.dart';

class LocationConsentForm extends StatefulWidget {
  final Function(bool locationConsent, bool backgroundLocationConsent) onConsentChanged;
  final bool initialLocationConsent;
  final bool initialBackgroundLocationConsent;

  const LocationConsentForm({
    super.key,
    required this.onConsentChanged,
    this.initialLocationConsent = false,
    this.initialBackgroundLocationConsent = false,
  });

  @override
  State<LocationConsentForm> createState() => _LocationConsentFormState();
}

class _LocationConsentFormState extends State<LocationConsentForm> {
  late bool _locationConsent;
  late bool _backgroundLocationConsent;
  bool _isCheckingPermissions = false;
  final LocationService _locationService = getIt<LocationService>();

  @override
  void initState() {
    super.initState();
    _locationConsent = widget.initialLocationConsent;
    _backgroundLocationConsent = widget.initialBackgroundLocationConsent;
  }

  Future<void> _checkAndRequestPermissions() async {
    setState(() {
      _isCheckingPermissions = true;
    });

    try {
      if (_locationConsent) {
        final permissionResult = await _locationService.requestLocationPermission();
        permissionResult.fold(
          (failure) {
            setState(() {
              _locationConsent = false;
              _backgroundLocationConsent = false;
            });
            _showPermissionDeniedDialog();
          },
          (hasPermission) {
            if (_backgroundLocationConsent) {
              // Background location permission is handled by the system
              // when location permission is granted
              _showBackgroundPermissionInfo();
            }
          },
        );
      }
    } finally {
      setState(() {
        _isCheckingPermissions = false;
      });
      widget.onConsentChanged(_locationConsent, _backgroundLocationConsent);
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Location Permission Required'),
        content: const Text(
          'Location access is required for trip tracking. Please enable location permissions in your device settings.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showBackgroundPermissionInfo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Background Location'),
        content: const Text(
          'Background location access was not granted. You can still use location features when the app is open.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Location Services',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Basic location consent
            CheckboxListTile(
              value: _locationConsent,
              onChanged: _isCheckingPermissions ? null : (value) {
                setState(() {
                  _locationConsent = value ?? false;
                  if (!_locationConsent) {
                    _backgroundLocationConsent = false;
                  }
                });
                _checkAndRequestPermissions();
              },
              title: const Text('Enable Location Tracking'),
              subtitle: const Text(
                'Allow the app to access your location for trip tracking and personalized features.',
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            
            // Background location consent (only show if basic location is enabled)
            if (_locationConsent) ...[
              const SizedBox(height: 8),
              CheckboxListTile(
                value: _backgroundLocationConsent,
                onChanged: _isCheckingPermissions ? null : (value) {
                  setState(() {
                    _backgroundLocationConsent = value ?? false;
                  });
                  _checkAndRequestPermissions();
                },
                title: const Text('Background Location Access'),
                subtitle: const Text(
                  'Allow location tracking when the app is in the background for automatic trip detection.',
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
            
            const SizedBox(height: 16),
            
            // Privacy notice
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.primary.withOpacity(0.3),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: AppColors.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Your location data is encrypted and stored securely. You can disable location tracking at any time in settings.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            if (_isCheckingPermissions) ...[
              const SizedBox(height: 16),
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}