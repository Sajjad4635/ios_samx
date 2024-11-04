import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'withdraw_unitlinked_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WithdrawUnitlinkedResponseData extends Equatable {
  final String id;
  final int amount;
  final String dateTime;
  final String state;
  final String? failedReason;
  final int policyId;
  final String deliveryType;
  final String? lasRequestId;

  const WithdrawUnitlinkedResponseData({
    required this.id,
    required this.amount,
    required this.dateTime,
    required this.state,
    required this.deliveryType,
    required this.policyId,
    this.lasRequestId,
    this.failedReason,
  });

  factory WithdrawUnitlinkedResponseData.fromJson(Map<String, dynamic> json) =>
      _$WithdrawUnitlinkedResponseDataFromJson(json);

  @override
  List<Object?> get props => [id, amount, dateTime, state, failedReason];
}
