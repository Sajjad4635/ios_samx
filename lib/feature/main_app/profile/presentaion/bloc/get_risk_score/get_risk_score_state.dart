part of 'get_risk_score_bloc.dart';

@freezed

class GetRiskScoreState with _$GetRiskScoreState{
  const factory GetRiskScoreState.initial() = _GetRiskScoreStateInitial;
  const factory GetRiskScoreState.loading() = GetRiskScoreStateLoading ;
  const factory GetRiskScoreState.loadSuccess(GetRiskScoreEntities getRiskScoreEntities) = _GetRiskScoreStateLoadSuccess ;
  const factory GetRiskScoreState.loadFailure(Failure failure) = _GetRiskScoreStateLoadFailure ;
}
