import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_payment_params.g.dart';

@JsonSerializable(createFactory: false)
class WalletPaymentParams extends Equatable {
  @JsonKey(name: "TransferTypeId")
  final String transferTypeId;
  final int amount;
  final String redirectUrl;

  const WalletPaymentParams(
      {required this.transferTypeId, required this.amount, required this.redirectUrl,});

  Map<String, dynamic> toJson() => _$WalletPaymentParamsToJson(this);
  
  @override
  List<Object?> get props => [transferTypeId, amount, redirectUrl,];
}
