
part of 'ticketing_search_bloc.dart';
 

@freezed
class TicketingSearchEvent with _$TicketingSearchEvent{
  const factory 
  TicketingSearchEvent. ticketingSearchEventCalled(TicketingSearchParams params) = _TicketingSearchEventCalled;

}