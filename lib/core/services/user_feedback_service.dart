import 'package:flutter/material.dart';
import '../error/failures.dart';
import '../utils/error_handler.dart';

/// Service for providing consistent user feedback across the app
class UserFeedbackService {
  static final UserFeedbackService _instance = UserFeedbackService._internal();
  factory UserFeedbackService() => _instance;
  UserFeedbackService._internal();

  /// Show error message with appropriate styling and actions
  static void showError(
    BuildContext context,
    Failure failure, {
    VoidCallback? onRetry,
    bool showSuggestions = true,
  }) {
    final message = failure.message ?? 'An error occurred';
    final suggestions = ApiErrorHandler.getUserActionSuggestions(failure);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(_getErrorIcon(failure), color: Colors.white, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            if (showSuggestions && suggestions.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                'Suggestions: ${suggestions.first}',
                style: const TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ],
        ),
        backgroundColor: _getErrorColor(failure),
        duration: _getErrorDuration(failure),
        action:
            onRetry != null
                ? SnackBarAction(
                  label: 'Retry',
                  textColor: Colors.white,
                  onPressed: onRetry,
                )
                : null,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  /// Show success message
  static void showSuccess(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        duration: duration ?? const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  /// Show info message
  static void showInfo(
    BuildContext context,
    String message, {
    Duration? duration,
    VoidCallback? onAction,
    String? actionLabel,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.info, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        duration: duration ?? const Duration(seconds: 4),
        action:
            onAction != null && actionLabel != null
                ? SnackBarAction(
                  label: actionLabel,
                  textColor: Colors.white,
                  onPressed: onAction,
                )
                : null,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  /// Show warning message
  static void showWarning(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.warning, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.orange,
        duration: duration ?? const Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  /// Show loading dialog
  static void showLoading(
    BuildContext context,
    String message, {
    bool barrierDismissible = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder:
          (context) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
    );
  }

  /// Hide loading dialog
  static void hideLoading(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  /// Show confirmation dialog
  static Future<bool> showConfirmation(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDestructive = false,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  cancelText,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(
                  confirmText,
                  style: TextStyle(
                    color: isDestructive ? Colors.red : null,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
    );

    return result ?? false;
  }

  /// Show detailed error dialog with suggestions
  static void showDetailedError(
    BuildContext context,
    Failure failure, {
    VoidCallback? onRetry,
  }) {
    final suggestions = ApiErrorHandler.getUserActionSuggestions(failure);

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Row(
              children: [
                Icon(_getErrorIcon(failure), color: _getErrorColor(failure)),
                const SizedBox(width: 8),
                const Text('Error'),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  failure.message ?? 'An error occurred',
                  style: const TextStyle(fontSize: 16),
                ),
                if (suggestions.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  const Text(
                    'What you can do:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...suggestions.map(
                    (suggestion) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('• '),
                          Expanded(child: Text(suggestion)),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
              if (onRetry != null)
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onRetry();
                  },
                  child: const Text(
                    'Retry',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
    );
  }

  /// Get appropriate icon for error type
  static IconData _getErrorIcon(Failure failure) {
    if (failure is NetworkFailure) {
      return Icons.wifi_off;
    } else if (failure is ServerFailure) {
      return Icons.cloud_off;
    } else if (failure is ValidationFailure) {
      return Icons.error_outline;
    } else if (failure is PermissionFailure) {
      return Icons.lock;
    } else if (failure is CacheFailure) {
      return Icons.storage;
    }
    return Icons.error;
  }

  /// Get appropriate color for error type
  static Color _getErrorColor(Failure failure) {
    if (failure is NetworkFailure) {
      return Colors.orange;
    } else if (failure is ServerFailure) {
      return Colors.red;
    } else if (failure is ValidationFailure) {
      return Colors.amber;
    } else if (failure is PermissionFailure) {
      return Colors.deepOrange;
    } else if (failure is CacheFailure) {
      return Colors.brown;
    }
    return Colors.red;
  }

  /// Get appropriate duration for error type
  static Duration _getErrorDuration(Failure failure) {
    if (failure is NetworkFailure) {
      return const Duration(seconds: 6);
    } else if (failure is ServerFailure) {
      return const Duration(seconds: 5);
    } else if (failure is ValidationFailure) {
      return const Duration(seconds: 4);
    }
    return const Duration(seconds: 4);
  }
}

/// Extension to add feedback methods to BuildContext
extension UserFeedbackExtension on BuildContext {
  /// Show error with context
  void showError(Failure failure, {VoidCallback? onRetry}) {
    UserFeedbackService.showError(this, failure, onRetry: onRetry);
  }

  /// Show success with context
  void showSuccess(String message) {
    UserFeedbackService.showSuccess(this, message);
  }

  /// Show success message with context (alias for showSuccess)
  void showSuccessMessage(String message) {
    UserFeedbackService.showSuccess(this, message);
  }

  /// Show info with context
  void showInfo(String message, {VoidCallback? onAction, String? actionLabel}) {
    UserFeedbackService.showInfo(
      this,
      message,
      onAction: onAction,
      actionLabel: actionLabel,
    );
  }

  /// Show warning with context
  void showWarning(String message) {
    UserFeedbackService.showWarning(this, message);
  }

  /// Show loading with context
  void showLoading(String message) {
    UserFeedbackService.showLoading(this, message);
  }

  /// Hide loading with context
  void hideLoading() {
    UserFeedbackService.hideLoading(this);
  }

  /// Show confirmation with context
  Future<bool> showConfirmation({
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDestructive = false,
  }) {
    return UserFeedbackService.showConfirmation(
      this,
      title: title,
      message: message,
      confirmText: confirmText,
      cancelText: cancelText,
      isDestructive: isDestructive,
    );
  }

  /// Show detailed error with context
  void showDetailedError(Failure failure, {VoidCallback? onRetry}) {
    UserFeedbackService.showDetailedError(this, failure, onRetry: onRetry);
  }
}
