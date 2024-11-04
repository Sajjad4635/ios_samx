import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_verify_params.g.dart';

@JsonSerializable(createFactory: false)
class PaymentVerifyParams extends Equatable {
  final int terminalId;
  final String resNum;
  final String refNum;

  const PaymentVerifyParams(
      {required this.terminalId, required this.resNum, required this.refNum});

  Map<String, dynamic> toJson() => _$PaymentVerifyParamsToJson(this);

  @override
  List<Object?> get props => [terminalId, resNum, refNum];
}
