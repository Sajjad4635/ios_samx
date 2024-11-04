
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/login_otp/login_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/login_otp_usecase.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/login_otp/params/login_otp_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_otp_bloc.freezed.dart';
part 'login_otp_event.dart';
part 'login_otp_state.dart';

@lazySingleton
@injectable
class LoginOtpBloc extends Bloc<LoginOtpEvent, LoginOtpState> {
  final LoginOtpUseCase loginOtpUseCase;
  LoginOtpBloc({required this.loginOtpUseCase}) : super(const LoginOtpState.initial());

    @override
  Stream<LoginOtpState> mapEventToState(
    LoginOtpEvent event,
  ) async* {
    yield* event.map(loginEventCalled: (e) async* {
      try {
        yield const LoginOtpState.loading();
        final failureOrSuccess = await loginOtpUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => LoginOtpState.loadFailure(failure),
          (success) => LoginOtpState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield LoginOtpState.loadFailure(error);
      }
    });
  }
}