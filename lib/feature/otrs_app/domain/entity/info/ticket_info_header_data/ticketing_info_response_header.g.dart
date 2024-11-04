// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_info_response_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketingInfoResponseHeader _$TicketingInfoResponseHeaderFromJson(
        Map<String, dynamic> json) =>
    TicketingInfoResponseHeader(
      articles: (json['Article'] as List<dynamic>)
          .map((e) =>
              TicketingInfoResponseArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      age: (json['Age'] as num).toDouble(),
      priorityColor: json['PriorityColor'] as String,
      queue: json['Queue'] as String,
      owner: json['Owner'] as String,
      type: json['Type'] as String,
      created: json['Created'] as String,
      ticketNumber: json['TicketNumber'] as String,
      title: json['Title'] as String,
      state: json['State'] as String,
      priorityID: (json['PriorityID'] as num).toInt(),
    );

Map<String, dynamic> _$TicketingInfoResponseHeaderToJson(
        TicketingInfoResponseHeader instance) =>
    <String, dynamic>{
      'Article': instance.articles,
      'Age': instance.age,
      'PriorityColor': instance.priorityColor,
      'Queue': instance.queue,
      'Owner': instance.owner,
      'Type': instance.type,
      'Created': instance.created,
      'TicketNumber': instance.ticketNumber,
      'Title': instance.title,
      'State': instance.state,
      'PriorityID': instance.priorityID,
    };
