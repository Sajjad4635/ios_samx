part of 'wallet_withdraw_bloc.dart';

@freezed
class WalletWithdrawState with _$WalletWithdrawState {
  const factory WalletWithdrawState.initial() = _WalletWithdrawStateInitial;
  const factory WalletWithdrawState.loading() = WalletWithdrawStateLoading ;
  const factory WalletWithdrawState.loadSuccess(WalletWithdrawEntities withdrawEntities) = _WalletWithdrawStateLoadSuccess ;
  const factory WalletWithdrawState.loadFailure(Failure failure) = _WalletWithdrawStateLoadFailure ;

}
