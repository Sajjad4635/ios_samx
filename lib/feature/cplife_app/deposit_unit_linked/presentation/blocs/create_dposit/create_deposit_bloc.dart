import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/create_deposit_usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_deposit_bloc.freezed.dart';
part 'create_deposit_event.dart';
part 'create_deposit_state.dart';

@lazySingleton
@injectable
class CreateDepositBloc extends Bloc<CreateDepositEvent, CreateDepositState> {
  final CreateDepositUseCase createDepositUseCase;
  CreateDepositBloc({required this.createDepositUseCase}) : super(const CreateDepositState.initial());

    @override
  Stream<CreateDepositState> mapEventToState(
    CreateDepositEvent event,
  ) async* {
    yield* event.map(createDepositEventCalled: (e) async* {
      try {
        yield const CreateDepositState.loading();
        final failureOrSuccess = await createDepositUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateDepositState.loadFailure(failure),
          (success) => CreateDepositState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield CreateDepositState.loadFailure(error);
      }
    });
  }
}