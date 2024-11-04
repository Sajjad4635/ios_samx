part of 'life_insurances_bloc.dart';

@freezed
abstract class LifeInsurancesEvent with _$LifeInsurancesEvent {
  const factory LifeInsurancesEvent.lifeInsurancesEventCalled(NoParams params) = _LifeInsurancesEventCalled;
}
