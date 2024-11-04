part of 'register_loan_bloc.dart';

@freezed
class RegisterLoanState with _$RegisterLoanState {
  const factory RegisterLoanState.initial() = _RegisterLoanInitial;
  const factory RegisterLoanState.loadFailure(Failure failure) = _RegisterLoanStateLoadFailure;
  const factory RegisterLoanState.loading() = RegisterLoanStateLoading;
  const factory RegisterLoanState.loadSuccess(RegisterLoanResponseEntities registerLoanResponseEntities) =
      _RegisterLoanStateLoadSuccess;
}
