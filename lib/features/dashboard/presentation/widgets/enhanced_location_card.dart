import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/services/enhanced_location_service.dart';
import '../../../../core/services/sensor_fusion_service.dart';

/// Widget displaying enhanced location information with sensor fusion data
class EnhancedLocationCard extends StatelessWidget {
  final EnhancedLocationService locationService;
  final SensorFusionService sensorFusionService;

  const EnhancedLocationCard({
    super.key,
    required this.locationService,
    required this.sensorFusionService,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Enhanced Location',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<EnhancedLocationData>(
              stream: locationService.locationStream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return _buildErrorWidget(snapshot.error.toString());
                }

                if (!snapshot.hasData) {
                  return _buildNoDataWidget();
                }

                final locationData = snapshot.data!;
                return _buildLocationData(context, locationData);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationData(BuildContext context, EnhancedLocationData data) {
    return Column(
      children: [
        // Primary location information
        _buildLocationSection(context, data),
        const SizedBox(height: 16),
        
        // Sensor fusion information
        _buildSensorFusionSection(context, data),
        const SizedBox(height: 16),
        
        // Quality metrics
        _buildQualitySection(context, data),
        const SizedBox(height: 16),
        
        // Action buttons
        _buildActionButtons(context),
      ],
    );
  }

  Widget _buildLocationSection(BuildContext context, EnhancedLocationData data) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.gps_fixed,
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Current Position',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildInfoTile(
                  'Latitude',
                  '${data.position.latitude.toStringAsFixed(6)}°',
                  Icons.north,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Longitude',
                  '${data.position.longitude.toStringAsFixed(6)}°',
                  Icons.east,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildInfoTile(
                  'Altitude',
                  '${data.position.altitude.toStringAsFixed(1)}m',
                  Icons.height,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Speed',
                  '${(data.position.speed * 3.6).toStringAsFixed(1)} km/h',
                  Icons.speed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSensorFusionSection(BuildContext context, EnhancedLocationData data) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.sensors,
                color: Theme.of(context).colorScheme.secondary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Sensor Fusion',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildInfoTile(
                  'Source',
                  _getSourceDisplayName(data.source),
                  _getSourceIcon(data.source),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Accuracy',
                  '${data.position.accuracy.toStringAsFixed(1)}m',
                  Icons.my_location,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildInfoTile(
                  'Heading',
                  '${data.position.heading.toStringAsFixed(0)}°',
                  Icons.navigation,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Timestamp',
                  _formatTimestamp(data.timestamp),
                  Icons.access_time,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQualitySection(BuildContext context, EnhancedLocationData data) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.analytics,
                color: Theme.of(context).colorScheme.tertiary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Quality Metrics',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildQualityIndicator(
                  'Confidence',
                  data.confidence,
                  Colors.blue,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildQualityIndicator(
                  'Accuracy',
                  data.position.accuracy < 10 ? 1.0 : (data.position.accuracy < 50 ? 0.7 : 0.4),
                  Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQualityIndicator(String label, double value, Color color) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: value,
          backgroundColor: color.withOpacity(0.2),
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
        const SizedBox(height: 4),
        Text(
          '${(value * 100).toStringAsFixed(1)}%',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoTile(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _refreshLocation(context),
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('Refresh'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _showLocationDetails(context),
            icon: const Icon(Icons.info, size: 18),
            label: const Text('Details'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorWidget(String error) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            'Location Error',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            error,
            style: TextStyle(
              color: Colors.red[700],
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildNoDataWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(
            Icons.location_disabled,
            color: Colors.grey,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            'No Location Data',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Start tracking to see location information',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  String _getSourceDisplayName(LocationSource source) {
    switch (source) {
      case LocationSource.gps:
        return 'GPS';
      case LocationSource.network:
        return 'Network';
      case LocationSource.fused:
        return 'Fused';
    }
  }

  IconData _getSourceIcon(LocationSource source) {
    switch (source) {
      case LocationSource.gps:
        return Icons.satellite_alt;
      case LocationSource.network:
        return Icons.wifi;
      case LocationSource.fused:
        return Icons.merge_type;
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds}s ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else {
      return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
    }
  }

  void _refreshLocation(BuildContext context) {
    // Trigger a manual location update
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Refreshing location...'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void _showLocationDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Location Details'),
        content: StreamBuilder<EnhancedLocationData>(
          stream: locationService.locationStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text('No location data available');
            }
            
            final data = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Provider: ${data.source}'),
                Text('Latitude: ${data.position.latitude}'),
                Text('Longitude: ${data.position.longitude}'),
                Text('Altitude: ${data.position.altitude}m'),
                Text('Accuracy: ${data.position.accuracy}m'),
                Text('Speed: ${data.position.speed}m/s'),
                Text('Heading: ${data.position.heading}°'),
                Text('Confidence: ${(data.confidence * 100).toStringAsFixed(1)}%'),
                Text('Battery Optimized: ${data.batteryOptimized ? 'Yes' : 'No'}'),
                Text('Timestamp: ${data.timestamp}'),
              ],
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}