import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_upper_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/register_upper_18_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_upper_18_bloc.freezed.dart';

part 'register_upper_18_event.dart';

part 'register_upper_18_state.dart';

@lazySingleton
@injectable
class RegisterUpper18Bloc extends Bloc<RegisterUpper18Event, RegisterUpper18State> {
  final RegisterUpper18UseCase registerUpper18UseCase;

  RegisterUpper18Bloc({required this.registerUpper18UseCase})
      : super(const RegisterUpper18State.initial());

  @override
  Stream<RegisterUpper18State> mapEventToState(
      RegisterUpper18Event event) async* {
    yield* event.map(registerUpper18EventCalled: (e) async* {
      try {
        yield const RegisterUpper18State.loading();
        final failureOrSuccess = await registerUpper18UseCase.call(e.registerUpper18Params);
        yield failureOrSuccess.fold(
              (failure) => RegisterUpper18State.loadFailure(failure),
              (success) => RegisterUpper18State.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield RegisterUpper18State.loadFailure(e);
      }
    });
  }
}
