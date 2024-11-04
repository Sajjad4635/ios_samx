import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_deposit_response_data.g.dart';

@JsonSerializable(createToJson: false)
class CreateDepositResponseData extends Equatable {
  final String id;
  final int amount;
  final String dateTime;
  final String state;
  final String failedReason;
  final int policyId;
  final String deliveryType;
  final String lasRequestId;

  const CreateDepositResponseData({
    required this.id,
    required this.amount,
    required this.dateTime,
    required this.state,
    required this.failedReason,
    required this.deliveryType,
    required this.lasRequestId,
    required this.policyId,
  });

  factory CreateDepositResponseData.fromJson(Map<String, dynamic> json) => _$CreateDepositResponseDataFromJson(json);

  @override
  List<Object?> get props => [id, amount, dateTime, state, failedReason];
}