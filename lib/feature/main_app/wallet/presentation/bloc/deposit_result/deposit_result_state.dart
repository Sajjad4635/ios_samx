part of 'deposit_result_bloc.dart';

@freezed
class DepositResultState with _$DepositResultState {
  const factory DepositResultState.initial() = _DepositResultStateInitial;
  const factory DepositResultState.loading() = DepositResultStateLoading ;
  const factory DepositResultState.loadSuccess(WalletDepositResultEntities entities) = _DepositResultStateLoadSuccess ;
  const factory DepositResultState.loadFailure(Failure failure) = _DepositResultStateLoadFailure ;

}
