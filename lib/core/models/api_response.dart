import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

/// Generic API response wrapper
@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success({
    required T data,
    String? message,
  }) = _Success<T>;

  const factory ApiResponse.error({
    required String message,
    int? statusCode,
    @Default([]) List<ValidationError> errors,
  }) = _Error<T>;
}

/// Paginated response for list endpoints
@freezed
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    required int currentPage,
    required int totalPages,
    required int totalItems,
    required int itemsPerPage,
    bool? hasNextPage,
    bool? hasPreviousPage,
  }) = _PaginatedResponse<T>;
}

/// Error response structure
@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required String message,
    required int statusCode,
    String? error,
    @Default([]) List<ValidationError> details,
    String? timestamp,
    String? path,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

/// Validation error details
@freezed
class ValidationError with _$ValidationError {
  const factory ValidationError({
    required String field,
    required String message,
    dynamic rejectedValue,
    String? code,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
}

/// Success response wrapper
@freezed
class SuccessResponse<T> with _$SuccessResponse<T> {
  const factory SuccessResponse({
    required T data,
    String? message,
    int? statusCode,
    String? timestamp,
  }) = _SuccessResponse<T>;
}