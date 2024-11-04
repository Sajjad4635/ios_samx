part of 'register_loan_bloc.dart';

@freezed
abstract class RegisterLoanEvent with _$RegisterLoanEvent {
  const factory RegisterLoanEvent.registerLoanEventCalled(RegisterLoanParam param) = _RegisterLoanEventCalled;
}
