import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_active_by_person/param/get_active_by_person_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/get_active_by_person/get_active_by_person_entities.dart';
import '../../../domain/usecase/get_active_by_person/get_active_by_person_usecase.dart';

part 'get_active_by_person_bloc.freezed.dart';

part 'get_active_by_person_event.dart';

part 'get_active_by_person_state.dart';

@lazySingleton
@injectable
class GetActiveByPersonBloc
    extends Bloc<GetActiveByPersonEvent, GetActiveByPersonState> {
  final GetActiveByPersonUsecase getActiveByPersonUsecase;

  GetActiveByPersonBloc({required this.getActiveByPersonUsecase})
      : super(const GetActiveByPersonState.initial());

  @override
  Stream<GetActiveByPersonState> mapEventToState(
      GetActiveByPersonEvent event) async* {
    yield* event.map(getActiveByPersonEventCalled: (e) async* {
      try {
        yield const GetActiveByPersonState.loading();
        final failureOrSuccess = await getActiveByPersonUsecase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetActiveByPersonState.loadFailure(failure),
          (success) => GetActiveByPersonState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetActiveByPersonState.loadFailure(e);
      }
    });
  }
}
