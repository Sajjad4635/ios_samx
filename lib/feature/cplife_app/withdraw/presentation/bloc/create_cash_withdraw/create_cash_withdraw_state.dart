part of 'create_cash_withdraw_bloc.dart';

@freezed
class CreateCashWithdrawState with _$CreateCashWithdrawState {
  const factory CreateCashWithdrawState.initial() = _CreateCashWithdrawStateInitial;
  const factory CreateCashWithdrawState.loadFailure(Failure failure) = _CreateCashWithdrawStateLoadFailure;
  const factory CreateCashWithdrawState.loading() = CreateCashWithdrawStateLoading;
  const factory CreateCashWithdrawState.loadSuccess(CreateCashWithdrawEntities cashWithdrawEntities) =
      _CreateCashWithdrawStateLoadSuccess;
}
