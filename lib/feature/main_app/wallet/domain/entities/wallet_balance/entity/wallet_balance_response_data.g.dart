// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_balance_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletBalanceResponseData _$WalletBalanceResponseDataFromJson(
        Map<String, dynamic> json) =>
    WalletBalanceResponseData(
      walletBalance: (json['Wallet_Balance'] as num).toDouble(),
      walletBlockedBalance: (json['Wallet_Blocked_Balance'] as num).toDouble(),
      walletWithdrawalBalance:
          (json['Wallet_Withdrawal_Balance'] as num).toDouble(),
    );
