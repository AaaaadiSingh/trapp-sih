// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalInfoImpl _$$PersonalInfoImplFromJson(Map<String, dynamic> json) =>
    _$PersonalInfoImpl(
      fullName: json['fullName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      ageGroup: json['ageGroup'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      employmentStatus: json['employmentStatus'] as String? ?? '',
      annualIncome: json['annualIncome'] as String? ?? '',
      privacyConsent: json['privacyConsent'] as bool? ?? false,
      dataProcessingConsent: json['dataProcessingConsent'] as bool? ?? false,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PersonalInfoImplToJson(_$PersonalInfoImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'ageGroup': instance.ageGroup,
      'gender': instance.gender,
      'employmentStatus': instance.employmentStatus,
      'annualIncome': instance.annualIncome,
      'privacyConsent': instance.privacyConsent,
      'dataProcessingConsent': instance.dataProcessingConsent,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
