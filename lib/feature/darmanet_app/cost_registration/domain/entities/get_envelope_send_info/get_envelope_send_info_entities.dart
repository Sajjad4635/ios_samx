import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_envelope_send_info_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetEnvelopeSendInfoEntities extends Equatable {
  @JsonKey(name: "EnvelopeNumber")
  final String envelopeNumber;
  @JsonKey(name: "EnvelopeDate")
  final String envelopeDate;
  @JsonKey(name: "CustomerCompanyName")
  final String customerCompanyName;
  @JsonKey(name: "CustomerCompanyPhone")
  final String customerCompanyPhone;
  @JsonKey(name: "CostItemCount")
  final int costItemCount;
  @JsonKey(name: "TotalGivenAmount")
  final int totalGivenAmount;
  @JsonKey(name: "MainPersonFullName")
  final String mainPersonFullName;
  @JsonKey(name: "BranchName")
  final String branchName;
  @JsonKey(name: "BranchPostalCode")
  final String branchPostalCode;
  @JsonKey(name: "BranchAddress")
  final String branchAddress;
  @JsonKey(name: "BranchPhone")
  final String branchPhone;
  @JsonKey(name: "Gender")
  final int gender;
  @JsonKey(name: "InsuranceCompanyName")
  final String insuranceCompanyName;
  @JsonKey(name: "InsuranceNumber")
  final String insuranceNumber;
  @JsonKey(name: "IsClinical")
  final bool isClinical;
  @JsonKey(name: "PhoneNumber")
  final String? phoneNumber;
  @JsonKey(name: "EnvelopeIndex")
  final int envelopeIndex;
  @JsonKey(name: "Id")
  final String? id;

  const GetEnvelopeSendInfoEntities({
    required this.envelopeNumber,
    required this.envelopeDate,
    required this.customerCompanyName,
    required this.customerCompanyPhone,
    required this.costItemCount,
    required this.totalGivenAmount,
    required this.mainPersonFullName,
    required this.branchName,
    required this.branchPostalCode,
    required this.branchAddress,
    required this.branchPhone,
    required this.gender,
    required this.insuranceCompanyName,
    required this.insuranceNumber,
    required this.isClinical,
    required this.phoneNumber,
    required this.envelopeIndex,
    required this.id,
  });

  factory GetEnvelopeSendInfoEntities.fromJson(Map<String, dynamic> json) =>
      _$GetEnvelopeSendInfoEntitiesFromJson(json);

  @override
  List<Object?> get props => [
        envelopeNumber,
        envelopeDate,
        customerCompanyName,
        customerCompanyPhone,
        costItemCount,
        totalGivenAmount,
        mainPersonFullName,
        branchName,
        branchPostalCode,
        branchAddress,
        branchPhone,
        gender,
        insuranceCompanyName,
        insuranceNumber,
        isClinical,
        phoneNumber,
        envelopeIndex,
        id
      ];
}
