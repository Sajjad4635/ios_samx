// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_list_response_data_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketingListResponseDataTicket _$TicketingListResponseDataTicketFromJson(
        Map<String, dynamic> json) =>
    TicketingListResponseDataTicket(
      (json['PriorityID'] as num).toInt(),
      createdDate: json['Created'] as String,
      priorityColor: json['PriorityColor'] as String,
      ticketID: (json['TicketID'] as num).toInt(),
      ticketNumber: json['TicketNumber'] as String,
      state: json['State'] as String,
      title: json['Title'] as String,
    );

Map<String, dynamic> _$TicketingListResponseDataTicketToJson(
        TicketingListResponseDataTicket instance) =>
    <String, dynamic>{
      'TicketNumber': instance.ticketNumber,
      'State': instance.state,
      'TicketID': instance.ticketID,
      'Created': instance.createdDate,
      'Title': instance.title,
      'PriorityColor': instance.priorityColor,
      'PriorityID': instance.priorityID,
    };
