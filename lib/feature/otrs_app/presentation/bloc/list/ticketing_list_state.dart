part of 'ticketing_list_bloc.dart';

@freezed
class TicketingListState with _$TicketingListState {

  const factory TicketingListState.initial() = _TicketingListStateInitial ;
  const factory TicketingListState.loadFailure(Failure failure)	= _TicketingListStateLoadFailure ;
  const factory TicketingListState.loading()	= TicketingListStateLoading;

    const factory TicketingListState.loadSuccess(TicketListResponseEntity ticketListResponseEntity) =

  _TicketingSearchStateLoadSuccess ;
 
}

 


 


// part of 'legal_login_bloc.dart';

// @freezed 
// class LegalLoginState with _$LegalLoginState {
//   const factory LegalLoginState.initial() = _LegalLoginStateInitial;
//   const factory LegalLoginState.loadFailure(Failure failure) = _LegalLoginStateLoadFailure;
//   const factory LegalLoginState.loading() = LegalLoginStateLoading;
//   const factory LegalLoginState.loadSuccess(LegalLoginResponseEntities legalLoginResponseEntities) =
//       _LegalLoginStateLoadSuccess;
// }