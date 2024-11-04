part of 'register_buy_back_bloc.dart';

@freezed
class RegisterBuyBackEvent with _$RegisterBuyBackEvent {
  const factory RegisterBuyBackEvent.registerBuyBackEventCalled(RegisterBuyBackParams params) =
      _RegisterBuyBackEventCalled;
}
