part of 'remove_ticket_bloc.dart';

@freezed
abstract class RemoveTicketEvent with _$RemoveTicketEvent {
  const factory RemoveTicketEvent.removeTicketEventCalled(RemoveTicketParam param) = _RemoveTicketEventCalled;
}
