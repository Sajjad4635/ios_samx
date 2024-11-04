// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_list_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketingListResponseData _$TicketingListResponseDataFromJson(
        Map<String, dynamic> json) =>
    TicketingListResponseData(
      ticket: (json['Ticket'] as List<dynamic>)
          .map((e) => TicketingListResponseDataTicket.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
