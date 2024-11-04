import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_loan_param.g.dart';

@JsonSerializable(createFactory: false)
class RegisterLoanParam extends Equatable {
  @JsonKey(name: "policyid")
  final int policyId;
  final double amount;
  final String iban;
  final int paybackNumber;

  const RegisterLoanParam({
    required this.policyId,
    required this.amount,
    required this.iban,
    required this.paybackNumber,
  });

  Map<String, dynamic> toJson() => _$RegisterLoanParamToJson(this);
  
  @override
  List<Object?> get props => [policyId, amount, iban, paybackNumber];


}