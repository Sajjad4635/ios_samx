import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'life_insurances_response_data.g.dart';

@JsonSerializable(createToJson: false)
class LifeInsurancesResponseData extends Equatable {
  final int policyId;
  final String fullBNO;
  final String insurerName;
  final int insurerCode;
  final String role;
  final String title;
  final String agent;
  final int agentCode;
  final String issuer;
  final int issuerCode;
  final String beginDate;
  final String endDate;
  final String status;
  final int insuranceYear;
  final bool isUnitLinked;

  const LifeInsurancesResponseData({
    required this.policyId,
    required this.fullBNO,
    required this.insurerName,
    required this.insurerCode,
    required this.role,
    required this.title,
    required this.agent,
    required this.agentCode,
    required this.issuer,
    required this.issuerCode,
    required this.beginDate,
    required this.endDate,
    required this.status,
    required this.insuranceYear,
    required this.isUnitLinked,
  });

  factory LifeInsurancesResponseData.fromJson(Map<String, dynamic> json) => _$LifeInsurancesResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        policyId,
        fullBNO,
        insurerName,
        insurerCode,
        role,
        title,
        agent,
        agentCode,
        issuer,
        issuerCode,
        beginDate,
        endDate,
        status,
        insuranceYear,
      ];
}
