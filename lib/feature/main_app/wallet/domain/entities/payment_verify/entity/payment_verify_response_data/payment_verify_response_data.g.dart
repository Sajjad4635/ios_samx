// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_verify_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentVerifyResponseData _$PaymentVerifyResponseDataFromJson(
        Map<String, dynamic> json) =>
    PaymentVerifyResponseData(
      transactionDetail: TransactionDetail.fromJson(
          json['transactionDetail'] as Map<String, dynamic>),
      resultCode: (json['resultCode'] as num).toInt(),
      resultDescription: json['resultDescription'] as String,
      success: json['success'] as bool,
    );
