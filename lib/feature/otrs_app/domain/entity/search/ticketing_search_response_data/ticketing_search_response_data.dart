import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_search_response_data.g.dart';

@JsonSerializable(createToJson: false)
class TicketingSearchResponseData extends Equatable {
 
 @JsonKey(name: 'TicketID')
  final List<String> ticketID;
 
  const TicketingSearchResponseData(
      { required this.ticketID });

  factory TicketingSearchResponseData.fromJson(Map<String, dynamic> json) => _$TicketingSearchResponseDataFromJson(json);   

  @override
  List<Object?> get props => [ticketID];
  
}

