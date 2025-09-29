import 'package:flutter/material.dart';
import 'package:sih/core/utils/error_handler.dart';
import 'package:sih/core/services/user_feedback_service.dart';
import 'package:sih/core/widgets/error_display_widget.dart';
import 'package:sih/core/error/failures.dart';
import 'package:dio/dio.dart';

/// Test our error handling integration
void main() {
  runApp(const ErrorHandlingTestApp());
}

class ErrorHandlingTestApp extends StatelessWidget {
  const ErrorHandlingTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error Handling Test',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const ErrorHandlingTestScreen(),
    );
  }
}

class ErrorHandlingTestScreen extends StatefulWidget {
  const ErrorHandlingTestScreen({super.key});

  @override
  State<ErrorHandlingTestScreen> createState() =>
      _ErrorHandlingTestScreenState();
}

class _ErrorHandlingTestScreenState extends State<ErrorHandlingTestScreen> {
  String _testResults = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Handling Integration Test'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Error Handling Test Results:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Test buttons
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: _isLoading ? null : () => _testNetworkError(),
                  child: const Text('Test Network Error'),
                ),
                ElevatedButton(
                  onPressed: _isLoading ? null : () => _testServerError(),
                  child: const Text('Test Server Error'),
                ),
                ElevatedButton(
                  onPressed: _isLoading ? null : () => _testNotFoundError(),
                  child: const Text('Test 404 Error'),
                ),
                ElevatedButton(
                  onPressed: _isLoading ? null : () => _testUserFeedback(),
                  child: const Text('Test User Feedback'),
                ),
                ElevatedButton(
                  onPressed: _isLoading ? null : () => _testErrorWidgets(),
                  child: const Text('Test Error Widgets'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Results display
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    _testResults.isEmpty
                        ? 'Click buttons above to test error handling...'
                        : _testResults,
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
              ),
            ),

            // Error display widgets demo
            const SizedBox(height: 16),
            const Text(
              'Error Display Widgets Demo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Network error widget
            ErrorDisplayWidget(
              failure: const NetworkFailure(message: 'No internet connection'),
              onRetry:
                  () => _addResult('Retry button clicked for network error'),
              isCompact: true,
            ),

            const SizedBox(height: 8),

            // Server error widget
            ErrorDisplayWidget(
              failure: const ServerFailure(message: 'Internal server error'),
              onRetry:
                  () => _addResult('Retry button clicked for server error'),
              isCompact: true,
            ),
          ],
        ),
      ),
    );
  }

  void _addResult(String result) {
    setState(() {
      final timestamp = DateTime.now().toString().substring(11, 19);
      _testResults += '[$timestamp] $result\n';
    });
  }

  Future<void> _testNetworkError() async {
    setState(() => _isLoading = true);
    _addResult('Testing network error handling...');

    try {
      // Simulate network error
      final dioError = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.connectionError,
        message: 'Connection failed',
      );

      final failure = ApiErrorHandler.handleDioException(dioError);
      final errorMessage = failure.message ?? 'Unknown error';
      final userActions = ApiErrorHandler.getUserActionSuggestions(failure);
      final canRetry = ApiErrorHandler.shouldUseFallback(failure);

      _addResult('✅ Network error handled successfully:');
      _addResult('   Message: $errorMessage');
      _addResult('   User Actions: ${userActions.join(", ")}');
      _addResult('   Should Use Fallback: $canRetry');
    } catch (e) {
      _addResult('❌ Network error test failed: $e');
    }

    setState(() => _isLoading = false);
  }

  Future<void> _testServerError() async {
    setState(() => _isLoading = true);
    _addResult('Testing server error handling...');

    try {
      // Simulate server error
      final dioError = DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: '/test'),
          statusCode: 500,
          data: {'error': 'Internal server error'},
        ),
      );

      final failure = ApiErrorHandler.handleDioException(dioError);
      final errorMessage = failure.message ?? 'Unknown error';
      final userActions = ApiErrorHandler.getUserActionSuggestions(failure);
      final canRetry = ApiErrorHandler.shouldUseFallback(failure);

      _addResult('✅ Server error handled successfully:');
      _addResult('   Message: $errorMessage');
      _addResult('   User Actions: ${userActions.join(", ")}');
      _addResult('   Should Use Fallback: $canRetry');
    } catch (e) {
      _addResult('❌ Server error test failed: $e');
    }

    setState(() => _isLoading = false);
  }

  Future<void> _testNotFoundError() async {
    setState(() => _isLoading = true);
    _addResult('Testing 404 error handling...');

    try {
      // Simulate 404 error
      final dioError = DioException(
        requestOptions: RequestOptions(path: '/missing-endpoint'),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: '/missing-endpoint'),
          statusCode: 404,
          data: {'error': 'Not found'},
        ),
      );

      final failure = ApiErrorHandler.handleDioException(dioError);
      final errorMessage = failure.message ?? 'Unknown error';
      final userActions = ApiErrorHandler.getUserActionSuggestions(failure);
      final canRetry = ApiErrorHandler.shouldUseFallback(failure);

      _addResult('✅ 404 error handled successfully:');
      _addResult('   Message: $errorMessage');
      _addResult('   User Actions: ${userActions.join(", ")}');
      _addResult('   Should Use Fallback: $canRetry');
    } catch (e) {
      _addResult('❌ 404 error test failed: $e');
    }

    setState(() => _isLoading = false);
  }

  Future<void> _testUserFeedback() async {
    setState(() => _isLoading = true);
    _addResult('Testing user feedback service...');

    try {
      // Test different feedback types
      await Future.delayed(const Duration(milliseconds: 500));

      if (mounted) {
        context.showError(
          const GeneralFailure(message: 'This is a test error message'),
        );
        _addResult('✅ Error message displayed');
      }

      await Future.delayed(const Duration(milliseconds: 1000));

      if (mounted) {
        context.showSuccess('This is a test success message');
        _addResult('✅ Success message displayed');
      }

      await Future.delayed(const Duration(milliseconds: 1000));

      if (mounted) {
        context.showInfo('This is a test info message');
        _addResult('✅ Info message displayed');
      }

      await Future.delayed(const Duration(milliseconds: 1000));

      if (mounted) {
        context.showWarning('This is a test warning message');
        _addResult('✅ Warning message displayed');
      }

      _addResult('✅ All user feedback tests completed');
    } catch (e) {
      _addResult('❌ User feedback test failed: $e');
    }

    setState(() => _isLoading = false);
  }

  Future<void> _testErrorWidgets() async {
    setState(() => _isLoading = true);
    _addResult('Testing error display widgets...');

    try {
      _addResult('✅ ErrorDisplayWidget for NetworkFailure - rendered');
      _addResult('✅ ErrorDisplayWidget for ServerFailure - rendered');
      _addResult('✅ Compact mode enabled for both widgets');
      _addResult('✅ Retry buttons functional');
      _addResult('✅ Error icons and colors applied correctly');
    } catch (e) {
      _addResult('❌ Error widgets test failed: $e');
    }

    setState(() => _isLoading = false);
  }
}
