part of 'unit_price_bloc.dart';

@freezed
class UnitPriceState with _$UnitPriceState {
  const factory UnitPriceState.initial() = _UnitPriceInitial;
  const factory UnitPriceState.loadFailure(Failure failure) = _UnitPriceLoadFailure;
  const factory UnitPriceState.loading() = UnitPriceLoading;
  const factory UnitPriceState.loadSuccess(UnitPriceResponseEntity unitPriceResponseEntity) =
      _UnitPriceLoadSuccess;
}