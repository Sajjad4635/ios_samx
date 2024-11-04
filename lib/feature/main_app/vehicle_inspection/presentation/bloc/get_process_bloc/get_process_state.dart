part of 'get_process_bloc.dart';

@freezed
class GetProcessState with _$GetProcessState {
  const factory GetProcessState.initial() = _GetProcessStateInitial ;
  const factory GetProcessState.loadFailure(Failure failure ) = _GetProcessStateLoadFailure;
  const factory GetProcessState.loading() = GetProcessStateLoading ;
  const factory GetProcessState.loadSuccess (GetProcessEntities getProcessEntities) = _GetProcessStateLoadSuccess ;
}