

import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_cities_entities.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/get_cities_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/introduction/domain/usecase/get_cities/param/get_cities_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_cities_bloc.freezed.dart';
part 'get_cities_event.dart';
part 'get_cities_state.dart';

@lazySingleton
@injectable
class GetCitiesBloc extends Bloc<GetCitiesEvent, GetCitiesState> {
  final GetCitiesUseCase getCitiesUseCase;
  GetCitiesBloc({required this.getCitiesUseCase}) : super(const GetCitiesState.initial());

  @override
  Stream<GetCitiesState> mapEventToState(GetCitiesEvent event) async* {
    yield* event.map(getCitiesEventCalled: (e) async* {
      try {
        yield const GetCitiesState.loading();
        final failureOrSuccess = await getCitiesUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetCitiesState.loadFailure(failure),
          (success) => GetCitiesState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetCitiesState.loadFailure(e);
      }
    });
  }
}