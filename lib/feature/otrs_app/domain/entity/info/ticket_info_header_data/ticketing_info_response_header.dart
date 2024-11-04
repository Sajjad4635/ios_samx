import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ticket_info_article_data/ticketing_info_response_article.dart';


part 'ticketing_info_response_header.g.dart';

@JsonSerializable()
class TicketingInfoResponseHeader extends Equatable {

  @JsonKey(name: 'Article')
  final List<TicketingInfoResponseArticle> articles;

  @JsonKey(name: 'Age')
  final double age;

  @JsonKey(name: 'PriorityColor')
  final String priorityColor;

  @JsonKey(name: 'Queue')
  final String queue;

  @JsonKey(name: 'Owner')
  final String owner;

  @JsonKey(name: 'Type')
  final String type;

  @JsonKey(name: 'Created')
  final String created;

  @JsonKey(name: 'TicketNumber')
  final String ticketNumber;

  @JsonKey(name: 'Title')
  final String title;

  @JsonKey(name: 'State')
  final String state;

  @JsonKey(name: 'PriorityID')
  final int priorityID;




  const TicketingInfoResponseHeader(
      { required this.articles,
        required this.age,
        required this.priorityColor,
        required this.queue,
        required this.owner,
        required this.type,
        required this.created,
        required this.ticketNumber,
        required this.title,
        required this.state,
        required this.priorityID,

      }
      );

  factory TicketingInfoResponseHeader.fromJson(Map<String, dynamic> json ) => _$TicketingInfoResponseHeaderFromJson(json);

  @override
  List<Object?> get props => [

    articles,
    age,
    priorityColor,
    queue,
    owner,
    type,
    created,
    ticketNumber,
    title,
    state,
    priorityID,

  ];
}
