part of 'validate_cash_withdraw_bloc.dart';

@freezed
class ValidateCashWithdrawState with _$ValidateCashWithdrawState {
  const factory ValidateCashWithdrawState.initial() = _ValidateCashWithdrawInitial;
  const factory ValidateCashWithdrawState.loadFailure(Failure failure) = _ValidateCashWithdrawLoadFailure;
  const factory ValidateCashWithdrawState.loading() = ValidateCashWithdrawLoading;
  const factory ValidateCashWithdrawState.loadSuccess(ValidateCashWithdrawEntities validateCashWithdrawEntities) = _ValidateCashWithdrawLoadSuccess;
}
