part of 'check_repetitive_bloc.dart';

@freezed
class CheckRepetitiveState with _$CheckRepetitiveState {
  const factory CheckRepetitiveState.initial() = _CheckRepetitiveStateInitial;
  const factory CheckRepetitiveState.loadFailure(Failure failure) = _CheckRepetitiveStateLoadFailure;
  const factory CheckRepetitiveState.loading() = CheckRepetitiveStateLoading;
  const factory CheckRepetitiveState.loadSuccess(CheckRepetitiveEntities checkRepetitiveEntities) =
      _CheckRepetitiveStateLoadSuccess;
}