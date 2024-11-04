part of 'get_account_bloc.dart';

@freezed
abstract class GetAccountEvent with _$GetAccountEvent {
  const factory GetAccountEvent.getAccountEventCalled({required NoParams noParams}) = _GetAccountEventCalled;

}
