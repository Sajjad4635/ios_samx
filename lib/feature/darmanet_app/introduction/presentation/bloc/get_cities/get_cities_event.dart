part of 'get_cities_bloc.dart';

@freezed
abstract class GetCitiesEvent with _$GetCitiesEvent {
  const factory GetCitiesEvent.getCitiesEventCalled({required GetCitiesParam param}) =
      _GetCitiesEventCalled;
}