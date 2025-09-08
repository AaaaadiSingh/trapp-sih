// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_confirmation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewConfirmationImpl _$$ReviewConfirmationImplFromJson(
  Map<String, dynamic> json,
) => _$ReviewConfirmationImpl(
  personalInfo: PersonalInfo.fromJson(
    json['personalInfo'] as Map<String, dynamic>,
  ),
  locationDemographics: LocationDemographics.fromJson(
    json['locationDemographics'] as Map<String, dynamic>,
  ),
  finalConsent: json['finalConsent'] as bool,
  dataProcessingConsent: json['dataProcessingConsent'] as bool,
  privacyPolicyAccepted: json['privacyPolicyAccepted'] as bool,
  termsOfServiceAccepted: json['termsOfServiceAccepted'] as bool,
  marketingConsent: json['marketingConsent'] as bool? ?? false,
  submittedAt: DateTime.parse(json['submittedAt'] as String),
  submissionId: json['submissionId'] as String?,
);

Map<String, dynamic> _$$ReviewConfirmationImplToJson(
  _$ReviewConfirmationImpl instance,
) => <String, dynamic>{
  'personalInfo': instance.personalInfo,
  'locationDemographics': instance.locationDemographics,
  'finalConsent': instance.finalConsent,
  'dataProcessingConsent': instance.dataProcessingConsent,
  'privacyPolicyAccepted': instance.privacyPolicyAccepted,
  'termsOfServiceAccepted': instance.termsOfServiceAccepted,
  'marketingConsent': instance.marketingConsent,
  'submittedAt': instance.submittedAt.toIso8601String(),
  'submissionId': instance.submissionId,
};

_$DataSummaryImpl _$$DataSummaryImplFromJson(Map<String, dynamic> json) =>
    _$DataSummaryImpl(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      ageGroup: json['ageGroup'] as String,
      gender: json['gender'] as String,
      employmentStatus: json['employmentStatus'] as String,
      homeLocation: json['homeLocation'] as String,
      workLocation: json['workLocation'] as String,
      privacyLevel: json['privacyLevel'] as String,
      shareLocationData: json['shareLocationData'] as bool,
      totalConsentItems: (json['totalConsentItems'] as num).toInt(),
      acceptedConsentItems: (json['acceptedConsentItems'] as num).toInt(),
    );

Map<String, dynamic> _$$DataSummaryImplToJson(_$DataSummaryImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'ageGroup': instance.ageGroup,
      'gender': instance.gender,
      'employmentStatus': instance.employmentStatus,
      'homeLocation': instance.homeLocation,
      'workLocation': instance.workLocation,
      'privacyLevel': instance.privacyLevel,
      'shareLocationData': instance.shareLocationData,
      'totalConsentItems': instance.totalConsentItems,
      'acceptedConsentItems': instance.acceptedConsentItems,
    };
