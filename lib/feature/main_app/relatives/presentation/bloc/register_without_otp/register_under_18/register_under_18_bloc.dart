import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/register_wihout_otp/register_without_otp_entities.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/params/register_under_18_params.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/usecase/register_without_otp/register_under_18_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_under_18_bloc.freezed.dart';

part 'register_under_18_event.dart';

part 'register_under_18_state.dart';

@lazySingleton
@injectable
class RegisterUnder18Bloc extends Bloc<RegisterUnder8Event, RegisterUnder18State> {
  final RegisterUnder18UseCase registerUnder18UseCase;

  RegisterUnder18Bloc({required this.registerUnder18UseCase})
      : super(const RegisterUnder18State.initial());

  @override
  Stream<RegisterUnder18State> mapEventToState(
      RegisterUnder8Event event) async* {
    yield* event.map(registerUnder18EventCalled: (e) async* {
      try {
        yield const RegisterUnder18State.loading();
        final failureOrSuccess = await registerUnder18UseCase.call(e.registerUnder18Params);
        yield failureOrSuccess.fold(
              (failure) => RegisterUnder18State.loadFailure(failure),
              (success) => RegisterUnder18State.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield RegisterUnder18State.loadFailure(e);
      }
    });
  }
}
