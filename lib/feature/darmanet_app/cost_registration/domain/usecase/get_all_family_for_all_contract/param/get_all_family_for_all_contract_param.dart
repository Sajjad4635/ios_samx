import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_family_for_all_contract_param.g.dart';

@JsonSerializable()
class GetAllFamilyForAllContractParam extends Equatable {
  @JsonKey(name: "CustomerCompanyId")
  final String customerCompanyId;
  @JsonKey(name: "ContractId")
  final String contractId;

  const GetAllFamilyForAllContractParam({required this.contractId, required this.customerCompanyId});

  Map<String, dynamic> toJson() => _$GetAllFamilyForAllContractParamToJson(this);

  @override
  List<Object?> get props => [customerCompanyId, contractId];
}
