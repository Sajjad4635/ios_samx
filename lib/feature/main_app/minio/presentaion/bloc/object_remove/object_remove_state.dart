part of 'object_remove_bloc.dart';

@freezed
class ObjectRemoveState with _$ObjectRemoveState {
  const factory ObjectRemoveState.initial() = _ObjectRemoveStateInitial;
  const factory ObjectRemoveState.loadFailure(Failure failure) =_ObjectRemoveStateLoadFailure;
  const factory ObjectRemoveState.loading() = ObjectRemoveStateLoading;
  const factory ObjectRemoveState.loadSuccess(ObjectRemoveEntities objectRemoveEntities) = _ObjectRemoveStateLoadSuccess;
}
