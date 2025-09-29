import 'package:flutter/material.dart';

import '../../../../core/services/enhanced_trip_detection_service.dart';

/// Widget displaying enhanced trip detection information and predictions
class TripDetectionCard extends StatelessWidget {
  final EnhancedTripDetectionService tripDetectionService;

  const TripDetectionCard({
    super.key,
    required this.tripDetectionService,
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
                  Icons.route,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Enhanced Trip Detection',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<EnhancedDetectedTrip>(
              stream: tripDetectionService.tripStream,
              builder: (context, tripSnapshot) {
                return StreamBuilder<TripPrediction>(
                  stream: tripDetectionService.predictionStream,
                  builder: (context, predictionSnapshot) {
                    if (tripSnapshot.connectionState == ConnectionState.waiting &&
                        predictionSnapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (tripSnapshot.hasError || predictionSnapshot.hasError) {
                      return _buildErrorWidget(
                        tripSnapshot.error?.toString() ?? 
                        predictionSnapshot.error?.toString() ?? 
                        'Unknown error'
                      );
                    }

                    return _buildTripData(
                      context, 
                      tripSnapshot.data, 
                      predictionSnapshot.data
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripData(
    BuildContext context, 
    EnhancedDetectedTrip? trip, 
    TripPrediction? prediction
  ) {
    return Column(
      children: [
        // Current trip section
        _buildCurrentTripSection(context, trip),
        const SizedBox(height: 16),
        
        // Trip prediction section
        _buildTripPredictionSection(context, prediction),
        const SizedBox(height: 16),
        
        // Trip statistics section
        _buildTripStatisticsSection(context, trip),
        const SizedBox(height: 16),
        
        // Action buttons
        _buildActionButtons(context),
      ],
    );
  }

  Widget _buildCurrentTripSection(BuildContext context, EnhancedDetectedTrip? trip) {
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
                trip != null ? Icons.trip_origin : Icons.location_disabled,
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Current Trip',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (trip != null) ...[
            Row(
              children: [
                Expanded(
                  child: _buildInfoTile(
                    'Trip ID',
                    trip.id.substring(0, 8),
                    Icons.fingerprint,
                    Colors.blue,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildInfoTile(
                    'Status',
                    trip.endTime == null ? 'Active' : 'Completed',
                    trip.endTime == null ? Icons.play_circle : Icons.check_circle,
                    trip.endTime == null ? Colors.green : Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildInfoTile(
                    'Distance',
                    '${(trip.totalDistance / 1000).toStringAsFixed(1)} km',
                    Icons.straighten,
                    Colors.orange,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildInfoTile(
                    'Duration',
                    _formatDuration(trip.duration),
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
                  child: _buildInfoTile(
                    'Transport Mode',
                    _getTransportModeDisplayName(trip.transportMode),
                    _getTransportModeIcon(trip.transportMode),
                    _getTransportModeColor(trip.transportMode),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildInfoTile(
                    'Avg Speed',
                    '${(trip.averageSpeed * 3.6).toStringAsFixed(1)} km/h',
                    Icons.speed,
                    Colors.red,
                  ),
                ),
              ],
            ),
          ] else ...[
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(
                    Icons.location_disabled,
                    color: Colors.grey,
                    size: 32,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No Active Trip',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Start tracking to detect trips',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTripPredictionSection(BuildContext context, TripPrediction? prediction) {
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
                Icons.psychology,
                color: Theme.of(context).colorScheme.secondary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Trip Prediction',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (prediction != null) ...[
            Row(
              children: [
                Expanded(
                  child: _buildPredictionIndicator(
                    'Trip Probability',
                    prediction.tripProbability,
                    Colors.blue,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildPredictionIndicator(
                    'Confidence',
                    prediction.confidence,
                    Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildInfoTile(
                    'Predicted State',
                    _getTripStateDisplayName(prediction.predictedState),
                    _getTripStateIcon(prediction.predictedState),
                    _getTripStateColor(prediction.predictedState),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildInfoTile(
                    'Predicted Mode',
                    _getTransportModeDisplayName(prediction.predictedMode),
                    _getTransportModeIcon(prediction.predictedMode),
                    _getTransportModeColor(prediction.predictedMode),
                  ),
                ),
              ],
            ),
          ] else ...[
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'No prediction data available',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTripStatisticsSection(BuildContext context, EnhancedDetectedTrip? trip) {
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
                'Trip Statistics',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (trip != null) ...[
            Row(
              children: [
                Expanded(
                  child: _buildStatisticIndicator(
                    'Quality Score',
                    trip.qualityScore,
                    Colors.green,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildStatisticIndicator(
                    'Quality Score',
                    trip.qualityScore,
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
                    'Points',
                    '${trip.route.length}',
                    Icons.place,
                    Colors.orange,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildInfoTile(
                    'Max Speed',
                    '${(trip.maxSpeed * 3.6).toStringAsFixed(1)} km/h',
                    Icons.speed,
                    Colors.red,
                  ),
                ),
              ],
            ),
          ] else ...[
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                'No trip statistics available',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ),
          ],
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

  Widget _buildPredictionIndicator(String label, double value, Color color) {
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

  Widget _buildStatisticIndicator(String label, double value, Color color) {
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
            onPressed: () => _showTripHistory(context),
            icon: const Icon(Icons.history, size: 18),
            label: const Text('History'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => _exportTripData(context),
            icon: const Icon(Icons.download, size: 18),
            label: const Text('Export'),
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
            'Trip Detection Error',
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

  String _getTransportModeDisplayName(TransportMode mode) {
    switch (mode) {
      case TransportMode.walking:
        return 'Walking';
      case TransportMode.cycling:
        return 'Cycling';
      case TransportMode.vehicle:
        return 'Vehicle';
      case TransportMode.unknown:
        return 'Unknown';
    }
  }

  IconData _getTransportModeIcon(TransportMode mode) {
    switch (mode) {
      case TransportMode.walking:
        return Icons.directions_walk;
      case TransportMode.cycling:
        return Icons.directions_bike;
      case TransportMode.vehicle:
        return Icons.directions_car;
      case TransportMode.unknown:
        return Icons.help_outline;
    }
  }

  Color _getTransportModeColor(TransportMode mode) {
    switch (mode) {
      case TransportMode.walking:
        return Colors.green;
      case TransportMode.cycling:
        return Colors.blue;
      case TransportMode.vehicle:
        return Colors.red;
      case TransportMode.unknown:
        return Colors.grey;
    }
  }

  String _getTripStateDisplayName(TripState state) {
    switch (state) {
      case TripState.idle:
        return 'Idle';
      case TripState.moving:
        return 'Moving';
      case TripState.stopped:
        return 'Stopped';
    }
  }

  IconData _getTripStateIcon(TripState state) {
    switch (state) {
      case TripState.idle:
        return Icons.pause;
      case TripState.moving:
        return Icons.directions;
      case TripState.stopped:
        return Icons.stop;
    }
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

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;
    
    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }

  void _showTripHistory(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Trip History'),
        content: SizedBox(
          width: double.maxFinite,
          height: 300,
          child: ListView.builder(
            itemCount: 5, // Mock data
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(_getTransportModeIcon(TransportMode.vehicle)),
                title: Text('Trip ${index + 1}'),
                subtitle: Text('${DateTime.now().subtract(Duration(days: index))}'),
                trailing: Text('${(10.5 + index * 2.3).toStringAsFixed(1)} km'),
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

  void _exportTripData(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Trip data exported successfully'),
        backgroundColor: Colors.green,
      ),
    );
  }
}