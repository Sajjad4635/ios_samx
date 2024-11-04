import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'items.g.dart';

@JsonSerializable(createToJson: false)
class InsurancesListResponseDataItems extends Equatable {
  final int? policyId;
  final String? fullPolicyNo;
  final int? policyNo;
  final int? policyYear;
  final String? policyHolderFullName;
  final int? policyHolderId;
  final String? role;
  final String? insuranceType;
  final String? reagentName;
  final int? reagentCode;
  final String? issuerName;
  final int? issuerCode;
  final String? beginDate;
  final String? endDate;
  final String? policyStatus;
  final int? insuranceGroupId;
  final String? insuranceGroupName;

  const InsurancesListResponseDataItems({
    required this.policyId,
    required this.fullPolicyNo,
    required this.policyNo,
    required this.policyYear,
    required this.policyHolderFullName,
    required this.policyHolderId,
    required this.role,
    required this.insuranceType, 
    required this.reagentName,
    required this.reagentCode,
    required this.issuerName,
    required this.issuerCode, 
    required this.beginDate, 
    required this.endDate,
    required this.policyStatus,
    required this.insuranceGroupId,
    required this.insuranceGroupName,
  });

  factory InsurancesListResponseDataItems.fromJson(Map<String, dynamic> json) =>
      _$InsurancesListResponseDataItemsFromJson(json);

  @override
  List<Object?> get props => [
        fullPolicyNo,
        policyId,
        policyNo,
        policyYear,
        policyHolderFullName,
        policyHolderId,
        role,
        insuranceType,
        reagentName,
        reagentCode,
        beginDate,
        endDate,
        policyStatus,
        insuranceGroupId,
        insuranceGroupName,
      ];
}
