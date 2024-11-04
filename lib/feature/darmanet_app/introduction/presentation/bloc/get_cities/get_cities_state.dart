part of 'get_cities_bloc.dart';


@freezed
class GetCitiesState with _$GetCitiesState {
  const factory GetCitiesState.initial() = _GetCitiesStateInitial;
  const factory GetCitiesState.loadFailure(Failure failure) = _GetCitiesStateLoadFailure;
  const factory GetCitiesState.loading() = GetCitiesStateLoading;
  const factory GetCitiesState.loadSuccess(GetCitiesEntities getCitiesEntities) =
      _GetCitiesStateLoadSuccess;
}