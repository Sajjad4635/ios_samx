part of 'validate_buy_back_bloc.dart';

@freezed
class ValidateBuyBackState with _$ValidateBuyBackState {
  const factory ValidateBuyBackState.initial() = _ValidateBuyBackStateInitial;
  const factory ValidateBuyBackState.loadFailure(Failure failure) = _ValidateBuyBackStataLoadFailure;
  const factory ValidateBuyBackState.loading() = ValidateBuyBackStateLoading;
  const factory ValidateBuyBackState.loadSuccess(ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities) =
      _ValidateBuyBackStateLoadSuccess;
}
