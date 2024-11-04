import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cost_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateCostParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "PrescriptionType")
  final String prescriptionType;
  @JsonKey(name: "PersonId")
  final String personId;
  @JsonKey(name: "CostDate")
  final String costDate;
  @JsonKey(name: "CostDescriptionId")
  final String costDescriptionId;
  @JsonKey(name: "GivenAmount")
  final String givenAmount;
  @JsonKey(name: "State")
  final int state;
  @JsonKey(name: "CustomerCompanyId")
  final String customerCompanyId;
  @JsonKey(name: "ContractId")
  final String contractId;
  @JsonKey(name: "CustomerCompanyPersonId")
  final String customerCompanyPersonId;

  const CreateCostParam({
    required this.personId,
    required this.costDate,
    required this.costDescriptionId,
    required this.givenAmount,
    required this.state,
    required this.customerCompanyId,
    required this.contractId,
    required this.customerCompanyPersonId,
    required this.id,
    required this.prescriptionType,
  });

  Map<String, dynamic> toJson() => _$CreateCostParamToJson(this);

  @override
  List<Object?> get props => [
        id,
        prescriptionType,
        personId,
        costDate,
        costDescriptionId,
        givenAmount,
        state,
        customerCompanyId,
        contractId,
        customerCompanyPersonId,
        prescriptionType
      ];
}