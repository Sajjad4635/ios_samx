part of 'create_settlement_withdraw_bloc.dart';

@freezed
abstract class CreateSettlementWithdrawEvent with _$CreateSettlementWithdrawEvent {
  const factory CreateSettlementWithdrawEvent.createSettlementWithdrawEventCalled(CreateSettlementWithdrawParam param) =
      _CreateSettlementWithdrawEventCalled;
}
