part of 'details_ticket_bloc.dart';

@freezed
class DetailsTicketState with _$DetailsTicketState {
  const factory DetailsTicketState.initial() = _DetailsTicketInitial;
  const factory DetailsTicketState.loadFailure(Failure failure) = _DetailsTicketLoadFailure;
  const factory DetailsTicketState.loading() = DetailsTicketLoading;
  const factory DetailsTicketState.loadSuccess(DetailsTicketEntities detailsTicketEntities) = _DetailsTicketLoadSuccess;
}