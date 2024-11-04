
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/sso/domain/entities/sign_up/sign_up_entities.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/params/sign_up_params.dart';
import 'package:ios_samx/feature/main_app/sso/domain/usecase/sign_up/sign_up_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@lazySingleton
@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;
  SignUpBloc({required this.signUpUseCase}) : super(const SignUpState.initial());

    @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(signUpEventCalled: (e) async* {
      try {
        yield const SignUpState.loading();
        final failureOrSuccess = await signUpUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SignUpState.loadFailure(failure),
          (success) => SignUpState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield SignUpState.loadFailure(error);
      }
    });
  }
}