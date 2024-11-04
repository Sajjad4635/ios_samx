import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_by_id/get_by_id_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/get_by_id_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_by_id/param/get_by_id_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_by_id_bloc.freezed.dart';

part 'get_by_id_event.dart';

part 'get_by_id_state.dart';

@lazySingleton
@injectable
class GetByIdcBloc extends Bloc<GetByIdEvent, GetByIdState> {
  final GetByIdUsecase getByIdUsecase;

  GetByIdcBloc({required this.getByIdUsecase}) : super(const GetByIdState.initial());

  @override
  Stream<GetByIdState> mapEventToState(GetByIdEvent event) async* {
    yield* event.map(getByIdEventCalled: (e) async* {
      try {
        yield const GetByIdState.loading();
        final failureOrSuccess = await getByIdUsecase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetByIdState.loadFailure(failure),
          (success) => GetByIdState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetByIdState.loadFailure(e);
      }
    });
  }
}
