
part of 'get_object_list_bloc.dart';

@freezed
class GetObjectListState with _$GetObjectListState {
  const factory GetObjectListState.initial() = _GetObjectListStateInitial;
  const factory GetObjectListState.loadFailure(Failure failure) =_GetObjectListStateLoadFailure;
  const factory GetObjectListState.loading() = GetObjectListStateLoading;
  const factory GetObjectListState.loadSuccess(GetObjectListEntities getObjectListEntities) = _GetObjectListStateLoadSuccess;
}