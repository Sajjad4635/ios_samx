
part of 'ticketing_search_bloc.dart';

@freezed
class TicketingSearchState with _$TicketingSearchState {
  const factory TicketingSearchState.initial() = _TicketingSearchStateInitial ; 
  const factory TicketingSearchState.loadFailure(Failure failure) = _TicketingSearchStateLoadFailure ;
  const factory TicketingSearchState.loading() = TicketingSearchStateLoading;
  const factory TicketingSearchState.loadSuccess(TicketingSearchResponseEntity ticketingSearchResponseEntity) =

  _TicketingSearchStateLoadSuccess ;
  
}


/* @freezed 
class           LegalLoginState with _$LegalLoginState {
  const factory LegalLoginState.initial()                    = _LegalLoginStateInitial;
  const factory LegalLoginState.loadFailure(Failure failure) = _LegalLoginStateLoadFailure;
  const factory LegalLoginState.loading()                    = LegalLoginStateLoading;
  const factory LegalLoginState.loadSuccess(LegalLoginResponseEntities legalLoginResponseEntities) =
      _LegalLoginStateLoadSuccess;
} */