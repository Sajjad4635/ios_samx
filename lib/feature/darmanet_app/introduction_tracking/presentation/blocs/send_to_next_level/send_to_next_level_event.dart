part of 'send_to_next_level_bloc.dart';

@freezed
abstract class SendToNextLevelEvent with _$SendToNextLevelEvent {
  const factory SendToNextLevelEvent.sendToNextLevelEvent(
      {required SendToNextLevelParam param}) = _SendToNextLevelEventCalled;
}
