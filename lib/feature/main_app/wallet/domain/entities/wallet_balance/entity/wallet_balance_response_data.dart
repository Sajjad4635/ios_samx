import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_balance_response_data.g.dart';
@JsonSerializable(createToJson: false)

 class WalletBalanceResponseData extends Equatable {

  @JsonKey(name: "Wallet_Balance")
  final double walletBalance ;
  @JsonKey(name: "Wallet_Blocked_Balance")
  final double walletBlockedBalance ;
  @JsonKey(name: "Wallet_Withdrawal_Balance")
  final double walletWithdrawalBalance ;

  const WalletBalanceResponseData({required this.walletBalance, required this.walletBlockedBalance, required this.walletWithdrawalBalance});

  factory WalletBalanceResponseData.fromJson(Map<String, dynamic> json) => _$WalletBalanceResponseDataFromJson(json);

  @override

  List<Object?> get props => [
   walletBalance,
   walletBlockedBalance,
   walletWithdrawalBalance
  ];



}