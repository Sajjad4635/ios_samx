import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'iban_infos/iban_infos.dart';

part 'details_ticket_response_data.g.dart';

@JsonSerializable(createToJson: false)
class DetailsTicketResponseData extends Equatable {
  final int policyId;
  final int issuerCode;
  final int agentCode;
  final String statusTitle;
  final String insuranceStartDate;
  final String insuranceEndDate;
  final int insuranceYear;
  final int savedMoney;
  final int requestAmount;
  final List<IbanInfo> ibanInfos;

  const DetailsTicketResponseData({
    required this.policyId,
    required this.issuerCode,
    required this.agentCode,
    required this.statusTitle,
    required this.insuranceStartDate,
    required this.insuranceEndDate,
    required this.insuranceYear,
    required this.savedMoney,
    required this.requestAmount,
    required this.ibanInfos,
  });

  factory DetailsTicketResponseData.fromJson(Map<String, dynamic> json) => _$DetailsTicketResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        policyId,
        issuerCode,
        agentCode,
        insuranceStartDate,
        insuranceEndDate,
        insuranceYear,
        savedMoney,
        requestAmount,
        ibanInfos,
        statusTitle,
      ];
}
