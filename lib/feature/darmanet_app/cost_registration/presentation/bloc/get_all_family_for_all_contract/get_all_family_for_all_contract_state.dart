part of 'get_all_family_for_all_contract_bloc.dart';

@freezed
class GetAllFamilyForAllContractState with _$GetAllFamilyForAllContractState {
  const factory GetAllFamilyForAllContractState.initial() = _GetAllFamilyForAllContractStateInitial;
  const factory GetAllFamilyForAllContractState.loadFailure(Failure failure) = _GetAllFamilyForAllContractStateLoadFailure;
  const factory GetAllFamilyForAllContractState.loading() = GetAllFamilyForAllContractStateLoading;
  const factory GetAllFamilyForAllContractState.loadSuccess(GetAllFamilyForAllContractEntities getAllFamilyForAllContractEntities) =
      _GetAllFamilyForAllContractStateLoadSuccess;
}