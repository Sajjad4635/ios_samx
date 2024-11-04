// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_account_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAccountResponseData _$GetAccountResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetAccountResponseData(
      iban: json['iban'] as String,
      isIbanActive: json['isIbanActive'] as bool,
      isActive: json['isActive'] as bool,
      bank: json['bank'] as String,
      isDefault: json['isDefault'] as bool,
    );
