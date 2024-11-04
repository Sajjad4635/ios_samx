
part of 'ticketing_confirm_bloc.dart';

@freezed
class  TicketingConfirmState with _$TicketingConfirmState {

  const factory TicketingConfirmState.initial() = _TicketingConfirmStateInitial ;
  const factory TicketingConfirmState.loadFailure(Failure failure) = _TicketingConfirmStateLoadFailure ;
  const factory TicketingConfirmState.loading() = TicketingConfirmStateLoading ;
  const factory TicketingConfirmState.loadSuccess(TicketingConfirmResponseEntity ticketingConfirmResponseEntity ) = _TicketingConfirmStateLoadSuccess ;



}
