part of 'unit_price_bloc.dart';

@freezed
abstract class UnitPriceEvent with _$UnitPriceEvent {
  const factory UnitPriceEvent.unitPriceEventCalled(NoParams noParams) = _UnitPriceEventCalled;
}