import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../ticket_list_response_data_ticket/ticket_list_response_data_ticket.dart';

part 'ticketing_list_response_data.g.dart';

@JsonSerializable(createToJson: false)
class TicketingListResponseData extends Equatable {

 @JsonKey(name: 'Ticket')
 final List<TicketingListResponseDataTicket>  ticket ;

  const TicketingListResponseData({ required this.ticket});
                                                                             
  factory TicketingListResponseData.fromJson(Map<String, dynamic> json) => _$TicketingListResponseDataFromJson(json);
  
  @override
  List<Object?> get props => ticket ; 

}