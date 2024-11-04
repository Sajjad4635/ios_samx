part of 'get_all_cost_desc_bloc.dart';

@freezed
class GetAllCostDescState with _$GetAllCostDescState {
  const factory GetAllCostDescState.initial() = _GetAllCostDescStateInitial;
  const factory GetAllCostDescState.loadFailure(Failure failure) = _GetAllCostDescStateLoadFailure;
  const factory GetAllCostDescState.loading() = GetAllCostDescStateLoading;
  const factory GetAllCostDescState.loadSuccess(GetAllCostDescEntities getAllCostDescEntities) =
      _GetAllCostDescStateLoadSuccess;
}