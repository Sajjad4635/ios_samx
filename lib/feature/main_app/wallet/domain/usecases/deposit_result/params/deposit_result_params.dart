import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deposit_result_params.g.dart';

@JsonSerializable(createFactory: false)
class DepositResultParam extends Equatable {
  final String transactionId;

  const DepositResultParam({required this.transactionId});

  Map<String, dynamic> toJson() => _$DepositResultParamToJson(this);

  @override
  List<Object?> get props => [transactionId];
}
