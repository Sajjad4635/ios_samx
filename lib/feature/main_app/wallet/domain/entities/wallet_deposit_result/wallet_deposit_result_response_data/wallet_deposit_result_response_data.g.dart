// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_deposit_result_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDepositResultResponseData _$WalletDepositResultResponseDataFromJson(
        Map<String, dynamic> json) =>
    WalletDepositResultResponseData(
      isSuccess: json['isSuccess'] as bool,
      date: json['date'] as String,
      time: json['time'] as String,
      securePan: json['securePan'] as String?,
      traceId: json['traceId'] as String?,
      amount: (json['amount'] as num).toInt(),
    );
