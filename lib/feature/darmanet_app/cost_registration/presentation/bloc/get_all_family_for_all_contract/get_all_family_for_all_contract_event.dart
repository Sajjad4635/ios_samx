part of 'get_all_family_for_all_contract_bloc.dart';

@freezed
abstract class GetAllFamilyForAllContractEvent with _$GetAllFamilyForAllContractEvent {
  const factory GetAllFamilyForAllContractEvent.getAllFamilyForAllContractCalled({required GetAllFamilyForAllContractParam param}) =
      _GetAllFamilyForAllContractCalled;
}