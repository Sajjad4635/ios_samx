part of 'get_person_family_list_bloc.dart';

@freezed
class GetPersonFamilyListState with _$GetPersonFamilyListState {
  const factory GetPersonFamilyListState.initial() =
      _GetPersonFamilyListStateInitial;

  const factory GetPersonFamilyListState.loadFailure(Failure failure) =
      _GetPersonFamilyListStateLoadFailure;

  const factory GetPersonFamilyListState.loading() =
      GetPersonFamilyListStateLoading;

  const factory GetPersonFamilyListState.loadSuccess(
          GetPersonFamilyListEntities getPersonFamilyListEntities) =
      _GetPersonFamilyListStateLoadSuccess;
}
