
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/create_user_usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_user_bloc.freezed.dart';
part 'create_user_event.dart';
part 'create_user_state.dart';

@lazySingleton
@injectable
class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final CreateUserUseCase createUserUseCase;
  CreateUserBloc({required this.createUserUseCase}) : super(const CreateUserState.initial());

    @override
  Stream<CreateUserState> mapEventToState(
    CreateUserEvent event,
  ) async* {
    yield* event.map(createUserEventCalled: (e) async* {
      try {
        yield const CreateUserState.loading();
        final failureOrSuccess = await createUserUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateUserState.loadFailure(failure),
          (success) => CreateUserState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield CreateUserState.loadFailure(error);
      }
    });
  }
}