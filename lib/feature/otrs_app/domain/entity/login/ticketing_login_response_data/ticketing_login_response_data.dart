import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_login_response_data.g.dart';

@JsonSerializable(createToJson: false)
class TicketingLoginResponseData extends Equatable {
 
 @JsonKey(name: 'SessionID')
  final String sessionID;
  const TicketingLoginResponseData({required this.sessionID});

  factory TicketingLoginResponseData.fromJson(Map<String, dynamic> json) => _$TicketingLoginResponseDataFromJson(json);   

  @override
  List<Object?> get props => [sessionID];
  
}

