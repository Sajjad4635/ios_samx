

part of 'wallet_transaction_bloc.dart';

@freezed
class WalletTransactionState with _$WalletTransactionState {

  const factory WalletTransactionState.initial() = _WalletTransactionStateInitial;
  const factory WalletTransactionState.loading() = WalletTransactionStateLoading;
  const factory WalletTransactionState.loadSuccess(WalletTransactionEntities walletTransactionEntities) =_WalletTransactionStateLoadSuccess;
  const factory WalletTransactionState.loadFailure(Failure failure) = _WalletTransactionStateLoadFailure;

}