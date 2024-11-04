// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_card_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCardResponseData _$GetCardResponseDataFromJson(Map<String, dynamic> json) =>
    GetCardResponseData(
      userCards: (json['userCards'] as List<dynamic>)
          .map((e) => UserCards.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
