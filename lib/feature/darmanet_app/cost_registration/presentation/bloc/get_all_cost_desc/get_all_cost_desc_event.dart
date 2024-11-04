part of 'get_all_cost_desc_bloc.dart';

@freezed
abstract class GetAllCostDescEvent with _$GetAllCostDescEvent {
  const factory GetAllCostDescEvent.getAllCostDescEventCalled({required GetAllCostDescParam param}) =
      _GetAllCostDescEventEventCalled;
}
