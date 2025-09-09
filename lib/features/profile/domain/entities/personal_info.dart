import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info.freezed.dart';
part 'personal_info.g.dart';

@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    @Default('') String fullName,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String ageGroup,
    @Default('') String gender,
    @Default('') String employmentStatus,
    @Default('') String annualIncome,
    @Default(false) bool privacyConsent,
    @Default(false) bool dataProcessingConsent,
    @Default(false) bool locationConsent,
    @Default(false) bool backgroundLocationConsent,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);
}

/// Age group options
enum AgeGroup {
  @JsonValue('13-17')
  teen('13-17', '13-17 years'),
  @JsonValue('18-24')
  youngAdult('18-24', '18-24 years'),
  @JsonValue('25-34')
  adult('25-34', '25-34 years'),
  @JsonValue('35-44')
  middleAged('35-44', '35-44 years'),
  @JsonValue('45-54')
  mature('45-54', '45-54 years'),
  @JsonValue('55-64')
  senior('55-64', '55-64 years'),
  @JsonValue('65+')
  elderly('65+', '65+ years');

  const AgeGroup(this.value, this.displayName);
  final String value;
  final String displayName;
}

/// Gender options
enum Gender {
  @JsonValue('male')
  male('male', 'Male'),
  @JsonValue('female')
  female('female', 'Female'),
  @JsonValue('other')
  other('other', 'Other'),
  @JsonValue('prefer_not_to_say')
  preferNotToSay('prefer_not_to_say', 'Prefer not to say');

  const Gender(this.value, this.displayName);
  final String value;
  final String displayName;
}

/// Employment status options
enum EmploymentStatus {
  @JsonValue('student')
  student('student', 'Student'),
  @JsonValue('employed_full_time')
  employedFullTime('employed_full_time', 'Employed (Full-time)'),
  @JsonValue('employed_part_time')
  employedPartTime('employed_part_time', 'Employed (Part-time)'),
  @JsonValue('self_employed')
  selfEmployed('self_employed', 'Self-employed'),
  @JsonValue('unemployed')
  unemployed('unemployed', 'Unemployed'),
  @JsonValue('retired')
  retired('retired', 'Retired'),
  @JsonValue('homemaker')
  homemaker('homemaker', 'Homemaker'),
  @JsonValue('other')
  other('other', 'Other');

  const EmploymentStatus(this.value, this.displayName);
  final String value;
  final String displayName;
}

/// Annual income options
enum AnnualIncome {
  @JsonValue('below_2_lakh')
  belowTwoLakh('below_2_lakh', 'Below ₹2 Lakh'),
  @JsonValue('2_5_lakh')
  twoToFiveLakh('2_5_lakh', '₹2-5 Lakh'),
  @JsonValue('5_10_lakh')
  fiveToTenLakh('5_10_lakh', '₹5-10 Lakh'),
  @JsonValue('10_20_lakh')
  tenToTwentyLakh('10_20_lakh', '₹10-20 Lakh'),
  @JsonValue('20_50_lakh')
  twentyToFiftyLakh('20_50_lakh', '₹20-50 Lakh'),
  @JsonValue('above_50_lakh')
  aboveFiftyLakh('above_50_lakh', 'Above ₹50 Lakh'),
  @JsonValue('prefer_not_to_say')
  preferNotToSay('prefer_not_to_say', 'Prefer not to say');

  const AnnualIncome(this.value, this.displayName);
  final String value;
  final String displayName;
}
