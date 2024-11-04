part of 'send_to_next_level_bloc.dart';

@freezed
class SendToNextLevelState with _$SendToNextLevelState {
  const factory SendToNextLevelState.initial() = _SendToNextLevelStateInitial;

  const factory SendToNextLevelState.loadFailure(Failure failure) =
      _SendToNextLevelStateLoadFailure;

  const factory SendToNextLevelState.loading() = SendToNextLevelStateLoading;

  const factory SendToNextLevelState.loadSuccess(
          SendToNextLevelEntities sendToNextLevelEntities) =
      _SendToNextLevelStateLoadSuccess;
}
