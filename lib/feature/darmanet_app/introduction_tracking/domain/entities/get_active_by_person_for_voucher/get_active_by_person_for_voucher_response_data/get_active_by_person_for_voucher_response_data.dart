import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_active_by_person_for_voucher_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetActiveByPersonForVoucherResponseData extends Equatable {
  @JsonKey(name: "CustomerCompanyId")
  final String customerCompanyId;
  @JsonKey(name: "ContractNumberWithCustomer")
  final String contractNumberWithCustomer;
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "InsuranceCompanyId")
  final String insuranceCompanyId;
  @JsonKey(name: "ContractNumber")
  final String contractNumber;

  const GetActiveByPersonForVoucherResponseData({
    required this.customerCompanyId,
    required this.contractNumberWithCustomer,
    required this.id,
    required this.insuranceCompanyId,
    required this.contractNumber,
  });

  factory GetActiveByPersonForVoucherResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetActiveByPersonForVoucherResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        customerCompanyId,
        contractNumberWithCustomer,
        id,
        insuranceCompanyId,
        contractNumber,
      ];
}