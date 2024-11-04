part of 'insurances_list_bloc.dart';

@freezed
abstract class InsurancesListEvent with _$InsurancesListEvent {
  const factory InsurancesListEvent.insurancesListEventCalled(InsurancesParam param) =
      _InsurancesListEventCalled;
}
