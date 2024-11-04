part of 'tickets_bloc.dart';

@freezed
abstract class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.ticketsEventCalled(NoParams params) = _TicketsEventCalled;
}