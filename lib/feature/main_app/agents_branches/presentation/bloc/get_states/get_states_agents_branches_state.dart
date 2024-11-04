part of 'get_states_agents_branches_bloc.dart';

@freezed
class GetStatesAgentsBranchesState with _$GetStatesAgentsBranchesState {
  const factory GetStatesAgentsBranchesState.initial() = _GetStatesAgentsBranchesStateInitial;

  const factory GetStatesAgentsBranchesState.loading() = GetStatesAgentsBranchesStateLoading;

  const factory GetStatesAgentsBranchesState.loadSuccess(GetStatesAgentsBranchesEntity getStatesAgentsBranchesEntity) =
      _GetStatesAgentsBranchesStateLoadSucess;

  const factory GetStatesAgentsBranchesState.loadFailure(Failure failure) = _GetStatesAgentsBranchesStateLoadFailure;
}
