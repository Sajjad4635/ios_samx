// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletTransactionResponseData _$WalletTransactionResponseDataFromJson(
        Map<String, dynamic> json) =>
    WalletTransactionResponseData(
      nationalCode: json['nationalCode'] as String,
      transactionType: json['transactionType'] as String,
      transferType: json['transferType'] as String,
      referenceNumber: json['referenceNumber'] as String,
      amount: (json['amount'] as num).toDouble(),
      source: json['source'] as String,
      destination: json['destination'] as String,
      description: json['description'] as String,
      note: json['note'] as String?,
      persianDate: json['persianDate'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      transactionTypeCode: json['transactionTypeCode'] as String,
    );
