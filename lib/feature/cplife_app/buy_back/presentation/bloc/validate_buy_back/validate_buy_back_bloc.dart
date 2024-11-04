import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/params/validate_buy_back_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/validate_buy_back_usecase.dart';

part 'validate_buy_back_bloc.freezed.dart';
part 'validate_buy_back_event.dart';
part 'validate_buy_back_state.dart';

@lazySingleton
@injectable
class ValidateBuyBackBloc extends Bloc<ValidateBuyBackEvent, ValidateBuyBackState> {
  final ValidateBuyBackUseCase validateBuyBackUseCase;
  ValidateBuyBackBloc({required this.validateBuyBackUseCase}) : super(const ValidateBuyBackState.initial());

  @override
  Stream<ValidateBuyBackState> mapEventToState(
    ValidateBuyBackEvent event,
  ) async* {
    yield* event.map(validateBuyBackEventCalled: (e) async* {
      try {
        yield const ValidateBuyBackState.loading();
        final failureOrSuccess = await validateBuyBackUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => ValidateBuyBackState.loadFailure(failure),
          (success) => ValidateBuyBackState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield ValidateBuyBackState.loadFailure(error);
      }
    });
  }
}