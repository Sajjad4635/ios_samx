part of 'settlement_withdraw_bloc.dart';

@freezed 
class SettlementWithdrawState with _$SettlementWithdrawState {
  const factory SettlementWithdrawState.initial() = _SettlementWithdrawInitial;
  const factory SettlementWithdrawState.loadFailure(Failure failure) = _SettlementWithdrawLoadFailure;
  const factory SettlementWithdrawState.loading() = SettlementWithdrawStateLoading;
  const factory SettlementWithdrawState.loadSuccess(
      SettlementWithdrawResponseEntities settlementWithdrawResponseEntities) = _SettlementWithdrawStateLoadSuccess;
}
