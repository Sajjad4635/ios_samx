import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_buy_back_params.g.dart';

@JsonSerializable(createFactory: false)
class RegisterBuyBackParams extends Equatable {
  final String policyId;
  final List<String> ibanList;

  const RegisterBuyBackParams({required this.ibanList, required this.policyId});

  Map<String, dynamic> toJson() => _$RegisterBuyBackParamsToJson(this);
  
  @override
  List<Object?> get props => [policyId, ibanList];
}
