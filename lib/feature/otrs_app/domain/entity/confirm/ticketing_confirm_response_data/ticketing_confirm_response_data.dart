
import 'package:equatable/equatable.dart'; 
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_confirm_response_data.g.dart';

@JsonSerializable(createToJson: false)
class TicketingConfirmResponseData extends Equatable{

  @JsonKey(name: 'TicketNumber')
  final String ticketNumber ;

  const TicketingConfirmResponseData({
    required this.ticketNumber 
  });

  factory TicketingConfirmResponseData.fromJson(Map<String, dynamic> json) => _$TicketingConfirmResponseDataFromJson(json);


  @override 
  List<Object?> get props => [ticketNumber];

}