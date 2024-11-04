part of 'get_cities_agents_branches_bloc.dart';

@freezed
class GetCitiesAgentsBranchesState with _$GetCitiesAgentsBranchesState {
  const factory GetCitiesAgentsBranchesState.initial() =
      _GetCitiesAgentsBranchesStateInitial;

  const factory GetCitiesAgentsBranchesState.loading() =
      GetCitiesAgentsBranchesStateLoading;

  const factory GetCitiesAgentsBranchesState.loadSuccess(
          GetCitiesAgentsBranchesEntity citiesAgentsBranchesEntity) =
      _GetCitiesAgentsBranchesStateLoadSuccess;

  const factory GetCitiesAgentsBranchesState.loadFailure(Failure failure) =
      _GetCitiesAgentsBranchesStateLoadFailure;
}
