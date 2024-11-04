part of 'validate_loan_bloc.dart';

@freezed 
abstract class ValidateLoanEvent with _$ValidateLoanEvent{
  const factory ValidateLoanEvent.validateLoanEventCalled(ValidateLoanParams params) = _ValidateLoanEventCalled;
}

