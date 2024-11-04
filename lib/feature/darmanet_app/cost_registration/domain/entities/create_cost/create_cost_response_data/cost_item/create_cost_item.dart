import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cost_item.g.dart';

@JsonSerializable()
class CostItem extends Equatable {
  @JsonKey(name: "Id")
  final String? id;
  @JsonKey(name: "EnvelopeId")
  final String? envelopeId;
  @JsonKey(name: "CenterName")
  final String? centerName;
  @JsonKey(name: "GivenAmount")
  final int? givenAmount;
  @JsonKey(name: "PersonId")
  final String? personId;
  @JsonKey(name: "CostDescriptionId")
  final String? costDescriptionId;
  @JsonKey(name: "CostDescriptionTitle")
  final String? costDescriptionTitle;
  @JsonKey(name: "PersonName")
  final String? personName;
  @JsonKey(name: "NationalCode")
  final String? nationalCode;
  @JsonKey(name: "FirstName")
  final String? firstName;
  @JsonKey(name: "LastName")
  final String? lastName;
  @JsonKey(name: "CustomerCompanyName")
  final String? customerCompanyName;
  @JsonKey(name: "CustomerCompanyId")
  final String? customerCompanyId;
  @JsonKey(name: "EnvelopeName")
  final String? envelopeName;
  @JsonKey(name: "EnvelopeBranchId")
  final String? envelopeBranchId;
  @JsonKey(name: "InsuranceCompanyId")
  final String? insuranceCompanyId;

  const CostItem({
    required this.id,
    required this.envelopeId,
    required this.centerName,
    required this.givenAmount,
    required this.personId,
    required this.costDescriptionId,
    required this.costDescriptionTitle,
    required this.personName,
    required this.nationalCode,
    required this.firstName,
    required this.lastName,
    required this.customerCompanyName,
    required this.customerCompanyId,
    required this.envelopeName,
    required this.envelopeBranchId,
    required this.insuranceCompanyId,
  });

  factory CostItem.fromJson(Map<String, dynamic> json) => _$CostItemFromJson(json);

  @override
  List<Object?> get props => [
        id,
        envelopeId,
        centerName,
        centerName,
        givenAmount,
        personId,
        costDescriptionId,
        costDescriptionTitle,
        personName,
        nationalCode,
        firstName,
        lastName,
        customerCompanyName,
        customerCompanyId,
        envelopeName,
        envelopeBranchId,
        insuranceCompanyId,
      ];
}
