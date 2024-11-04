import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_list_response_data_ticket.g.dart';

@JsonSerializable()
class TicketingListResponseDataTicket extends Equatable {

  @JsonKey(name: "TicketNumber")
  final String ticketNumber;

  @JsonKey(name: "State")
  final String state;


  @JsonKey(name: "TicketID")
  final int ticketID;

  @JsonKey(name: "Created")
  final String createdDate;

  @JsonKey(name: "Title")
  final String title;


  @JsonKey(name: "PriorityColor")
  final String priorityColor;

  @JsonKey(name: "PriorityID")
  final int priorityID;

  const TicketingListResponseDataTicket(
                 this.priorityID,
      { required this.createdDate,
        required this.priorityColor,
        required this.ticketID,
        required this.ticketNumber,
        required this.state,
        required this.title
      });

  factory TicketingListResponseDataTicket.fromJson(Map<String, dynamic> json) =>
      _$TicketingListResponseDataTicketFromJson(json);

  @override
  List<Object?> get props => [
    priorityID,
    createdDate,
    priorityColor,
    ticketID,
    ticketNumber,
    state,
    title
  ];
}
