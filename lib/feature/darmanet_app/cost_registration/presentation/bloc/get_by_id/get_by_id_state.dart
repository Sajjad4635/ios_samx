part of 'get_by_id_bloc.dart';

@freezed
class GetByIdState with _$GetByIdState {
  const factory GetByIdState.initial() = _GetByIdStateInitial;
  const factory GetByIdState.loadFailure(Failure failure) = _GetByIdStateLoadFailure;
  const factory GetByIdState.loading() = GetByIdStateLoading;
  const factory GetByIdState.loadSuccess(GetByIdEntities getAllCostDescEntities) =
      _GetByIdStateStateLoadSuccess;
}