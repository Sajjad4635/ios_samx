import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/params/validate_cash_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/validate_cash_withdraw_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/validate_cash_withdraw/validate_cash_withdraw_response.dart';

part 'validate_cash_withdraw_bloc.freezed.dart';
part 'validate_cash_withdraw_event.dart';
part 'validate_cash_withdraw_state.dart';

@lazySingleton
@injectable
class ValidateCashWithdrawBloc extends Bloc<ValidateCashWithdrawEvent, ValidateCashWithdrawState> {
  final ValidateCashWithdrawUseCase validateCashWithdrawUseCase;

  ValidateCashWithdrawBloc({required this.validateCashWithdrawUseCase})
      : super(const ValidateCashWithdrawState.initial());

  @override
  Stream<ValidateCashWithdrawState> mapEventToState(ValidateCashWithdrawEvent event) async* {
    yield* event.map(validateCashWithdrawEventCalled: (e) async* {
      try {
        yield const ValidateCashWithdrawState.loading();
        final failureOrSuccess = await validateCashWithdrawUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => ValidateCashWithdrawState.loadFailure(failure),
          (success) => ValidateCashWithdrawState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield ValidateCashWithdrawState.loadFailure(e);
      }
    });
  }
}
