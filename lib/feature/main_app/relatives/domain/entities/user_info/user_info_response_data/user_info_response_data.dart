import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info_response_data.g.dart';

@JsonSerializable(createToJson: false)
class UserInfoResponseData extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? nationalCode;
  final String? phoneNumber;
  final String? fatherName;
  final String? birthDate;
  final int? birthCertificateNo;
  final int? serialId;
  final String? birthCertificateSeries;
  final String? zipCode;
  final String? zipCodeDescription;
  final int? gender;
  final String? genderKey;
  final int? deathStatus;
  final String? deathStatusKey;
  final String? staffUsername;
  final String? address;

  const UserInfoResponseData(
      {this.firstName,
      this.lastName,
      this.nationalCode,
      this.phoneNumber,
      this.fatherName,
      this.birthDate,
      this.birthCertificateNo,
      this.serialId,
      this.birthCertificateSeries,
      this.zipCode,
      this.zipCodeDescription,
      this.gender,
      this.genderKey,
      this.deathStatus,
      this.deathStatusKey,
      this.staffUsername,
      this.address});

  factory UserInfoResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        nationalCode,
        phoneNumber,
        fatherName,
        birthDate,
        birthCertificateNo,
        serialId,
        birthCertificateSeries,
        zipCode,
        zipCodeDescription,
        gender,
        genderKey,
        deathStatus,
        deathStatusKey,
        staffUsername,
        address
      ];
}
