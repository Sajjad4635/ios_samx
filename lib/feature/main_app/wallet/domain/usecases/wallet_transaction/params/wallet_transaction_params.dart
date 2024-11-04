

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction_params.g.dart';
@JsonSerializable(createFactory: false)
class WalletTransactionParams  extends Equatable {
  final String nationalCode ;

  const WalletTransactionParams({required this.nationalCode});


  Map<String, dynamic> toJson() => _$WalletTransactionParamsToJson(this);

  @override

  List<Object?> get props => [nationalCode];

}