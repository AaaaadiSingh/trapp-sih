import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dartz/dartz.dart';

import '../error/failures.dart';

@singleton
class NotificationService {
  final Logger _logger = Logger();
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  
  bool _isInitialized = false;
  
  /// Initialize notification service
  Future<Either<Failure, void>> initialize() async {
    try {
      _logger.i('Initializing notification service');
      
      // Android initialization settings
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/ic_launcher');
      
      // iOS initialization settings
      const DarwinInitializationSettings initializationSettingsIOS =
          DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );
      
      // Combined initialization settings
      const InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
        macOS: initializationSettingsIOS,
      );
      
      // Initialize the plugin
      final bool? initialized = await _flutterLocalNotificationsPlugin
          .initialize(initializationSettings);
      
      if (initialized == true) {
        _isInitialized = true;
        _logger.i('Notification service initialized successfully');
        return const Right(null);
      } else {
        _logger.w('Failed to initialize notification service');
        return const Left(GeneralFailure(
          message: 'Failed to initialize notification service'
        ));
      }
    } catch (e) {
      _logger.e('Error initializing notification service: $e');
      return Left(GeneralFailure(
        message: 'Error initializing notification service: $e'
      ));
    }
  }
  
  /// Request notification permissions
  Future<Either<Failure, bool>> requestPermissions() async {
    try {
      _logger.i('Requesting notification permissions');
      
      // Request permissions for Android 13+
      final bool? granted = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
      
      // Request permissions for iOS
      final bool? iosGranted = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
      
      final bool permissionGranted = granted ?? iosGranted ?? true;
      
      if (permissionGranted) {
        _logger.i('Notification permissions granted');
        return const Right(true);
      } else {
        _logger.w('Notification permissions denied');
        return const Right(false);
      }
    } catch (e) {
      _logger.e('Error requesting notification permissions: $e');
      return Left(GeneralFailure(
        message: 'Error requesting notification permissions: $e'
      ));
    }
  }
  
  /// Show trip completion notification
  Future<Either<Failure, void>> showTripCompletionNotification({
    required int tripNumber,
    required String tripLabel,
  }) async {
    try {
      if (!_isInitialized) {
        final initResult = await initialize();
        if (initResult.isLeft()) {
          return initResult;
        }
      }
      
      _logger.i('Showing trip completion notification for $tripLabel');
      
      const AndroidNotificationDetails androidPlatformChannelSpecifics =
          AndroidNotificationDetails(
        'trip_completion',
        'Trip Completion',
        channelDescription: 'Notifications for completed trips',
        importance: Importance.high,
        priority: Priority.high,
        showWhen: true,
        icon: '@mipmap/ic_launcher',
      );
      
      const DarwinNotificationDetails iOSPlatformChannelSpecifics =
          DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );
      
      const NotificationDetails platformChannelSpecifics =
          NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
        macOS: iOSPlatformChannelSpecifics,
      );
      
      await _flutterLocalNotificationsPlugin.show(
        tripNumber, // Use trip number as notification ID
        'Trip Completed',
        'Have you reached your destination? ($tripLabel)',
        platformChannelSpecifics,
      );
      
      _logger.i('Trip completion notification shown successfully');
      return const Right(null);
    } catch (e) {
      _logger.e('Error showing trip completion notification: $e');
      return Left(GeneralFailure(
        message: 'Error showing trip completion notification: $e'
      ));
    }
  }
  
  /// Cancel all notifications
  Future<void> cancelAllNotifications() async {
    try {
      await _flutterLocalNotificationsPlugin.cancelAll();
      _logger.i('All notifications cancelled');
    } catch (e) {
      _logger.e('Error cancelling notifications: $e');
    }
  }
  
  /// Cancel specific notification
  Future<void> cancelNotification(int id) async {
    try {
      await _flutterLocalNotificationsPlugin.cancel(id);
      _logger.i('Notification $id cancelled');
    } catch (e) {
      _logger.e('Error cancelling notification $id: $e');
    }
  }
  
  /// Check if notifications are enabled
  Future<bool> areNotificationsEnabled() async {
    try {
      final bool? enabled = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.areNotificationsEnabled();
      
      return enabled ?? true;
    } catch (e) {
      _logger.e('Error checking notification status: $e');
      return false;
    }
  }
}