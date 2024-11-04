part of 'wallet_balance_bloc.dart';

@freezed
class WalletBalanceState with _$WalletBalanceState {
  const factory WalletBalanceState.initial() = _WalletBalanceState;

  const factory WalletBalanceState.loading() =
      WalletBalanceStateLoading;

  const factory WalletBalanceState.loadSuccess(
          WalletBalanceResponseEntities walletBalanceResponseEntities) =
      _WalletBalanceStateLoadSuccess;

  const factory WalletBalanceState.loadFailure(Failure failure) =
      _WalletBalanceStateLoadFailure;
}
