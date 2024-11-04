import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login/login_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/login_usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login/params/login_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(const LoginState.initial());

    @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(loginEventCalled: (e) async* {
      try {
        yield const LoginState.loading();
        final failureOrSuccess = await loginUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => LoginState.loadFailure(failure),
          (success) => LoginState.loadSuccess(success),
        );
      } on Failure catch (error) {
        yield LoginState.loadFailure(error);
      }
    });
  }

}