part of 'create_cost_bloc.dart';

@freezed
abstract class CreateCostEvent with _$CreateCostEvent {
  const factory CreateCostEvent.createCostEventCalled({required CreateCostParam param}) =
      _CreateCostEventCalled;
}