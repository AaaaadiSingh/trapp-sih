import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/enhanced_location_service.dart';
import '../../../../core/services/enhanced_trip_detection_service.dart';
import '../../../../core/services/motion_detection_service.dart';
import '../../../../core/services/sensor_fusion_service.dart';
import '../../../../core/services/performance_logging_service.dart';
import '../../../../core/services/location_configuration_service.dart';
import '../widgets/enhanced_location_card.dart';
import '../widgets/motion_detection_card.dart';
import '../widgets/performance_metrics_card.dart';
import '../widgets/trip_detection_card.dart';
import '../widgets/configuration_panel.dart';

/// Enhanced dashboard screen showcasing advanced location tracking features
class EnhancedDashboardScreen extends StatefulWidget {
  const EnhancedDashboardScreen({super.key});

  @override
  State<EnhancedDashboardScreen> createState() =>
      _EnhancedDashboardScreenState();
}

class _EnhancedDashboardScreenState extends State<EnhancedDashboardScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  // Services
  final _enhancedLocationService = GetIt.instance<EnhancedLocationService>();
  final _enhancedTripDetectionService =
      GetIt.instance<EnhancedTripDetectionService>();
  final _motionDetectionService = GetIt.instance<MotionDetectionService>();
  final _sensorFusionService = GetIt.instance<SensorFusionService>();
  final _performanceLoggingService =
      GetIt.instance<PerformanceLoggingService>();
  final _configurationService = GetIt.instance<LocationConfigurationService>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _initializeServices();
  }

  Future<void> _initializeServices() async {
    try {
      await _performanceLoggingService.initialize();
      await _configurationService.initialize();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error initializing services: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enhanced Location Tracking',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Navigate back to main dashboard
            context.go('/dashboard');
          },
        ),
        elevation: 2,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black.withOpacity(0.7),
          tabs: const [
            Tab(icon: Icon(Icons.location_on), text: 'Location'),
            Tab(icon: Icon(Icons.route), text: 'Trips'),
            Tab(icon: Icon(Icons.analytics), text: 'Analytics'),
            Tab(icon: Icon(Icons.settings), text: 'Config'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildLocationTab(),
          _buildTripsTab(),
          _buildAnalyticsTab(),
          _buildConfigurationTab(),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildLocationTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Enhanced Location Card
          EnhancedLocationCard(
            locationService: _enhancedLocationService,
            sensorFusionService: _sensorFusionService,
          ),
          const SizedBox(height: 16),

          // Motion Detection Card
          MotionDetectionCard(motionDetectionService: _motionDetectionService),
          const SizedBox(height: 16),

          // Real-time Status Card
          _buildStatusCard(),
        ],
      ),
    );
  }

  Widget _buildTripsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Trip Detection Card
          TripDetectionCard(
            tripDetectionService: _enhancedTripDetectionService,
          ),
          const SizedBox(height: 16),

          // Trip History Card
          _buildTripHistoryCard(),
          const SizedBox(height: 16),

          // Trip Predictions Card
          _buildTripPredictionsCard(),
        ],
      ),
    );
  }

  Widget _buildAnalyticsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Performance Metrics Card
          PerformanceMetricsCard(
            performanceLoggingService: _performanceLoggingService,
          ),
          const SizedBox(height: 16),

          // Accuracy Analytics Card
          _buildAccuracyAnalyticsCard(),
          const SizedBox(height: 16),

          // Battery Usage Card
          _buildBatteryUsageCard(),
        ],
      ),
    );
  }

  Widget _buildConfigurationTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ConfigurationPanel(
            configurationService:
                GetIt.instance<LocationConfigurationService>(),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard() {
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
                  Icons.info_outline,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'System Status',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<EnhancedLocationData>(
              stream: _enhancedLocationService.locationStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data!;
                  return Column(
                    children: [
                      _buildStatusRow(
                        'Location Source',
                        data.source.toString(),
                      ),
                      _buildStatusRow(
                        'Accuracy',
                        '${data.position.accuracy.toStringAsFixed(1)}m',
                      ),
                      _buildStatusRow(
                        'Confidence',
                        '${(data.confidence * 100).toStringAsFixed(1)}%',
                      ),
                      _buildStatusRow(
                        'Battery Optimized',
                        data.batteryOptimized ? 'Yes' : 'No',
                      ),
                      _buildStatusRow(
                        'Speed',
                        '${data.position.speed.toStringAsFixed(1)} m/s',
                      ),
                    ],
                  );
                } else {
                  return const Text(
                    'No location data available',
                    style: TextStyle(color: Colors.black),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripHistoryCard() {
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
                  Icons.history,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Recent Trips',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<EnhancedDetectedTrip>(
              stream: _enhancedTripDetectionService.tripStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final trip = snapshot.data!;
                  return Column(children: [_buildTripSummary(trip)]);
                } else {
                  return const Text(
                    'No recent trips',
                    style: TextStyle(color: Colors.black),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripPredictionsCard() {
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
                  Icons.psychology,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Trip Predictions',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<TripPrediction>(
              stream: _enhancedTripDetectionService.predictionStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final prediction = snapshot.data!;
                  return Column(
                    children: [
                      _buildStatusRow(
                        'Trip Probability',
                        '${(prediction.tripProbability * 100).toStringAsFixed(1)}%',
                      ),
                      _buildStatusRow(
                        'Predicted State',
                        prediction.predictedState.toString(),
                      ),
                      _buildStatusRow(
                        'Transport Mode',
                        prediction.predictedMode.toString(),
                      ),
                      _buildStatusRow(
                        'Confidence',
                        '${(prediction.confidence * 100).toStringAsFixed(1)}%',
                      ),
                    ],
                  );
                } else {
                  return const Text(
                    'No predictions available',
                    style: TextStyle(color: Colors.black),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccuracyAnalyticsCard() {
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
                  Icons.precision_manufacturing,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Accuracy Analytics',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            FutureBuilder<PerformanceSessionSummary>(
              future: Future.value(
                _performanceLoggingService.getSessionSummary(),
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final summary = snapshot.data!;
                  return Column(
                    children: [
                      _buildStatusRow(
                        'Avg Accuracy',
                        '${summary.averageLocationAccuracy.toStringAsFixed(1)}m',
                      ),
                      _buildStatusRow(
                        'Accuracy Std Dev',
                        '${summary.locationAccuracyStdDev.toStringAsFixed(1)}m',
                      ),
                      _buildStatusRow(
                        'Avg Confidence',
                        '${(summary.averageConfidence * 100).toStringAsFixed(1)}%',
                      ),
                      _buildStatusRow(
                        'Total Updates',
                        '${summary.totalLocationUpdates}',
                      ),
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBatteryUsageCard() {
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
                  Icons.battery_std,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Battery Usage',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            FutureBuilder<PerformanceSessionSummary>(
              future: Future.value(
                _performanceLoggingService.getSessionSummary(),
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final summary = snapshot.data!;
                  return Column(
                    children: [
                      _buildStatusRow(
                        'Consumption Rate',
                        '${summary.batteryConsumptionRate.toStringAsFixed(2)}%/h',
                      ),
                      _buildStatusRow(
                        'Total Consumed',
                        '${summary.totalBatteryConsumed.toStringAsFixed(1)}%',
                      ),
                      _buildStatusRow(
                        'Session Duration',
                        '${summary.sessionDuration.inMinutes}min',
                      ),
                      _buildStatusRow(
                        'Performance Score',
                        '${(summary.systemPerformanceScore * 100).toStringAsFixed(1)}%',
                      ),
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacySettingsCard() {
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
                  Icons.privacy_tip,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Privacy Settings',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            StreamBuilder<PrivacySettings>(
              stream: Stream.value(_configurationService.privacySettings),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final settings = snapshot.data!;
                  return Column(
                    children: [
                      SwitchListTile(
                        title: const Text(
                          'Data Collection',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: const Text(
                          'Allow collection of location data',
                          style: TextStyle(color: Colors.black),
                        ),
                        value: settings.enableDataCollection,
                        onChanged: (value) {
                          final newSettings = settings.copyWith(
                            enableDataCollection: value,
                          );
                          _configurationService.updatePrivacySettings(
                            newSettings,
                          );
                        },
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Location Sharing',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: const Text(
                          'Share location data with services',
                          style: TextStyle(color: Colors.black),
                        ),
                        value: settings.enableLocationSharing,
                        onChanged: (value) {
                          final newSettings = settings.copyWith(
                            enableLocationSharing: value,
                          );
                          _configurationService.updatePrivacySettings(
                            newSettings,
                          );
                        },
                      ),
                      SwitchListTile(
                        title: const Text(
                          'Analytics',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: const Text(
                          'Enable usage analytics',
                          style: TextStyle(color: Colors.black),
                        ),
                        value: settings.enableAnalytics,
                        onChanged: (value) {
                          final newSettings = settings.copyWith(
                            enableAnalytics: value,
                          );
                          _configurationService.updatePrivacySettings(
                            newSettings,
                          );
                        },
                      ),
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExportImportCard() {
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
                  Icons.import_export,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  'Data Management',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _exportData,
                    icon: const Icon(Icons.download),
                    label: const Text('Export Data'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _resetData,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Reset'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.black),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTripSummary(EnhancedDetectedTrip trip) {
    return Column(
      children: [
        _buildStatusRow('Trip ID', trip.id),
        _buildStatusRow(
          'Distance',
          '${trip.totalDistance.toStringAsFixed(0)}m',
        ),
        _buildStatusRow('Duration', '${trip.duration.inMinutes}min'),
        _buildStatusRow(
          'Avg Speed',
          '${trip.averageSpeed.toStringAsFixed(1)} m/s',
        ),
        _buildStatusRow('Transport Mode', trip.transportMode.toString()),
        _buildStatusRow(
          'Quality Score',
          '${(trip.qualityScore * 100).toStringAsFixed(1)}%',
        ),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return StreamBuilder<bool>(
      stream: Stream.value(_enhancedLocationService.isTracking),
      builder: (context, snapshot) {
        final isTracking = snapshot.data ?? false;
        return FloatingActionButton.extended(
          onPressed: isTracking ? _stopTracking : _startTracking,
          icon: Icon(isTracking ? Icons.stop : Icons.play_arrow),
          label: Text(isTracking ? 'Stop Tracking' : 'Start Tracking'),
          backgroundColor:
              isTracking ? Colors.red : Theme.of(context).colorScheme.primary,
        );
      },
    );
  }

  Future<void> _startTracking() async {
    try {
      // Start enhanced location tracking
      final locationResult =
          await _enhancedLocationService.startEnhancedTracking();
      if (locationResult.isLeft()) {
        throw Exception('Failed to start location tracking');
      }

      // Start enhanced trip detection
      final tripResult =
          await _enhancedTripDetectionService.startEnhancedTripDetection();
      if (tripResult.isLeft()) {
        throw Exception('Failed to start trip detection');
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Enhanced tracking started successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error starting tracking: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _stopTracking() async {
    try {
      await _enhancedLocationService.stopEnhancedTracking();
      await _enhancedTripDetectionService.stopEnhancedTripDetection();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Enhanced tracking stopped'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error stopping tracking: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _exportData() async {
    try {
      final data = await _performanceLoggingService.exportPerformanceData();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Performance data exported successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error exporting data: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _resetData() async {
    try {
      await _configurationService.resetToDefaults();
      await _performanceLoggingService.cleanupOldMetrics();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Configuration and data reset successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error resetting data: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
