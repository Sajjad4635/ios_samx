import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_info_params.g.dart';

@JsonSerializable(createFactory: false)
class TicketingInfoParams extends Equatable {
  @JsonKey(name: 'SessionID')
  final String sessionID;
  @JsonKey(name: 'TicketID')
  final int ticketID;

  @JsonKey(name: 'AllArticles')
  final int allArticles;


  const TicketingInfoParams({required this.sessionID, required this.ticketID, required this.allArticles});

  Map<String , dynamic> toJson() => _$TicketingInfoParamsToJson(this);

  @override
  List<Object?> get props => [
    sessionID,
    ticketID ,
    allArticles
  ];
}
