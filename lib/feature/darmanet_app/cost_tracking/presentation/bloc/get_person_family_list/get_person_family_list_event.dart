part of 'get_person_family_list_bloc.dart';

@freezed
abstract class GetPersonFamilyListEvent with _$GetPersonFamilyListEvent {
  const factory GetPersonFamilyListEvent.getGetPersonFamilyListEventCalled(
          {required GetPersonFamilyListParam param}) =
      _GetPersonFamilyListEventCalled;
}
