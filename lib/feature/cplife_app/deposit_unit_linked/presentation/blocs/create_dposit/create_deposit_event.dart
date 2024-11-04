part of 'create_deposit_bloc.dart';

@freezed
abstract class CreateDepositEvent with _$CreateDepositEvent {
  const factory CreateDepositEvent.createDepositEventCalled(CreateDepositParam param) = _CreateDepositEventCalled;
}