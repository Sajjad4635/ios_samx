// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_family_for_all_contract_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllFamilyForAllContractParam _$GetAllFamilyForAllContractParamFromJson(
        Map<String, dynamic> json) =>
    GetAllFamilyForAllContractParam(
      contractId: json['ContractId'] as String,
      customerCompanyId: json['CustomerCompanyId'] as String,
    );

Map<String, dynamic> _$GetAllFamilyForAllContractParamToJson(
        GetAllFamilyForAllContractParam instance) =>
    <String, dynamic>{
      'CustomerCompanyId': instance.customerCompanyId,
      'ContractId': instance.contractId,
    };
