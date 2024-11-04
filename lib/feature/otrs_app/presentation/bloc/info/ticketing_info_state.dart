
part of 'ticketing_info_bloc.dart';

@freezed
class TicketingInfoState with _$TicketingInfoState{
  const factory TicketingInfoState.initial() = _TicketingInfoStateInitial ;
  const factory TicketingInfoState.loadFailure(Failure failure) = _TicketingInfoStateLoadFailure ;
  const factory TicketingInfoState.loading() = TicketingInfoStateLoading ;
  const factory TicketingInfoState.loadSuccess(TicketingInfoResponseEntity ticketingInfoResponseEntity) = _TicketingInfoStateLoadSuccess ;

}