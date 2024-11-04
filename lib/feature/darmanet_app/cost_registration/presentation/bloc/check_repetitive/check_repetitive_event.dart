part of 'check_repetitive_bloc.dart';

@freezed
abstract class CheckRepetitiveEvent with _$CheckRepetitiveEvent {
  const factory CheckRepetitiveEvent.checkRepetitiveEventCalled({required CheckRepetitiveParam param}) =
      _CheckRepetitiveEventCalled;
}