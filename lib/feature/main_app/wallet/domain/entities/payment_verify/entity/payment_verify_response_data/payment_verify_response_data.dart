import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'transactionDetail/transaction_detail.dart';

part 'payment_verify_response_data.g.dart';

@JsonSerializable(createToJson: false)
class PaymentVerifyResponseData extends Equatable {

  @JsonKey(name: "transactionDetail")
  final TransactionDetail transactionDetail;
  final int resultCode;
  final String resultDescription;
  final bool success;

  const PaymentVerifyResponseData(
      {required this.transactionDetail,
      required this.resultCode,
      required this.resultDescription,
      required this.success});

  factory PaymentVerifyResponseData.fromJson(Map<String, dynamic> json) => _$PaymentVerifyResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        transactionDetail,
        resultCode,
        resultDescription,
        success,
      ];
}
