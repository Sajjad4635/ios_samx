part of 'life_insurances_bloc.dart';

@freezed 
class LifeInsurancesState with _$LifeInsurancesState {
  const factory LifeInsurancesState.initial() = _LifeInsurancesStateInitial;
  const factory LifeInsurancesState.loadFailure(Failure failure) = _LifeInsurancesStateLoadFailure;
  const factory LifeInsurancesState.loadSuccess(LifeInsurancesResponseEntities lifeInsurancesResponseEntities) = _LifeInsurancesStateLoadSuccess;
  const factory LifeInsurancesState.loading() = LifeInsurancesStateLoading;
}
