part of 'insurances_list_bloc.dart';

@freezed
class InsurancesListState with _$InsurancesListState {
  const factory InsurancesListState.initial() = _InsurancesListInitial;
  const factory InsurancesListState.loadFailure(Failure error) = _InsurancesListFailure;
  const factory InsurancesListState.loading() = InsurancesListLoading;
  const factory InsurancesListState.loadSuccess(InsurancesListResponseEntities insurancesListResponseEntities) = _InsurancesListSuccess;
}
