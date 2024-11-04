// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_info_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketingInfoResponseData _$TicketingInfoResponseDataFromJson(
        Map<String, dynamic> json) =>
    TicketingInfoResponseData(
      ticketInfo: (json['Ticket'] as List<dynamic>)
          .map((e) =>
              TicketingInfoResponseHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
