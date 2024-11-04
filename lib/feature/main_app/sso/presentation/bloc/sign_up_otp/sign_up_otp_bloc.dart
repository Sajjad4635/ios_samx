

import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up_otp/sign_up_otp_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/params/sign_up_otp_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up_otp/sign_up_otp_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_otp_bloc.freezed.dart';
part 'sign_up_otp_event.dart';
part 'sign_up_otp_state.dart';

@lazySingleton
@injectable
class SignUpOtpBloc extends Bloc<SignUpOtpEvent, SignUpOtpState> {
  final SignUpOtpUseCase signUpOtpUseCase;
  SignUpOtpBloc({required this.signUpOtpUseCase}) : super(const SignUpOtpState.initial());

    @override
  Stream<SignUpOtpState> mapEventToState(
    SignUpOtpEvent event,
  ) async* {
    yield* event.map(signUpOtpEventCalled: (e) async* {
      try {
        yield const SignUpOtpState.loading();
        final failureOrSuccess = await signUpOtpUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SignUpOtpState.loadFailure(failure),
          (success) => SignUpOtpState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield SignUpOtpState.loadFailure(error);
      }
    });
  }
}