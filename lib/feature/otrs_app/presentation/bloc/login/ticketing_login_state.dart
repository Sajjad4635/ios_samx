part of 'ticketing_login_bloc.dart';

@freezed
class TicketingLoginState with _$TicketingLoginState {
  const factory TicketingLoginState.initial() = _TicketingLoginInitial;
  const factory TicketingLoginState.loading() = TicketingLoginLoading;
  const factory TicketingLoginState.loadFailure(Failure error) =
      _TicketingLoginStateFAilure;
  const factory TicketingLoginState.loadSuccess(
      TicketingLoginResponseEntity entity) = _TicketingLoginSuccess;
}
