// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      message: json['message'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      error: json['error'] as String?,
      details:
          (json['details'] as List<dynamic>?)
              ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timestamp: json['timestamp'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'details': instance.details,
      'timestamp': instance.timestamp,
      'path': instance.path,
    };

_$ValidationErrorImpl _$$ValidationErrorImplFromJson(
  Map<String, dynamic> json,
) => _$ValidationErrorImpl(
  field: json['field'] as String,
  message: json['message'] as String,
  rejectedValue: json['rejectedValue'],
  code: json['code'] as String?,
);

Map<String, dynamic> _$$ValidationErrorImplToJson(
  _$ValidationErrorImpl instance,
) => <String, dynamic>{
  'field': instance.field,
  'message': instance.message,
  'rejectedValue': instance.rejectedValue,
  'code': instance.code,
};
