part of 'account_default_bloc.dart';


@freezed
abstract class AccountDefaultEvent with _$AccountDefaultEvent {
  const factory AccountDefaultEvent.accountDefaultEventCalled({required AccountDefaultParam accountDefaultParam})  = _AccountDefaultEventCalled;
}