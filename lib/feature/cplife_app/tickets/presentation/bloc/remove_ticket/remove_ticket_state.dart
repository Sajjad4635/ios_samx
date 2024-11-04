part of 'remove_ticket_bloc.dart';

@freezed
class RemoveTicketState with _$RemoveTicketState {
  const factory RemoveTicketState.initial() = _RemoveTicketInitial;
  const factory RemoveTicketState.loadFailure(Failure failure) = _RemoveTicketLoadFailure;
  const factory RemoveTicketState.loading() = RemoveTicketLoading;
  const factory RemoveTicketState.loadSuccess(RemoveTicketEntities removeTicketEntities) = _RemoveTicketLoadSuccess;
}