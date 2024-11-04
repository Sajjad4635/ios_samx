import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/create_cost/create_cost_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/create_cost_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/create_cost/param/create_cost_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_cost_bloc.freezed.dart';
part 'create_cost_event.dart';
part 'create_cost_state.dart';

@lazySingleton
@injectable
class CreateCostBloc extends Bloc<CreateCostEvent, CreateCostState> {
  final CreateCostUseCase createCostUseCase;
  CreateCostBloc({required this.createCostUseCase}) : super(const CreateCostState.initial());

  @override
  Stream<CreateCostState> mapEventToState(CreateCostEvent event) async* {
    yield* event.map(createCostEventCalled: (e) async* {
      try {
        yield const CreateCostState.loading();
        final failureOrSuccess = await createCostUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateCostState.loadFailure(failure),
          (success) => CreateCostState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CreateCostState.loadFailure(e);
      }
    });
  }
}
