part of 'get_all_family_by_main_national_code_bloc.dart';

@freezed
class GetAllFamilyByMainNationalCodeState with _$GetAllFamilyByMainNationalCodeState {
  const factory GetAllFamilyByMainNationalCodeState.initial() = _GetAllFamilyByMainNationalCodeStateInitial;
  const factory GetAllFamilyByMainNationalCodeState.loadFailure(Failure failure) = _GetAllFamilyByMainNationalCodeStateLoadFailure;
  const factory GetAllFamilyByMainNationalCodeState.loading() = GetAllFamilyByMainNationalCodeStateLoading;
  const factory GetAllFamilyByMainNationalCodeState.loadSuccess(GetAllFamilyByMainNationalCodeEntities getAllFamilyByMainNationalCodeEntities) =
      _GetAllFamilyByMainNationalCodeStateLoadSuccess;
}