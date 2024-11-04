part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.initial() = _TicketsInitial;
  const factory TicketsState.loadFailure(Failure failure) = _TicketsLoadFailure;
  const factory TicketsState.loading() = TicketsLoading;
  const factory TicketsState.loadSuccess(TicketsResponseEntities ticketsResponseEntities) = _TicketsLoadSuccess;
}
