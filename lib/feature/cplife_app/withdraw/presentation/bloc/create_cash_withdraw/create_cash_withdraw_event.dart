part of 'create_cash_withdraw_bloc.dart';

@freezed
abstract class CreateCashWithdrawEvent with _$CreateCashWithdrawEvent {
  const factory CreateCashWithdrawEvent.createCashWithdrawEventCalled({required CreateCashWithdrawParam param}) =
      _CreateCashWithdrawEventCalled;
}
