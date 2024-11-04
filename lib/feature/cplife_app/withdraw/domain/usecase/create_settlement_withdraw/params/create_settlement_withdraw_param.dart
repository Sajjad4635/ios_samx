import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_settlement_withdraw_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateSettlementWithdrawParam extends Equatable {
  final int policyId;
  final double amount;

  const CreateSettlementWithdrawParam({required this.amount, required this.policyId});

  Map<String, dynamic> toJson() => _$CreateSettlementWithdrawParamToJson(this);

  @override
  List<Object?> get props => [amount, policyId];
}
