import 'package:flutter/material.dart';

import '../../../../core/services/motion_detection_service.dart';

/// Widget displaying motion detection information and movement patterns
class MotionDetectionCard extends StatelessWidget {
  final MotionDetectionService motionDetectionService;

  const MotionDetectionCard({
    super.key,
    required this.motionDetectionService,
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
                  Icons.directions_walk,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Motion Detection',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<MotionData>(
              stream: motionDetectionService.motionStream,
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

                final motionData = snapshot.data!;
                return _buildMotionData(context, motionData);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMotionData(BuildContext context, MotionData data) {
    return Column(
      children: [
        // Movement pattern section
        _buildMovementPatternSection(context, data),
        const SizedBox(height: 16),
        
        // Sensor data section
        _buildSensorDataSection(context, data),
        const SizedBox(height: 16),
        
        // Motion metrics section
        _buildMotionMetricsSection(context, data),
        const SizedBox(height: 16),
        
        // Action buttons
        _buildActionButtons(context),
      ],
    );
  }

  Widget _buildMovementPatternSection(BuildContext context, MotionData data) {
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
                _getMovementIcon(data.pattern),
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Movement Pattern',
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
                  'Pattern',
                  _getMovementDisplayName(data.pattern),
                  _getMovementIcon(data.pattern),
                  _getMovementColor(data.pattern),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Confidence',
                  '${(data.confidence * 100).toStringAsFixed(1)}%',
                  Icons.psychology,
                  Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildInfoTile(
                  'Speed',
                  '${(data.speed * 3.6).toStringAsFixed(1)} km/h',
                  Icons.speed,
                  Colors.orange,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Activity Level',
                  _getActivityLevel(data.confidence),
                  Icons.fitness_center,
                  _getActivityColor(data.confidence),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSensorDataSection(BuildContext context, MotionData data) {
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
                'Sensor Data',
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
                  'Acceleration',
                  '${data.acceleration.toStringAsFixed(2)} m/s²',
                  Icons.trending_up,
                  Colors.red,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildInfoTile(
                  'Speed',
                  '${data.speed.toStringAsFixed(2)} m/s',
                  Icons.speed,
                  Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMotionMetricsSection(BuildContext context, MotionData data) {
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
                'Motion Metrics',
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
                child: _buildMetricIndicator(
                  'Moving Status',
                  data.isMoving ? 1.0 : 0.0,
                  Colors.purple,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildMetricIndicator(
                  'Confidence',
                  data.confidence,
                  Colors.teal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTile(String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Icon(icon, size: 16, color: color),
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
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }



  Widget _buildMetricIndicator(String label, double value, Color color) {
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
          value: value.clamp(0.0, 1.0),
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

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _calibrateSensors(context),
            icon: const Icon(Icons.tune, size: 18),
            label: const Text('Calibrate'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _showMotionHistory(context),
            icon: const Icon(Icons.history, size: 18),
            label: const Text('History'),
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
            'Motion Detection Error',
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
            Icons.sensors_off,
            color: Colors.grey,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            'No Motion Data',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Start motion detection to see sensor data',
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

  IconData _getMovementIcon(MovementPattern pattern) {
    switch (pattern) {
      case MovementPattern.stationary:
        return Icons.stop;
      case MovementPattern.walking:
        return Icons.directions_walk;
      case MovementPattern.cycling:
        return Icons.directions_bike;
      case MovementPattern.vehicle:
        return Icons.directions_car;
    }
  }

  String _getMovementDisplayName(MovementPattern pattern) {
    switch (pattern) {
      case MovementPattern.stationary:
        return 'Stationary';
      case MovementPattern.walking:
        return 'Walking';
      case MovementPattern.cycling:
        return 'Cycling';
      case MovementPattern.vehicle:
        return 'Vehicle';
    }
  }

  Color _getMovementColor(MovementPattern pattern) {
    switch (pattern) {
      case MovementPattern.stationary:
        return Colors.grey;
      case MovementPattern.walking:
        return Colors.green;
      case MovementPattern.cycling:
        return Colors.blue;
      case MovementPattern.vehicle:
        return Colors.red;
    }
  }

  String _getActivityLevel(double level) {
    if (level < 0.2) return 'Low';
    if (level < 0.5) return 'Moderate';
    if (level < 0.8) return 'High';
    return 'Very High';
  }

  Color _getActivityColor(double level) {
    if (level < 0.2) return Colors.blue;
    if (level < 0.5) return Colors.green;
    if (level < 0.8) return Colors.orange;
    return Colors.red;
  }



  void _calibrateSensors(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Calibrate Sensors'),
        content: const Text(
          'Place your device on a flat surface and keep it still for 10 seconds to calibrate the motion sensors.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Sensor calibration started...'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }

  void _showMotionHistory(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Motion History'),
        content: SizedBox(
          width: double.maxFinite,
          height: 300,
          child: StreamBuilder<MotionData>(
            stream: motionDetectionService.motionStream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: Text('No motion history available'),
                );
              }
              
              // In a real implementation, you would show historical data
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(_getMovementIcon(MovementPattern.walking)),
                    title: Text('Motion Event ${index + 1}'),
                    subtitle: Text('${DateTime.now().subtract(Duration(minutes: index * 5))}'),
                    trailing: Text('${(0.8 * 100).toStringAsFixed(0)}%'),
                  );
                },
              );
            },
          ),
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