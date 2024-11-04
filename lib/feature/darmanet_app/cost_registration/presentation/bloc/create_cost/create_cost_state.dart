part of 'create_cost_bloc.dart';

@freezed
class CreateCostState with _$CreateCostState {
  const factory CreateCostState.initial() = _CreateCostStateInitial;
  const factory CreateCostState.loadFailure(Failure failure) = _CreateCostStateLoadFailure;
  const factory CreateCostState.loading() = CreateCostStateLoading;
  const factory CreateCostState.loadSuccess(CreateCostEntities createCostEntities) =
      _CreateCostStateLoadSuccess;
}