
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/entities/register_loan/register_loan_response.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/param/register_loan_param.dart';
import 'package:ios_samx/feature/cplife_app/loan/domain/usecase/register_loan/register_loan_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';

part 'register_loan_bloc.freezed.dart';
part 'register_loan_event.dart';
part 'register_loan_state.dart';

@lazySingleton
@injectable
class RegisterLoanBloc extends Bloc<RegisterLoanEvent, RegisterLoanState> {
  final RegisterLoanUseCase registerLoanUseCase;
  RegisterLoanBloc({required this.registerLoanUseCase}) : super(const RegisterLoanState.initial());

    @override
  Stream<RegisterLoanState> mapEventToState(
    RegisterLoanEvent event,
  ) async* {
    yield* event.map(registerLoanEventCalled: (e) async* {
      try {
        yield const RegisterLoanState.loading();
        final failureOrSuccess = await registerLoanUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => RegisterLoanState.loadFailure(failure),
          (success) => RegisterLoanState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield RegisterLoanState.loadFailure(error);
      }
    });
  }
}