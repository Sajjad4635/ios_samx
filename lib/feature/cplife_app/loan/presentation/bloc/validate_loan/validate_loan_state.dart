part of 'validate_loan_bloc.dart';

@freezed
class ValidateLoanState with _$ValidateLoanState{
  const factory ValidateLoanState.initial() = _ValidateLoanStateInitial;
  const factory ValidateLoanState.loadFailure(Failure failure) = _ValidateLoanStateLoadFailure;
  const factory ValidateLoanState.loading() = ValidateLoanStateLoading;
  const factory ValidateLoanState.loadSuccess(ValidateLoanResponseEntities validateLoanResponseEntities) =
      _ValidateLoanStateLoadSuccess;
}

