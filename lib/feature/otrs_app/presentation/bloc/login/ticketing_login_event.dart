part of 'ticketing_login_bloc.dart';

@freezed
class TicketingLoginEvent with _$TicketingLoginEvent {
  const factory 
  TicketingLoginEvent.
  ticketingLoginEventCalled(TicketingLoginParams params) = _TicketingLoginEventCalled;
}
