part of 'register_buy_back_bloc.dart';

@freezed 
class RegisterBuyBackState with _$RegisterBuyBackState {
  const factory RegisterBuyBackState.initial() = _RegisterBuyBackStateInitial;
  const factory RegisterBuyBackState.loadFailure(Failure failure) = _RegisterBuyBackStateLoadFailure;
  const factory RegisterBuyBackState.loading() = RegisterBuyBackStateLoading;
  const factory RegisterBuyBackState.loadSuccess(RegisterBuyBackResponseEntities registerBuyBackResponseEntities) = _RegisterBuyBackStateLoadSuccess;
}
