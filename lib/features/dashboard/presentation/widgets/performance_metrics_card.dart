import 'package:flutter/material.dart';

import '../../../../core/services/performance_logging_service.dart';

/// Widget displaying performance metrics and system statistics
class PerformanceMetricsCard extends StatelessWidget {
  final PerformanceLoggingService performanceLoggingService;

  const PerformanceMetricsCard({
    super.key,
    required this.performanceLoggingService,
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
                  Icons.analytics,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Performance Metrics',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            FutureBuilder<PerformanceSessionSummary>(
              future: Future.value(performanceLoggingService.getSessionSummary()),
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

                final summary = snapshot.data!;
                return _buildPerformanceData(context, summary);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPerformanceData(BuildContext context, PerformanceSessionSummary summary) {
    return Column(
      children: [
        // Location performance section
        _buildLocationPerformanceSection(context, summary),
        const SizedBox(height: 16),
        
        // System performance section
        _buildSystemPerformanceSection(context, summary),
        const SizedBox(height: 16),
        
        // Battery performance section
        _buildBatteryPerformanceSection(context, summary),
        const SizedBox(height: 16),
        
        // Action buttons
        _buildActionButtons(context),
      ],
    );
  }

  Widget _buildLocationPerformanceSection(BuildContext context, PerformanceSessionSummary summary) {
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
                'Location Performance',
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
                child: _buildMetricTile(
                  'Avg Accuracy',
                  '${summary.averageLocationAccuracy.toStringAsFixed(1)}m',
                  Icons.my_location,
                  _getAccuracyColor(summary.averageLocationAccuracy),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildMetricTile(
                  'Accuracy StdDev',
                  '${summary.locationAccuracyStdDev.toStringAsFixed(1)}m',
                  Icons.scatter_plot,
                  Colors.orange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildMetricTile(
                  'Total Updates',
                  '${summary.totalLocationUpdates}',
                  Icons.update,
                  Colors.blue,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildMetricTile(
                  'Avg Confidence',
                  '${(summary.averageConfidence * 100).toStringAsFixed(1)}%',
                  Icons.psychology,
                  _getConfidenceColor(summary.averageConfidence),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSystemPerformanceSection(BuildContext context, PerformanceSessionSummary summary) {
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
                Icons.memory,
                color: Theme.of(context).colorScheme.secondary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'System Performance',
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
                child: _buildMetricTile(
                  'Performance Score',
                  '${(summary.systemPerformanceScore * 100).toStringAsFixed(1)}%',
                  Icons.speed,
                  _getPerformanceColor(summary.systemPerformanceScore),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildMetricTile(
                  'Session Duration',
                  _formatDuration(summary.sessionDuration),
                  Icons.timer,
                  Colors.purple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _buildProgressIndicator(
                  'Trip Accuracy',
                  summary.tripDetectionAccuracy,
                  Colors.red,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildProgressIndicator(
                  'Avg Confidence',
                  summary.averageConfidence,
                  Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBatteryPerformanceSection(BuildContext context, PerformanceSessionSummary summary) {
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
                Icons.battery_std,
                color: Theme.of(context).colorScheme.tertiary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Battery Performance',
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
                child: _buildMetricTile(
                  'Consumption Rate',
                  '${summary.batteryConsumptionRate.toStringAsFixed(2)}%/h',
                  Icons.battery_alert,
                  _getBatteryColor(summary.batteryConsumptionRate),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildMetricTile(
                  'Total Consumed',
                  '${summary.totalBatteryConsumed.toStringAsFixed(1)}%',
                  Icons.battery_0_bar,
                  Colors.orange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildProgressIndicator(
            'Battery Efficiency',
            1.0 - (summary.batteryConsumptionRate / 10.0), // Normalize to 0-1
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildMetricTile(String label, String value, IconData icon, Color color) {
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

  Widget _buildProgressIndicator(String label, double value, Color color) {
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
            onPressed: () => _exportMetrics(context),
            icon: const Icon(Icons.download, size: 18),
            label: const Text('Export'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _showDetailedMetrics(context),
            icon: const Icon(Icons.info, size: 18),
            label: const Text('Details'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _resetMetrics(context),
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('Reset'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
              backgroundColor: Colors.orange,
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
            'Performance Metrics Error',
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
            Icons.analytics_outlined,
            color: Colors.grey,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            'No Performance Data',
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Start tracking to collect performance metrics',
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

  Color _getAccuracyColor(double accuracy) {
    if (accuracy <= 5) return Colors.green;
    if (accuracy <= 10) return Colors.orange;
    return Colors.red;
  }

  Color _getConfidenceColor(double confidence) {
    if (confidence >= 0.8) return Colors.green;
    if (confidence >= 0.6) return Colors.orange;
    return Colors.red;
  }

  Color _getPerformanceColor(double score) {
    if (score >= 0.8) return Colors.green;
    if (score >= 0.6) return Colors.orange;
    return Colors.red;
  }

  Color _getBatteryColor(double consumptionRate) {
    if (consumptionRate <= 2.0) return Colors.green;
    if (consumptionRate <= 5.0) return Colors.orange;
    return Colors.red;
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

  void _exportMetrics(BuildContext context) async {
    try {
      final data = await performanceLoggingService.exportPerformanceData();
      
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Performance metrics exported successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error exporting metrics: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showDetailedMetrics(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Detailed Performance Metrics'),
        content: SizedBox(
          width: double.maxFinite,
          height: 400,
          child: FutureBuilder<PerformanceSessionSummary>(
            future: Future.value(performanceLoggingService.getSessionSummary()),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              
              final summary = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailSection('Location Metrics', [
                      'Average Accuracy: ${summary.averageLocationAccuracy.toStringAsFixed(2)}m',
                      'Accuracy Std Dev: ${summary.locationAccuracyStdDev.toStringAsFixed(2)}m',
                      'Total Updates: ${summary.totalLocationUpdates}',
                      'Average Confidence: ${(summary.averageConfidence * 100).toStringAsFixed(1)}%',
                    ]),
                    const SizedBox(height: 16),
                    _buildDetailSection('System Metrics', [
                      'Performance Score: ${(summary.systemPerformanceScore * 100).toStringAsFixed(1)}%',
                      'Session Duration: ${_formatDuration(summary.sessionDuration)}',
                      'Total Location Updates: ${summary.totalLocationUpdates}',
                      'Total Trip Events: ${summary.totalTripEvents}',
                    ]),
                    const SizedBox(height: 16),
                    _buildDetailSection('Battery Metrics', [
                      'Consumption Rate: ${summary.batteryConsumptionRate.toStringAsFixed(2)}%/h',
                      'Total Consumed: ${summary.totalBatteryConsumed.toStringAsFixed(1)}%',
                      'Efficiency Score: ${((1.0 - summary.batteryConsumptionRate / 10.0) * 100).toStringAsFixed(1)}%',
                    ]),
                  ],
                ),
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

  Widget _buildDetailSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 4),
          child: Text(
            '• $item',
            style: const TextStyle(fontSize: 14),
          ),
        )),
      ],
    );
  }

  void _resetMetrics(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Performance Metrics'),
        content: const Text(
          'Are you sure you want to reset all performance metrics? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();
              try {
                await performanceLoggingService.cleanupOldMetrics();
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Performance metrics reset successfully'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error resetting metrics: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}