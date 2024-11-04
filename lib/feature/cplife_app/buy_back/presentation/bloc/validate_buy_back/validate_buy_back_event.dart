part of 'validate_buy_back_bloc.dart';

@freezed
abstract class ValidateBuyBackEvent with _$ValidateBuyBackEvent {
  const factory ValidateBuyBackEvent.validateBuyBackEventCalled(ValidateBuyBackParams params) =
      _ValidateBuyBackEventCalled;
}
