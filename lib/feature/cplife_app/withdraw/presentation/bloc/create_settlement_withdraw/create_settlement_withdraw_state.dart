part of 'create_settlement_withdraw_bloc.dart';

@freezed
class CreateSettlementWithdrawState with _$CreateSettlementWithdrawState {
  const factory CreateSettlementWithdrawState.initial() = _CreateSettlementWithdrawStateInitial;
  const factory CreateSettlementWithdrawState.loadFailure(Failure failure) = _CreateSettlementWithdrawStateLoadFailure;
  const factory CreateSettlementWithdrawState.loading() = CreateSettlementWithdrawStateLoading;
  const factory CreateSettlementWithdrawState.loadSuccess(
      CreateSettlementWithdrawEntities createSettlementWithdrawEntities) = _CreateSettlementWithdrawStateLoadSuccess;
}
