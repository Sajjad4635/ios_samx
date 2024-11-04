part of 'create_withdraw_unit_linked_bloc.dart';

@freezed
abstract class CreateWithdrawEvent with _$CreateWithdrawEvent {
  const factory CreateWithdrawEvent.createWithdrawEventCalled(CreateWithdrawUnitLinkedParam param) = _CreateWithdrawEventCalled;
}