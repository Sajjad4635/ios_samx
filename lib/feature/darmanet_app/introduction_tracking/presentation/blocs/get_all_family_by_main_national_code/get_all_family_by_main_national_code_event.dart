part of 'get_all_family_by_main_national_code_bloc.dart';

@freezed
abstract class GetAllFamilyByMainNationalCodeEvent with _$GetAllFamilyByMainNationalCodeEvent {
  const factory GetAllFamilyByMainNationalCodeEvent.getAllFamilyByMainNationalCodeEventCalled({required GetAllFamilyByMainNationalCodeParam param}) =
      _GetAllFamilyByMainNationalCodeEventCalled;
}