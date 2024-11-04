import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetProfileResponseData extends Equatable {
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
  final int? deathStatus;
  final String? staffUsername;
  final String? address;

  const GetProfileResponseData(
    {
    this.firstName,
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
    this.deathStatus,
    this.staffUsername,
      this.address,
    });

  factory GetProfileResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetProfileResponseDataFromJson(json);

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
        deathStatus,
        staffUsername,
        address
      ];
}
