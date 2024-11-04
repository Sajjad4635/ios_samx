part of 'get_relative_bloc.dart';

@freezed
class GetRelativeState with _$GetRelativeState {
  const factory GetRelativeState.initial() = _GetRelativeStateInitial;

  const factory GetRelativeState.loadFailure(Failure failure) =
      _GetRelativeStateLoadFailure;

  const factory GetRelativeState.loading() = GetRelativeStateLoading;

  const factory GetRelativeState.loadSuccess(
          GetRelativeEntities getPersonFamilyListEntities) =
      _GetRelativeStateLoadSuccess;
}
