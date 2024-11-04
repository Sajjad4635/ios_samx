import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submit_discontent_ticket.g.dart';

@JsonSerializable(createFactory: false)
class Ticket  extends Equatable {

  @JsonKey(name: 'Type')
  final String type ;

  @JsonKey(name: 'Title')
  final String title ;

  @JsonKey(name: 'Queue')
  final String queue ;

  @JsonKey(name: 'CustomerUser')
  final String customerUser ;

  @JsonKey(name: 'StateID')
  final String stateId ;

  @JsonKey(name: 'Priority')
  final String priority ;

  @JsonKey(name: 'OwnerID')
  final int ownerID ;

  @JsonKey(name: 'Lock')
  final String lock ;

  const Ticket({
    required this.type ,
    required this.title,
    required this.queue ,
    required this.customerUser,
    required this.stateId ,
    required this.priority ,
    required this.lock ,
    required this.ownerID

  });

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  @override
  List<Object?> get props =>  [
    type ,
    title,
    queue ,
    customerUser,
    stateId ,
    priority,
    ownerID,
    lock
  ];


}


