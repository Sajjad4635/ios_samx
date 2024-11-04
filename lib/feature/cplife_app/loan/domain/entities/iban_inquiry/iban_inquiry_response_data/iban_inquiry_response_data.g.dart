// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iban_inquiry_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IbanInquiryResponseData _$IbanInquiryResponseDataFromJson(
        Map<String, dynamic> json) =>
    IbanInquiryResponseData(
      status: json['status'] as String,
      owners:
          (json['owners'] as List<dynamic>).map((e) => e as String).toList(),
      bank: json['bank'] as String,
      accountNumber: json['accountNumber'] as String,
    );
