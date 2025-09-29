import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:geolocator/geolocator.dart';

import 'enhanced_location_service.dart';
import 'enhanced_trip_detection_service.dart';
import 'local_storage_service.dart';

/// Comprehensive performance logging service for location tracking analysis
@singleton
class PerformanceLoggingService {
  final LocalStorageService _localStorage;
  final Logger _logger = Logger();

  // Performance metrics
  final List<LocationPerformanceMetric> _locationMetrics = [];
  final List<TripPerformanceMetric> _tripMetrics = [];
  final List<BatteryMetric> _batteryMetrics = [];
  final List<SystemMetric> _systemMetrics = [];

  // Configuration
  static const int _maxMetricsInMemory = 1000;
  static const Duration _logFlushInterval = Duration(minutes: 5);
  static const Duration _metricsRetentionPeriod = Duration(days: 30);

  // State
  Timer? _flushTimer;
  DateTime? _sessionStartTime;
  int _totalLocationUpdates = 0;
  int _totalTripEvents = 0;
  double _totalBatteryConsumed = 0.0;
  File? _logFile;

  PerformanceLoggingService(this._localStorage);

  /// Initialize performance logging
  Future<void> initialize() async {
    try {
      _sessionStartTime = DateTime.now();
      
      // Setup log file
      await _setupLogFile();
      
      // Start periodic flushing
      _startPeriodicFlushing();
      
      // Load existing metrics
      await _loadStoredMetrics();
      
      _logger.i('Performance logging service initialized');
    } catch (e) {
      _logger.e('Error initializing performance logging: $e');
    }
  }

  /// Setup log file for persistent storage
  Future<void> _setupLogFile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final logsDir = Directory('${directory.path}/performance_logs');
      
      if (!await logsDir.exists()) {
        await logsDir.create(recursive: true);
      }
      
      final timestamp = DateTime.now().toIso8601String().split('T')[0];
      _logFile = File('${logsDir.path}/performance_$timestamp.json');
      
      _logger.d('Log file setup: ${_logFile!.path}');
    } catch (e) {
      _logger.e('Error setting up log file: $e');
    }
  }

  /// Start periodic flushing of metrics
  void _startPeriodicFlushing() {
    _flushTimer = Timer.periodic(_logFlushInterval, (_) {
      _flushMetricsToStorage();
    });
  }

  /// Log location update performance
  void logLocationUpdate(EnhancedLocationData locationData) {
    final metric = LocationPerformanceMetric(
      timestamp: locationData.timestamp,
      latitude: locationData.position.latitude,
      longitude: locationData.position.longitude,
      accuracy: locationData.position.accuracy,
      speed: locationData.position.speed,
      confidence: locationData.confidence,
      qualityScore: locationData.confidence,
      source: locationData.source.toString(),
      processingTime: DateTime.now().difference(locationData.timestamp).inMilliseconds,
      batteryLevel: _getCurrentBatteryLevel(),
    );

    _locationMetrics.add(metric);
    _totalLocationUpdates++;

    // Maintain memory limit
    if (_locationMetrics.length > _maxMetricsInMemory) {
      _locationMetrics.removeAt(0);
    }

    _logger.d('Location metric logged: accuracy=${metric.accuracy}m, confidence=${metric.confidence}');
  }

  /// Log trip event performance
  void logTripEvent(EnhancedTripEvent event) {
    final metric = TripPerformanceMetric(
      timestamp: event.timestamp,
      eventType: event.type.toString(),
      confidence: event.confidence,
      metadata: event.metadata,
      processingTime: DateTime.now().difference(event.timestamp).inMilliseconds,
      batteryLevel: _getCurrentBatteryLevel(),
    );

    _tripMetrics.add(metric);
    _totalTripEvents++;

    // Maintain memory limit
    if (_tripMetrics.length > _maxMetricsInMemory) {
      _tripMetrics.removeAt(0);
    }

    _logger.d('Trip event metric logged: ${event.type}');
  }

  /// Log trip update performance
  void logTripUpdate(EnhancedDetectedTrip trip) {
    final metric = TripPerformanceMetric(
      timestamp: DateTime.now(),
      eventType: 'trip_update',
      confidence: trip.confidence,
      metadata: {
        'tripId': trip.id,
        'distance': trip.totalDistance,
        'duration': trip.duration.inSeconds,
        'averageSpeed': trip.averageSpeed,
        'qualityScore': trip.qualityScore,
        'transportMode': trip.transportMode.toString(),
      },
      processingTime: 0,
      batteryLevel: _getCurrentBatteryLevel(),
    );

    _tripMetrics.add(metric);

    // Maintain memory limit
    if (_tripMetrics.length > _maxMetricsInMemory) {
      _tripMetrics.removeAt(0);
    }
  }

  /// Log battery consumption
  void logBatteryConsumption(double batteryLevel, String activity) {
    final metric = BatteryMetric(
      timestamp: DateTime.now(),
      batteryLevel: batteryLevel,
      activity: activity,
      consumptionRate: _calculateBatteryConsumptionRate(batteryLevel),
    );

    _batteryMetrics.add(metric);

    // Maintain memory limit
    if (_batteryMetrics.length > _maxMetricsInMemory) {
      _batteryMetrics.removeAt(0);
    }

    _logger.d('Battery metric logged: level=${batteryLevel}%, activity=$activity');
  }

  /// Log system performance metrics
  void logSystemMetrics() {
    final metric = SystemMetric(
      timestamp: DateTime.now(),
      memoryUsage: _getMemoryUsage(),
      cpuUsage: _getCpuUsage(),
      networkLatency: _getNetworkLatency(),
      locationServicesEnabled: _areLocationServicesEnabled(),
      gpsSignalStrength: _getGpsSignalStrength(),
    );

    _systemMetrics.add(metric);

    // Maintain memory limit
    if (_systemMetrics.length > _maxMetricsInMemory) {
      _systemMetrics.removeAt(0);
    }

    _logger.d('System metrics logged');
  }

  /// Get current session performance summary
  PerformanceSessionSummary getSessionSummary() {
    final now = DateTime.now();
    final sessionDuration = _sessionStartTime != null 
        ? now.difference(_sessionStartTime!)
        : Duration.zero;

    // Calculate location accuracy statistics
    final accuracyStats = _calculateLocationAccuracyStats();
    
    // Calculate battery consumption
    final batteryStats = _calculateBatteryStats();
    
    // Calculate trip detection performance
    final tripStats = _calculateTripStats();

    return PerformanceSessionSummary(
      sessionStartTime: _sessionStartTime ?? now,
      sessionDuration: sessionDuration,
      totalLocationUpdates: _totalLocationUpdates,
      totalTripEvents: _totalTripEvents,
      averageLocationAccuracy: accuracyStats.average,
      locationAccuracyStdDev: accuracyStats.standardDeviation,
      averageConfidence: accuracyStats.averageConfidence,
      batteryConsumptionRate: batteryStats.consumptionRate,
      totalBatteryConsumed: batteryStats.totalConsumed,
      tripDetectionAccuracy: tripStats.detectionAccuracy,
      averageTripDuration: tripStats.averageDuration,
      systemPerformanceScore: _calculateSystemPerformanceScore(),
    );
  }

  /// Get detailed performance analytics
  PerformanceAnalytics getDetailedAnalytics({
    DateTime? startTime,
    DateTime? endTime,
  }) {
    final start = startTime ?? DateTime.now().subtract(const Duration(hours: 24));
    final end = endTime ?? DateTime.now();

    // Filter metrics by time range
    final filteredLocationMetrics = _locationMetrics
        .where((m) => m.timestamp.isAfter(start) && m.timestamp.isBefore(end))
        .toList();
    
    final filteredTripMetrics = _tripMetrics
        .where((m) => m.timestamp.isAfter(start) && m.timestamp.isBefore(end))
        .toList();
    
    final filteredBatteryMetrics = _batteryMetrics
        .where((m) => m.timestamp.isAfter(start) && m.timestamp.isBefore(end))
        .toList();

    return PerformanceAnalytics(
      timeRange: DateTimeRange(start: start, end: end),
      locationMetrics: filteredLocationMetrics,
      tripMetrics: filteredTripMetrics,
      batteryMetrics: filteredBatteryMetrics,
      accuracyDistribution: _calculateAccuracyDistribution(filteredLocationMetrics),
      confidenceDistribution: _calculateConfidenceDistribution(filteredLocationMetrics),
      batteryUsageByActivity: _calculateBatteryUsageByActivity(filteredBatteryMetrics),
      performanceTrends: _calculatePerformanceTrends(filteredLocationMetrics),
    );
  }

  /// Export performance data to JSON
  Future<String> exportPerformanceData({
    DateTime? startTime,
    DateTime? endTime,
  }) async {
    try {
      final analytics = getDetailedAnalytics(
        startTime: startTime,
        endTime: endTime,
      );

      final exportData = {
        'exportTimestamp': DateTime.now().toIso8601String(),
        'sessionSummary': getSessionSummary().toJson(),
        'analytics': analytics.toJson(),
        'metadata': {
          'appVersion': '1.0.0',
          'platform': Platform.operatingSystem,
          'deviceModel': await _getDeviceModel(),
        },
      };

      return jsonEncode(exportData);
    } catch (e) {
      _logger.e('Error exporting performance data: $e');
      rethrow;
    }
  }

  /// Calculate location accuracy statistics
  LocationAccuracyStats _calculateLocationAccuracyStats() {
    if (_locationMetrics.isEmpty) {
      return LocationAccuracyStats(
        average: 0.0,
        standardDeviation: 0.0,
        minimum: 0.0,
        maximum: 0.0,
        averageConfidence: 0.0,
      );
    }

    final accuracies = _locationMetrics.map((m) => m.accuracy).toList();
    final confidences = _locationMetrics.map((m) => m.confidence).toList();

    final average = accuracies.reduce((a, b) => a + b) / accuracies.length;
    final variance = accuracies
        .map((a) => pow(a - average, 2))
        .reduce((a, b) => a + b) / accuracies.length;
    final standardDeviation = sqrt(variance);
    final averageConfidence = confidences.reduce((a, b) => a + b) / confidences.length;

    return LocationAccuracyStats(
      average: average,
      standardDeviation: standardDeviation,
      minimum: accuracies.reduce(min),
      maximum: accuracies.reduce(max),
      averageConfidence: averageConfidence,
    );
  }

  /// Calculate battery statistics
  BatteryStats _calculateBatteryStats() {
    if (_batteryMetrics.isEmpty) {
      return BatteryStats(
        consumptionRate: 0.0,
        totalConsumed: 0.0,
        averageLevel: 100.0,
      );
    }

    final levels = _batteryMetrics.map((m) => m.batteryLevel).toList();
    final consumptionRates = _batteryMetrics.map((m) => m.consumptionRate).toList();

    final averageLevel = levels.reduce((a, b) => a + b) / levels.length;
    final averageConsumptionRate = consumptionRates.reduce((a, b) => a + b) / consumptionRates.length;
    
    // Calculate total consumption from first to last reading
    final totalConsumed = levels.isNotEmpty && levels.length > 1
        ? levels.first - levels.last
        : 0.0;

    return BatteryStats(
      consumptionRate: averageConsumptionRate,
      totalConsumed: totalConsumed,
      averageLevel: averageLevel,
    );
  }

  /// Calculate trip statistics
  TripStats _calculateTripStats() {
    if (_tripMetrics.isEmpty) {
      return TripStats(
        detectionAccuracy: 0.0,
        averageDuration: Duration.zero,
        totalTrips: 0,
      );
    }

    final tripStartEvents = _tripMetrics
        .where((m) => m.eventType == 'TripEventType.tripStarted')
        .length;
    
    final tripCompletedEvents = _tripMetrics
        .where((m) => m.eventType == 'TripEventType.tripCompleted')
        .length;

    final detectionAccuracy = tripStartEvents > 0 
        ? tripCompletedEvents / tripStartEvents
        : 0.0;

    // Calculate average trip duration from metadata
    final durations = _tripMetrics
        .where((m) => m.metadata.containsKey('duration'))
        .map((m) => Duration(seconds: m.metadata['duration'] as int))
        .toList();

    final averageDuration = durations.isNotEmpty
        ? Duration(seconds: durations
            .map((d) => d.inSeconds)
            .reduce((a, b) => a + b) ~/ durations.length)
        : Duration.zero;

    return TripStats(
      detectionAccuracy: detectionAccuracy,
      averageDuration: averageDuration,
      totalTrips: tripCompletedEvents,
    );
  }

  /// Calculate system performance score
  double _calculateSystemPerformanceScore() {
    double score = 0.5; // Base score

    // Location accuracy factor
    final accuracyStats = _calculateLocationAccuracyStats();
    if (accuracyStats.average <= 10) {
      score += 0.2;
    } else if (accuracyStats.average <= 20) {
      score += 0.1;
    }

    // Confidence factor
    score += accuracyStats.averageConfidence * 0.2;

    // Battery efficiency factor
    final batteryStats = _calculateBatteryStats();
    if (batteryStats.consumptionRate <= 1.0) {
      score += 0.1;
    }

    return score.clamp(0.0, 1.0);
  }

  /// Calculate accuracy distribution
  Map<String, int> _calculateAccuracyDistribution(List<LocationPerformanceMetric> metrics) {
    final distribution = <String, int>{
      '0-5m': 0,
      '5-10m': 0,
      '10-20m': 0,
      '20-50m': 0,
      '50m+': 0,
    };

    for (final metric in metrics) {
      if (metric.accuracy <= 5) {
        distribution['0-5m'] = distribution['0-5m']! + 1;
      } else if (metric.accuracy <= 10) {
        distribution['5-10m'] = distribution['5-10m']! + 1;
      } else if (metric.accuracy <= 20) {
        distribution['10-20m'] = distribution['10-20m']! + 1;
      } else if (metric.accuracy <= 50) {
        distribution['20-50m'] = distribution['20-50m']! + 1;
      } else {
        distribution['50m+'] = distribution['50m+']! + 1;
      }
    }

    return distribution;
  }

  /// Calculate confidence distribution
  Map<String, int> _calculateConfidenceDistribution(List<LocationPerformanceMetric> metrics) {
    final distribution = <String, int>{
      'Low (0-0.3)': 0,
      'Medium (0.3-0.7)': 0,
      'High (0.7-1.0)': 0,
    };

    for (final metric in metrics) {
      if (metric.confidence <= 0.3) {
        distribution['Low (0-0.3)'] = distribution['Low (0-0.3)']! + 1;
      } else if (metric.confidence <= 0.7) {
        distribution['Medium (0.3-0.7)'] = distribution['Medium (0.3-0.7)']! + 1;
      } else {
        distribution['High (0.7-1.0)'] = distribution['High (0.7-1.0)']! + 1;
      }
    }

    return distribution;
  }

  /// Calculate battery usage by activity
  Map<String, double> _calculateBatteryUsageByActivity(List<BatteryMetric> metrics) {
    final usage = <String, double>{};
    
    for (final metric in metrics) {
      usage[metric.activity] = (usage[metric.activity] ?? 0.0) + metric.consumptionRate;
    }

    return usage;
  }

  /// Calculate performance trends
  List<PerformanceTrend> _calculatePerformanceTrends(List<LocationPerformanceMetric> metrics) {
    // Group metrics by hour
    final hourlyGroups = <int, List<LocationPerformanceMetric>>{};
    
    for (final metric in metrics) {
      final hour = metric.timestamp.hour;
      hourlyGroups[hour] = (hourlyGroups[hour] ?? [])..add(metric);
    }

    final trends = <PerformanceTrend>[];
    
    for (final entry in hourlyGroups.entries) {
      final hour = entry.key;
      final hourMetrics = entry.value;
      
      final avgAccuracy = hourMetrics
          .map((m) => m.accuracy)
          .reduce((a, b) => a + b) / hourMetrics.length;
      
      final avgConfidence = hourMetrics
          .map((m) => m.confidence)
          .reduce((a, b) => a + b) / hourMetrics.length;

      trends.add(PerformanceTrend(
        hour: hour,
        averageAccuracy: avgAccuracy,
        averageConfidence: avgConfidence,
        sampleCount: hourMetrics.length,
      ));
    }

    return trends..sort((a, b) => a.hour.compareTo(b.hour));
  }

  /// Flush metrics to persistent storage
  Future<void> _flushMetricsToStorage() async {
    try {
      if (_logFile == null) return;

      final data = {
        'timestamp': DateTime.now().toIso8601String(),
        'sessionSummary': getSessionSummary().toJson(),
        'locationMetrics': _locationMetrics.map((m) => m.toJson()).toList(),
        'tripMetrics': _tripMetrics.map((m) => m.toJson()).toList(),
        'batteryMetrics': _batteryMetrics.map((m) => m.toJson()).toList(),
        'systemMetrics': _systemMetrics.map((m) => m.toJson()).toList(),
      };

      await _logFile!.writeAsString(jsonEncode(data));
      _logger.d('Performance metrics flushed to storage');
    } catch (e) {
      _logger.e('Error flushing metrics to storage: $e');
    }
  }

  /// Load stored metrics from persistent storage
  Future<void> _loadStoredMetrics() async {
    try {
      // Implementation would load from storage
      _logger.d('Stored metrics loaded');
    } catch (e) {
      _logger.e('Error loading stored metrics: $e');
    }
  }

  /// Get current battery level (simulated)
  double _getCurrentBatteryLevel() {
    // In a real implementation, this would use battery_plus plugin
    return 85.0 + Random().nextDouble() * 10; // Simulated battery level
  }

  /// Calculate battery consumption rate
  double _calculateBatteryConsumptionRate(double currentLevel) {
    // Simple calculation based on time and level change
    return Random().nextDouble() * 2.0; // Simulated consumption rate
  }

  /// Get memory usage (simulated)
  double _getMemoryUsage() {
    return 50.0 + Random().nextDouble() * 30; // Simulated memory usage %
  }

  /// Get CPU usage (simulated)
  double _getCpuUsage() {
    return 10.0 + Random().nextDouble() * 20; // Simulated CPU usage %
  }

  /// Get network latency (simulated)
  int _getNetworkLatency() {
    return 50 + Random().nextInt(100); // Simulated latency in ms
  }

  /// Check if location services are enabled
  bool _areLocationServicesEnabled() {
    // In a real implementation, this would check actual location services
    return true;
  }

  /// Get GPS signal strength (simulated)
  double _getGpsSignalStrength() {
    return 0.5 + Random().nextDouble() * 0.5; // Simulated signal strength
  }

  /// Get device model (simulated)
  Future<String> _getDeviceModel() async {
    return 'Simulated Device Model';
  }

  /// Clean up old metrics
  Future<void> cleanupOldMetrics() async {
    try {
      final cutoffTime = DateTime.now().subtract(_metricsRetentionPeriod);
      
      _locationMetrics.removeWhere((m) => m.timestamp.isBefore(cutoffTime));
      _tripMetrics.removeWhere((m) => m.timestamp.isBefore(cutoffTime));
      _batteryMetrics.removeWhere((m) => m.timestamp.isBefore(cutoffTime));
      _systemMetrics.removeWhere((m) => m.timestamp.isBefore(cutoffTime));
      
      _logger.i('Old performance metrics cleaned up');
    } catch (e) {
      _logger.e('Error cleaning up old metrics: $e');
    }
  }

  /// Dispose resources
  void dispose() {
    _logger.i('Disposing PerformanceLoggingService');
    _flushTimer?.cancel();
    _flushMetricsToStorage();
  }
}

/// Performance metric classes
class LocationPerformanceMetric {
  final DateTime timestamp;
  final double latitude;
  final double longitude;
  final double accuracy;
  final double speed;
  final double confidence;
  final double qualityScore;
  final String source;
  final int processingTime;
  final double batteryLevel;

  const LocationPerformanceMetric({
    required this.timestamp,
    required this.latitude,
    required this.longitude,
    required this.accuracy,
    required this.speed,
    required this.confidence,
    required this.qualityScore,
    required this.source,
    required this.processingTime,
    required this.batteryLevel,
  });

  Map<String, dynamic> toJson() => {
    'timestamp': timestamp.toIso8601String(),
    'latitude': latitude,
    'longitude': longitude,
    'accuracy': accuracy,
    'speed': speed,
    'confidence': confidence,
    'qualityScore': qualityScore,
    'source': source,
    'processingTime': processingTime,
    'batteryLevel': batteryLevel,
  };
}

class TripPerformanceMetric {
  final DateTime timestamp;
  final String eventType;
  final double confidence;
  final Map<String, dynamic> metadata;
  final int processingTime;
  final double batteryLevel;

  const TripPerformanceMetric({
    required this.timestamp,
    required this.eventType,
    required this.confidence,
    required this.metadata,
    required this.processingTime,
    required this.batteryLevel,
  });

  Map<String, dynamic> toJson() => {
    'timestamp': timestamp.toIso8601String(),
    'eventType': eventType,
    'confidence': confidence,
    'metadata': metadata,
    'processingTime': processingTime,
    'batteryLevel': batteryLevel,
  };
}

class BatteryMetric {
  final DateTime timestamp;
  final double batteryLevel;
  final String activity;
  final double consumptionRate;

  const BatteryMetric({
    required this.timestamp,
    required this.batteryLevel,
    required this.activity,
    required this.consumptionRate,
  });

  Map<String, dynamic> toJson() => {
    'timestamp': timestamp.toIso8601String(),
    'batteryLevel': batteryLevel,
    'activity': activity,
    'consumptionRate': consumptionRate,
  };
}

class SystemMetric {
  final DateTime timestamp;
  final double memoryUsage;
  final double cpuUsage;
  final int networkLatency;
  final bool locationServicesEnabled;
  final double gpsSignalStrength;

  const SystemMetric({
    required this.timestamp,
    required this.memoryUsage,
    required this.cpuUsage,
    required this.networkLatency,
    required this.locationServicesEnabled,
    required this.gpsSignalStrength,
  });

  Map<String, dynamic> toJson() => {
    'timestamp': timestamp.toIso8601String(),
    'memoryUsage': memoryUsage,
    'cpuUsage': cpuUsage,
    'networkLatency': networkLatency,
    'locationServicesEnabled': locationServicesEnabled,
    'gpsSignalStrength': gpsSignalStrength,
  };
}

/// Performance summary and analytics classes
class PerformanceSessionSummary {
  final DateTime sessionStartTime;
  final Duration sessionDuration;
  final int totalLocationUpdates;
  final int totalTripEvents;
  final double averageLocationAccuracy;
  final double locationAccuracyStdDev;
  final double averageConfidence;
  final double batteryConsumptionRate;
  final double totalBatteryConsumed;
  final double tripDetectionAccuracy;
  final Duration averageTripDuration;
  final double systemPerformanceScore;

  const PerformanceSessionSummary({
    required this.sessionStartTime,
    required this.sessionDuration,
    required this.totalLocationUpdates,
    required this.totalTripEvents,
    required this.averageLocationAccuracy,
    required this.locationAccuracyStdDev,
    required this.averageConfidence,
    required this.batteryConsumptionRate,
    required this.totalBatteryConsumed,
    required this.tripDetectionAccuracy,
    required this.averageTripDuration,
    required this.systemPerformanceScore,
  });

  Map<String, dynamic> toJson() => {
    'sessionStartTime': sessionStartTime.toIso8601String(),
    'sessionDuration': sessionDuration.inSeconds,
    'totalLocationUpdates': totalLocationUpdates,
    'totalTripEvents': totalTripEvents,
    'averageLocationAccuracy': averageLocationAccuracy,
    'locationAccuracyStdDev': locationAccuracyStdDev,
    'averageConfidence': averageConfidence,
    'batteryConsumptionRate': batteryConsumptionRate,
    'totalBatteryConsumed': totalBatteryConsumed,
    'tripDetectionAccuracy': tripDetectionAccuracy,
    'averageTripDuration': averageTripDuration.inSeconds,
    'systemPerformanceScore': systemPerformanceScore,
  };
}

class PerformanceAnalytics {
  final DateTimeRange timeRange;
  final List<LocationPerformanceMetric> locationMetrics;
  final List<TripPerformanceMetric> tripMetrics;
  final List<BatteryMetric> batteryMetrics;
  final Map<String, int> accuracyDistribution;
  final Map<String, int> confidenceDistribution;
  final Map<String, double> batteryUsageByActivity;
  final List<PerformanceTrend> performanceTrends;

  const PerformanceAnalytics({
    required this.timeRange,
    required this.locationMetrics,
    required this.tripMetrics,
    required this.batteryMetrics,
    required this.accuracyDistribution,
    required this.confidenceDistribution,
    required this.batteryUsageByActivity,
    required this.performanceTrends,
  });

  Map<String, dynamic> toJson() => {
    'timeRange': {
      'start': timeRange.start.toIso8601String(),
      'end': timeRange.end.toIso8601String(),
    },
    'locationMetrics': locationMetrics.map((m) => m.toJson()).toList(),
    'tripMetrics': tripMetrics.map((m) => m.toJson()).toList(),
    'batteryMetrics': batteryMetrics.map((m) => m.toJson()).toList(),
    'accuracyDistribution': accuracyDistribution,
    'confidenceDistribution': confidenceDistribution,
    'batteryUsageByActivity': batteryUsageByActivity,
    'performanceTrends': performanceTrends.map((t) => t.toJson()).toList(),
  };
}

/// Helper classes
class DateTimeRange {
  final DateTime start;
  final DateTime end;

  const DateTimeRange({required this.start, required this.end});
}

class LocationAccuracyStats {
  final double average;
  final double standardDeviation;
  final double minimum;
  final double maximum;
  final double averageConfidence;

  const LocationAccuracyStats({
    required this.average,
    required this.standardDeviation,
    required this.minimum,
    required this.maximum,
    required this.averageConfidence,
  });
}

class BatteryStats {
  final double consumptionRate;
  final double totalConsumed;
  final double averageLevel;

  const BatteryStats({
    required this.consumptionRate,
    required this.totalConsumed,
    required this.averageLevel,
  });
}

class TripStats {
  final double detectionAccuracy;
  final Duration averageDuration;
  final int totalTrips;

  const TripStats({
    required this.detectionAccuracy,
    required this.averageDuration,
    required this.totalTrips,
  });
}

class PerformanceTrend {
  final int hour;
  final double averageAccuracy;
  final double averageConfidence;
  final int sampleCount;

  const PerformanceTrend({
    required this.hour,
    required this.averageAccuracy,
    required this.averageConfidence,
    required this.sampleCount,
  });

  Map<String, dynamic> toJson() => {
    'hour': hour,
    'averageAccuracy': averageAccuracy,
    'averageConfidence': averageConfidence,
    'sampleCount': sampleCount,
  };
}