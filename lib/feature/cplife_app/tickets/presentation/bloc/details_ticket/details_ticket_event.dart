part of 'details_ticket_bloc.dart';

@freezed
abstract class DetailsTicketEvent with _$DetailsTicketEvent {
  const factory DetailsTicketEvent.detailsTicketEventCalled(DetailsTicketParam param) = _DetailsTicketEventCalled;
}
