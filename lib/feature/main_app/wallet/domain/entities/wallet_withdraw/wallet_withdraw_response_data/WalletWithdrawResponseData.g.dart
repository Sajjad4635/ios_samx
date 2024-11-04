// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WalletWithdrawResponseData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletWithdrawResponseData _$WalletWithdrawResponseDataFromJson(
        Map<String, dynamic> json) =>
    WalletWithdrawResponseData(
      referenceNumber: json['Reference_Number'] as String,
      referenceCode: json['Reference_Code'] as String,
      status: json['Status'] as String,
      transferType: json['Transfer_Type'] as String,
      transferDate: json['Transfer_Date'] as String,
      transferPersianDate: json['Transfer_Persian_Date'] as String,
      transferTime: json['Transfer_Time'] as String,
      amount: json['Amount'] as String,
      iBan: json['Iban'] as String,
    );
