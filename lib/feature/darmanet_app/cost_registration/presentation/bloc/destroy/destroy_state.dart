part of 'destroy_bloc.dart';

@freezed
class DestroyState with _$DestroyState {
  const factory DestroyState.initial() = _DestroyStateInitial;
  const factory DestroyState.loadFailure(Failure failure) = _DestroyStateLoadFailure;
  const factory DestroyState.loading() = DestroyStateLoading;
  const factory DestroyState.loadSuccess(bool destroyEntities) =
  _DestroyStateLoadSuccess;

}