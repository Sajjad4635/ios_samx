import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/params/register_buy_back_params.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/register_buy_back_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/register_buy_back/register_buy_back_response_entities.dart';

part 'register_buy_back_bloc.freezed.dart';
part 'register_buy_back_event.dart';
part 'register_buy_back_state.dart';

@lazySingleton
@injectable
class RegisterBuyBackBloc extends Bloc<RegisterBuyBackEvent, RegisterBuyBackState> {
  final RegisterBuyBackUseCase registerBuyBackUseCase;
  RegisterBuyBackBloc({required this.registerBuyBackUseCase}) : super(const RegisterBuyBackState.initial());

  @override
  Stream<RegisterBuyBackState> mapEventToState(
    RegisterBuyBackEvent event,
  ) async* {
    yield* event.map(registerBuyBackEventCalled: (e) async* {
      try {
        yield const RegisterBuyBackState.loading();
        final failureOrSuccess = await registerBuyBackUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => RegisterBuyBackState.loadFailure(failure),
          (success) => RegisterBuyBackState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield RegisterBuyBackState.loadFailure(error);
      }
    });
  }
}