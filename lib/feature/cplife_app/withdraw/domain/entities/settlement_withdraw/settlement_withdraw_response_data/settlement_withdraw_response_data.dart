import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settlement_withdraw_response_data.g.dart';

@JsonSerializable(createToJson: false)
class SettlementWithdrawResponseData extends Equatable {
  final String dueDate;
  final int amount;

  const SettlementWithdrawResponseData({required this.amount, required this.dueDate});

  factory SettlementWithdrawResponseData.fromJson(Map<String, dynamic> json) => _$SettlementWithdrawResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [dueDate, amount];
}
