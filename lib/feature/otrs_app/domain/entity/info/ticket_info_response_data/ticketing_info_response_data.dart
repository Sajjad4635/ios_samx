

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ticket_info_header_data/ticketing_info_response_header.dart';

part 'ticketing_info_response_data.g.dart';


@JsonSerializable(createToJson: false)
class TicketingInfoResponseData extends Equatable {

  @JsonKey(name: 'Ticket')
  final List<TicketingInfoResponseHeader>  ticketInfo ;

  const TicketingInfoResponseData({ required this.ticketInfo});

  factory TicketingInfoResponseData.fromJson(Map<String, dynamic> json) => _$TicketingInfoResponseDataFromJson(json);

  @override
  List<Object?> get props => ticketInfo ;

}