// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_family_for_all_contract_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllFamilyForAllContractResponseData
    _$GetAllFamilyForAllContractResponseDataFromJson(
            Map<String, dynamic> json) =>
        GetAllFamilyForAllContractResponseData(
          additionalData: AdditionalData.fromJson(
              json['AdditionalData'] as Map<String, dynamic>),
          disabled: json['Disabled'] as bool,
          selected: json['Selected'] as bool,
          text: json['Text'] as String,
          value: json['Value'] as String,
        );

Map<String, dynamic> _$GetAllFamilyForAllContractResponseDataToJson(
        GetAllFamilyForAllContractResponseData instance) =>
    <String, dynamic>{
      'AdditionalData': instance.additionalData,
      'Disabled': instance.disabled,
      'Selected': instance.selected,
      'Text': instance.text,
      'Value': instance.value,
    };

AdditionalData _$AdditionalDataFromJson(Map<String, dynamic> json) =>
    AdditionalData(
      nationalCode: json['NationalCode'] as String,
    );

Map<String, dynamic> _$AdditionalDataToJson(AdditionalData instance) =>
    <String, dynamic>{
      'NationalCode': instance.nationalCode,
    };
