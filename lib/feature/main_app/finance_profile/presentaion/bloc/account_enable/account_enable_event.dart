
part of 'account_enable_bloc.dart';

@freezed
abstract class AccountEnableEvent with _$AccountEnableEvent {
  const factory AccountEnableEvent.accountEnableEventCalled({required AccountEnableParam accountEnableParam}) = _AccountEnableEventCalled;



}