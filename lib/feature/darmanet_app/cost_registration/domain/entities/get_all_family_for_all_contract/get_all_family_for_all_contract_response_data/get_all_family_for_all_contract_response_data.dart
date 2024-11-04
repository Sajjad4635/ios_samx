import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_family_for_all_contract_response_data.g.dart';

@JsonSerializable()
class GetAllFamilyForAllContractResponseData extends Equatable {
  @JsonKey(name: "AdditionalData")
  final AdditionalData additionalData;
  @JsonKey(name: "Disabled")
  final bool disabled;
  @JsonKey(name: "Selected")
  final bool selected;
  @JsonKey(name: "Text")
  final String text;
  @JsonKey(name: "Value")
  final String value;

  const GetAllFamilyForAllContractResponseData({
    required this.additionalData,
    required this.disabled,
    required this.selected,
    required this.text,
    required this.value,
  });

  factory GetAllFamilyForAllContractResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAllFamilyForAllContractResponseDataFromJson(json);

  @override
  List<Object?> get props => [additionalData, disabled, selected, text, value];
}

@JsonSerializable()
class AdditionalData extends Equatable {
  @JsonKey(name: "NationalCode")
  final String nationalCode;

  const AdditionalData({required this.nationalCode});

  factory AdditionalData.fromJson(Map<String, dynamic> json) => _$AdditionalDataFromJson(json);

  @override
  List<Object?> get props => [nationalCode];
}
