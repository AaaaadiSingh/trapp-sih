import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:geolocator/geolocator.dart';

import '../../core/services/location_service.dart';
import '../../core/services/trip_detection_service.dart';
import '../../core/services/notification_service.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/gradient_utils.dart';
import '../dashboard/presentation/bloc/dashboard_bloc.dart';

class DebugScreen extends StatefulWidget {
  const DebugScreen({Key? key}) : super(key: key);

  @override
  State<DebugScreen> createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  final LocationService _locationService = GetIt.instance<LocationService>();
  final TripDetectionService _tripService =
      GetIt.instance<TripDetectionService>();
  final NotificationService _notificationService =
      GetIt.instance<NotificationService>();
  final DashboardBloc _dashboardBloc = GetIt.instance<DashboardBloc>();

  StreamSubscription<Position>? _locationSubscription;
  StreamSubscription<TripEvent>? _tripEventSubscription;
  Timer? _statusTimer;

  Position? _currentPosition;
  String _locationStatus = 'Not started';
  String _tripStatus = 'Not started';
  String _notificationStatus = 'Not initialized';
  List<String> _logs = [];
  bool _isTracking = false;
  bool _isTripDetecting = false;

  @override
  void initState() {
    super.initState();
    _initializeServices();
    _startStatusTimer();
  }

  @override
  void dispose() {
    _locationSubscription?.cancel();
    _tripEventSubscription?.cancel();
    _statusTimer?.cancel();
    super.dispose();
  }

  void _initializeServices() async {
    print('🔧 Debug screen initializing services...');
    // Initialize notifications
    final notificationResult = await _notificationService.initialize();
    notificationResult.fold(
      (failure) => _addLog('Notification init failed: ${failure.message}'),
      (_) => {
        _addLog('Notifications initialized successfully'),
        setState(() => _notificationStatus = 'Initialized'),
      },
    );

    // Request notification permissions
    final permissionResult = await _notificationService.requestPermissions();
    permissionResult.fold(
      (failure) =>
          _addLog('Notification permission failed: ${failure.message}'),
      (_) => {
        _addLog('Notification permissions granted'),
        setState(() => _notificationStatus = 'Ready'),
      },
    );
  }

  void _startStatusTimer() {
    _statusTimer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        // Update status displays
      });
    });
  }

  void _addLog(String message) {
    final timestamp = DateTime.now().toString().substring(11, 19);
    setState(() {
      _logs.insert(0, '[$timestamp] $message');
      if (_logs.length > 50) _logs.removeLast();
    });
  }

  Future<void> _testLocationPermissions() async {
    _addLog('Testing location permissions...');

    final permissionResult = await _locationService.requestLocationPermission();
    permissionResult.fold(
      (failure) => _addLog('Permission failed: ${failure.message}'),
      (_) => _addLog('Location permissions granted'),
    );

    final serviceResult = await _locationService.isLocationServiceEnabled();
    if (serviceResult) {
      _addLog('Location service enabled: true');
    } else {
      _addLog('Location service enabled: false');
    }
  }

  Future<void> _startLocationTracking() async {
    if (_isTracking) {
      _addLog('Location tracking already active');
      return;
    }

    _addLog('Starting location tracking...');

    final result = await _locationService.startLocationTracking();
    result.fold(
      (failure) => {
        _addLog('Location tracking failed: ${failure.message}'),
        setState(() => _locationStatus = 'Failed'),
      },
      (_) => {
        _addLog('Location tracking started successfully'),
        setState(() => {_locationStatus = 'Active', _isTracking = true}),
        _listenToLocationUpdates(),
      },
    );
  }

  void _listenToLocationUpdates() {
    _locationSubscription = _locationService.locationStream.listen((position) {
      setState(() => _currentPosition = position);
      _addLog(
        'Location: ${position.latitude.toStringAsFixed(6)}, ${position.longitude.toStringAsFixed(6)} (±${position.accuracy.toStringAsFixed(1)}m)',
      );
    }, onError: (error) => _addLog('Location error: $error'));
  }

  Future<void> _startTripDetection() async {
    if (_isTripDetecting) {
      _addLog('Trip detection already active');
      return;
    }

    _addLog('Starting trip detection...');

    final result = await _tripService.startTripDetection();
    result.fold(
      (failure) => {
        _addLog('Trip detection failed: ${failure.message}'),
        setState(() => _tripStatus = 'Failed'),
      },
      (_) => {
        _addLog('Trip detection started successfully'),
        setState(() => {_tripStatus = 'Active', _isTripDetecting = true}),
        _listenToTripEvents(),
      },
    );
  }

  void _listenToTripEvents() {
    _tripEventSubscription = _tripService.tripEventStream.listen((event) {
      _addLog('Trip Event: ${event.type}');
      if (event.metadata != null) {
        _addLog('  - Trip Number: ${event.metadata!['tripNumber']}');
        _addLog('  - Trip Label: ${event.metadata!['tripLabel']}');
        if (event.metadata!['totalDistance'] != null) {
          _addLog(
            '  - Distance: ${event.metadata!['totalDistance'].toStringAsFixed(2)}m',
          );
        }
        if (event.metadata!['duration'] != null) {
          _addLog('  - Duration: ${event.metadata!['duration']} minutes');
        }
      }
      // Update UI when trip events occur
      setState(() {});
    }, onError: (error) => _addLog('Trip event error: $error'));
  }

  Future<void> _testNotification() async {
    _addLog('Testing trip completion notification...');

    final result = await _notificationService.showTripCompletionNotification(
      tripNumber: 999,
      tripLabel: 'Test Trip 999',
    );

    result.fold(
      (failure) => _addLog('Notification failed: ${failure.message}'),
      (_) => _addLog('Test notification sent successfully'),
    );
  }

  void _refreshDashboard() {
    _addLog('Refreshing dashboard data...');
    _dashboardBloc.add(const DashboardEvent.loadDashboardData());
  }

  void _clearLogs() {
    setState(() => _logs.clear());
  }

  void _testMovementDetection() async {
    _addLog('🧪 Testing movement detection...');

    // Check if location tracking is active
    if (!_locationService.isTracking) {
      _addLog('❌ Location tracking not active. Starting...');
      await _startLocationTracking();
      await Future.delayed(const Duration(seconds: 2));
    }

    // Check if trip detection is active
    if (!_tripService.isDetecting) {
      _addLog('❌ Trip detection not active. Starting...');
      await _startTripDetection();
      await Future.delayed(const Duration(seconds: 2));
    }

    // Get current location
    final locationResult = await _locationService.getCurrentLocation();
    locationResult.fold(
      (failure) => _addLog('❌ Failed to get location: ${failure.message}'),
      (position) {
        _addLog(
          '📍 Current location: ${position.latitude.toStringAsFixed(6)}, ${position.longitude.toStringAsFixed(6)}',
        );
        _addLog('🏃 Speed: ${position.speed.toStringAsFixed(2)} m/s');
        _addLog('🎯 Accuracy: ${position.accuracy.toStringAsFixed(1)} meters');

        // Check movement thresholds
        if (position.speed > 1.0) {
          _addLog(
            '✅ Speed indicates movement (${position.speed.toStringAsFixed(2)} m/s > 1.0 m/s)',
          );
        } else {
          _addLog(
            '⚠️ Speed indicates stationary (${position.speed.toStringAsFixed(2)} m/s <= 1.0 m/s)',
          );
        }
      },
    );

    // Check trip detection state
    final currentTrip = _tripService.currentTrip;
    final tripState = _tripService.currentState;
    _addLog('🚗 Trip state: $tripState');
    _addLog('📊 Total trips: ${_tripService.totalTrips}');

    if (currentTrip != null) {
      _addLog('🛣️ Current trip: ${currentTrip.id}');
      _addLog(
        '📏 Trip distance: ${currentTrip.totalDistance.toStringAsFixed(2)} meters',
      );
      _addLog('⏱️ Trip duration: ${currentTrip.duration.inMinutes} minutes');
    } else {
      _addLog('🚫 No active trip');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('🔧 Debug screen build method called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geolocation Debug'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          // Status Cards
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildStatusCard(
                  'Location Service',
                  _locationStatus,
                  _currentPosition,
                ),
                const SizedBox(height: 8),
                _buildStatusCard('Trip Detection', _tripStatus, null),
                const SizedBox(height: 8),
                _buildStatusCard('Notifications', _notificationStatus, null),
                const SizedBox(height: 8),
                _buildTripCounterCard(),
              ],
            ),
          ),

          // Control Buttons
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: _testLocationPermissions,
                  child: const Text('Test Permissions'),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: GradientUtils.primary,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _startLocationTracking,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Start Location',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: GradientUtils.secondary,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondary.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _startTripDetection,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Start Trip Detection',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: GradientUtils.accent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.accent.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _testNotification,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Test Notification',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary.withOpacity(0.8),
                        AppColors.secondary.withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _refreshDashboard,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Refresh Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.withOpacity(0.8),
                        Colors.redAccent.withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _clearLogs,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Clear Logs',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.withOpacity(0.8),
                        Colors.deepOrange.withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _testMovementDetection,
                      borderRadius: BorderRadius.circular(12),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Text(
                          'Test Movement',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Logs
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Debug Logs',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _logs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Text(
                            _logs[index],
                            style: const TextStyle(
                              color: Colors.green,
                              fontFamily: 'monospace',
                              fontSize: 12,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard(String title, String status, Position? position) {
    Color statusColor;
    IconData statusIcon;
    Gradient statusGradient;

    switch (status.toLowerCase()) {
      case 'enabled':
      case 'granted':
      case 'active':
      case 'ready':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        statusGradient = GradientUtils.accent;
        break;
      case 'disabled':
      case 'denied':
      case 'inactive':
      case 'failed':
        statusColor = Colors.red;
        statusIcon = Icons.error;
        statusGradient = LinearGradient(
          colors: [Colors.red.shade400, Colors.red.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
        break;
      default:
        statusColor = Colors.orange;
        statusIcon = Icons.warning;
        statusGradient = LinearGradient(
          colors: [Colors.orange.shade400, Colors.orange.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: GradientUtils.cardOverlay,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outline.withOpacity(0.1), width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: statusGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(statusIcon, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  if (position != null) ...[
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.surfaceContainer.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lat: ${position.latitude.toStringAsFixed(6)}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Lng: ${position.longitude.toStringAsFixed(6)}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Accuracy: ±${position.accuracy.toStringAsFixed(1)}m',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripCounterCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientUtils.cardOverlay,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outline.withOpacity(0.1), width: 1),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: GradientUtils.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.trip_origin,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Trip Counter',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainer.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Trips: ${_tripService.totalTrips}',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Current State: ${_tripService.currentState}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Is Detecting: ${_tripService.isDetecting}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
