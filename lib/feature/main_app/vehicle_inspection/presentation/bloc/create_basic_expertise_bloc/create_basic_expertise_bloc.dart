import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/entities/create_basic_expertise/create_basic_expertise_entities.dart';
import 'package:ios_samx/feature/main_app/vehicle_inspection/domain/usecase/create_basic_expertise/param/create_basic_expertise_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/create_basic_expertise/create_basic_expertise_usecase.dart';

part 'create_basic_expertise_bloc.freezed.dart';

part 'create_basic_expertise_event.dart';

part 'create_basic_expertise_state.dart';

@lazySingleton
@injectable
class CreateBasicExpertiseBloc extends Bloc<CreateBasicExpertiseEvent, CreateBasicExpertiseState> {

  CreateBasicExpertiseUseCase createBasicExpertiseUseCase;

  CreateBasicExpertiseBloc({required this.createBasicExpertiseUseCase})
      : super(const CreateBasicExpertiseState.initial());

  @override
  Stream<CreateBasicExpertiseState> mapEventToState(
      CreateBasicExpertiseEvent event) async* {
    yield* event.map(createBasicExpertiseEventCalled: (e) async* {
      try {
        yield const CreateBasicExpertiseState.loading();
        final failureOrSuccess =
            await createBasicExpertiseUseCase.call(e.createBasicExpertiseParam);
        yield failureOrSuccess.fold(
          (failure) => CreateBasicExpertiseState.loadFailure(failure),
          (success) => CreateBasicExpertiseState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CreateBasicExpertiseState.loadFailure(e);
      }
    });
  }
}
