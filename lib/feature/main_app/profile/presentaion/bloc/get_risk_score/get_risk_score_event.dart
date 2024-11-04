part of 'get_risk_score_bloc.dart';

@freezed
class GetRiskScoreEvent with _$GetRiskScoreEvent{
  const factory GetRiskScoreEvent.getRiskScoreEventCalled({required GetRiskScoreParam getRiskScoreParam}) = _GetRiskScoreEventCalled;
}