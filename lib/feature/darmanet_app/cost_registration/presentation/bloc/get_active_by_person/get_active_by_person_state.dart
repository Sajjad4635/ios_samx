part of 'get_active_by_person_bloc.dart';

@freezed
class GetActiveByPersonState with _$GetActiveByPersonState {
  const factory GetActiveByPersonState.initial() = _GetActiveByPersonStateInitial;
  const factory GetActiveByPersonState.loadFailure(Failure failure) = _GetActiveByPersonStateLoadFailure;
  const factory GetActiveByPersonState.loading() = GetActiveByPersonStateLoading;
  const factory GetActiveByPersonState.loadSuccess(GetActiveByPersonEntities getActiveByPersonEntities) =
      _GetActiveByPersonStateLoadSuccess;
}