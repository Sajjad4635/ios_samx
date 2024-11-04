part of 'settlement_withdraw_bloc.dart';

@freezed
abstract class SettlementWithdrawEvent with _$SettlementWithdrawEvent {
  const factory SettlementWithdrawEvent.settlementWithdrawEventCalled(SettlementWithdrawParam param) = _SettlementWithdrawEventCalled;
}