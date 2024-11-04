
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticketing_confirm_ticket.g.dart';

@JsonSerializable(createFactory: false)
class Ticket  extends Equatable {
 
  @JsonKey(name: 'TypeID')
  final String typeId ;

  @JsonKey(name: 'Title')
  final String title ;

  @JsonKey(name: 'QueueID')
  final String queueId ;

  @JsonKey(name: 'CustomerUser')
  final String customerUser ;

  @JsonKey(name: 'StateID')
  final String stateId ;

  @JsonKey(name: 'PriorityID')
  final String priorityId ;

  @JsonKey(name: 'OwnerID')
  final int ownerID ;

  @JsonKey(name: 'Lock')
  final String lock ;

  const Ticket({
    required this.typeId ,
    required this.title,
    required this.queueId ,
    required this.customerUser,
    required this.stateId ,
    required this.priorityId ,
    required this.lock ,
    required this.ownerID

  });

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  @override
  List<Object?> get props =>  [
    typeId ,
    title,
    queueId ,
    customerUser,
    stateId ,
    priorityId,
    ownerID,
    lock
  ];


}

