part of 'get_score_bloc.dart';

@freezed
class GetScoreState with _$GetScoreState {
  const factory GetScoreState.initial() = _GetScoreStateInitial;
  const factory GetScoreState.loading() = GetScoreStateLoading ;
  const factory GetScoreState.loadSuccess(GetScoreEntity getScoreEntity) = _GetScoreStateLoadSuccess ;
  const factory GetScoreState.loadFailure(Failure failure) = _GetScoreStateLoadFailure ;

}
