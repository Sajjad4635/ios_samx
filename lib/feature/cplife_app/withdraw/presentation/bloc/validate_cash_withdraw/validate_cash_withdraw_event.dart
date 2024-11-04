part of 'validate_cash_withdraw_bloc.dart';

@freezed
abstract class ValidateCashWithdrawEvent with _$ValidateCashWithdrawEvent {
  const factory ValidateCashWithdrawEvent.validateCashWithdrawEventCalled(ValidateCashWithdrawParam param) =
      _ValidateCashWithdrawEventCalled;
}
