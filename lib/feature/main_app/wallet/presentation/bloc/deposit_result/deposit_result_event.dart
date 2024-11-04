part of 'deposit_result_bloc.dart';

@freezed
class DepositResultEvent with _$DepositResultEvent {
  //const factory DepositResultEvent.started() = _Started;
  const factory DepositResultEvent.depositResultEventCalled(DepositResultParam param) = _DepositResultEventCalled ;
}
