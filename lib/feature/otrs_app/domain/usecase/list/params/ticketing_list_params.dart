import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_list_params.g.dart';

@JsonSerializable(createFactory:  false)
class TicketingListParams extends Equatable{
  
  @JsonKey(name: 'SessionID')
 final String sessionID ;

  @JsonKey(name: 'TicketID')
   final List<String> ticketID ;

  const TicketingListParams({required this.sessionID, required this.ticketID});

  Map<String, dynamic> toJson() => _$TicketingListParamsToJson(this);
  
  @override 
  List<Object?> get props => [sessionID, ticketID];




}