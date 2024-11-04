import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cash_withdraw_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateCashWithdrawParam extends Equatable {
  final int policyId;
  final double amount;
  final List<String> ibanList;

  const CreateCashWithdrawParam({required this.amount, required this.policyId, required this.ibanList});

  Map<String, dynamic> toJson() => _$CreateCashWithdrawParamToJson(this);
  @override
  List<Object?> get props => [policyId, amount, ibanList];
}
