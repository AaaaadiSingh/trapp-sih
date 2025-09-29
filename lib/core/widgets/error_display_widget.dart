import 'package:flutter/material.dart';
import '../error/failures.dart';
import '../utils/error_handler.dart';
import '../services/user_feedback_service.dart';

/// A comprehensive widget for displaying errors with consistent styling
class ErrorDisplayWidget extends StatelessWidget {
  final Failure failure;
  final VoidCallback? onRetry;
  final bool showSuggestions;
  final bool isCompact;
  final EdgeInsetsGeometry? padding;

  const ErrorDisplayWidget({
    Key? key,
    required this.failure,
    this.onRetry,
    this.showSuggestions = true,
    this.isCompact = false,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isCompact) {
      return _buildCompactError(context);
    }
    return _buildFullError(context);
  }

  Widget _buildCompactError(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _getErrorColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _getErrorColor().withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          Icon(_getErrorIcon(), color: _getErrorColor(), size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              failure.message ?? 'An error occurred',
              style: TextStyle(
                color: _getErrorColor(),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (onRetry != null) ...[
            const SizedBox(width: 8),
            TextButton(
              onPressed: onRetry,
              style: TextButton.styleFrom(
                foregroundColor: _getErrorColor(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
              ),
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildFullError(BuildContext context) {
    final suggestions = ApiErrorHandler.getUserActionSuggestions(failure);

    return Container(
      padding: padding ?? const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: _getErrorColor().withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _getErrorColor().withOpacity(0.2), width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _getErrorColor().withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(_getErrorIcon(), color: _getErrorColor(), size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getErrorTitle(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      failure.message ?? 'An error occurred',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (showSuggestions && suggestions.isNotEmpty) ...[
            const SizedBox(height: 16),
            const Text(
              'What you can do:',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            ...suggestions
                .take(3)
                .map(
                  (suggestion) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 6),
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            suggestion,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
          if (onRetry != null) ...[
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Try Again'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _getErrorColor(),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  IconData _getErrorIcon() {
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

  Color _getErrorColor() {
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

  String _getErrorTitle() {
    if (failure is NetworkFailure) {
      return 'Connection Problem';
    } else if (failure is ServerFailure) {
      return 'Server Error';
    } else if (failure is ValidationFailure) {
      return 'Invalid Data';
    } else if (failure is PermissionFailure) {
      return 'Access Denied';
    } else if (failure is CacheFailure) {
      return 'Storage Error';
    }
    return 'Error';
  }
}

/// A widget that shows a loading state with error fallback
class LoadingWithErrorWidget extends StatelessWidget {
  final bool isLoading;
  final Failure? failure;
  final Widget child;
  final VoidCallback? onRetry;
  final String? loadingMessage;

  const LoadingWithErrorWidget({
    Key? key,
    required this.isLoading,
    this.failure,
    required this.child,
    this.onRetry,
    this.loadingMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            if (loadingMessage != null) ...[
              const SizedBox(height: 16),
              Text(
                loadingMessage!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
      );
    }

    if (failure != null) {
      return Center(
        child: ErrorDisplayWidget(failure: failure!, onRetry: onRetry),
      );
    }

    return child;
  }
}

/// A widget for empty states with optional error handling
class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final VoidCallback? onAction;
  final String? actionLabel;
  final Failure? failure;

  const EmptyStateWidget({
    Key? key,
    required this.title,
    required this.message,
    required this.icon,
    this.onAction,
    this.actionLabel,
    this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (failure != null) {
      return ErrorDisplayWidget(failure: failure!, onRetry: onAction);
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 48, color: Colors.grey[400]),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            if (onAction != null && actionLabel != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(onPressed: onAction, child: Text(actionLabel!)),
            ],
          ],
        ),
      ),
    );
  }
}
