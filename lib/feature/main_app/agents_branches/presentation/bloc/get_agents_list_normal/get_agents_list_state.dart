part of 'get_agents_list_bloc.dart';

@freezed
class GetAgentsListState with _$GetAgentsListState {
  const factory GetAgentsListState.initial() = _GetAgentsListStateInitial;
  const factory GetAgentsListState.loading() = GetAgentsListStateLoading ;
  const factory GetAgentsListState.loadSuccess(GetAgentsListEntity agentsListEntity ) = _GetAgentsListStateLoadSuccess ;
  const factory GetAgentsListState.loadFailure(Failure failure) = _GetAgentsListStateLoadFailure ;
}
