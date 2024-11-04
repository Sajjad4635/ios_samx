part of 'get_account_iban_bloc.dart';

@freezed
abstract class GetAccountIbanEvent with _$GetAccountIbanEvent {
  const factory GetAccountIbanEvent.getAccountIbanEventCalled({required GetAccountIbanParam getAccountIbanParam}) = _GetAccountIbanEventCalled;
}