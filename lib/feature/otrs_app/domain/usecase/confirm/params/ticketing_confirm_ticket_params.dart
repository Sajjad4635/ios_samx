import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'article/ticketing_confirm_article.dart';
import 'ticket/ticketing_confirm_ticket.dart';
part 'ticketing_confirm_ticket_params.g.dart';

@JsonSerializable(createFactory: false)
class TicketingConfirmParams extends Equatable {
  @JsonKey(name: 'SessionID')
  final String sessionID;

  @JsonKey(name: 'Ticket')
  final Ticket ticket;

  @JsonKey(name: 'Article')
  final Article article;

  const TicketingConfirmParams(
      {required this.sessionID, required this.ticket, required this.article});
                            
  Map<String, dynamic> toJson() => _$TicketingConfirmParamsToJson(this)   ;

  @override
  List<Object?> get props => [sessionID, ticket, article];
}
