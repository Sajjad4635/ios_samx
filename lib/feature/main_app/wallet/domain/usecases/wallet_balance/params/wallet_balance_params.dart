import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_balance_params.g.dart';

@JsonSerializable(createFactory: false)
class WalletBalanceParams extends Equatable {
  final String nationalCode;

  const WalletBalanceParams({required this.nationalCode});

  Map<String, dynamic> toJson() => _$WalletBalanceParamsToJson(this);

  @override
  List<Object?> get props => [nationalCode];
}
