import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_settlement_withdraw_response_data.g.dart';

@JsonSerializable(createToJson: false)
class CreateSettlementWithdrawResponseData extends Equatable {
  final String message;

  const CreateSettlementWithdrawResponseData({required this.message});

  factory CreateSettlementWithdrawResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateSettlementWithdrawResponseDataFromJson(json);

  @override
  List<Object?> get props => [message];
}
