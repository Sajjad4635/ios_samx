import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_payment_response_data.g.dart';

@JsonSerializable(createToJson: false)
class WalletPaymentResponseData extends Equatable {
  final String paymentUrl;

  const WalletPaymentResponseData({required this.paymentUrl});

  factory WalletPaymentResponseData.fromJson(Map<String, dynamic> json) => _$WalletPaymentResponseDataFromJson(json);

  @override
  List<Object?> get props => [paymentUrl];
}
