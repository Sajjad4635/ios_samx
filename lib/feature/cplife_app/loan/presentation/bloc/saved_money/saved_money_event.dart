part of 'saved_money_bloc.dart';

@freezed
abstract class SavedMoneyEvent with _$SavedMoneyEvent{
  const factory SavedMoneyEvent.saveMoneyEventCalled(SavedMoneyParam param) = _SavedMoneyEventCalled;
}