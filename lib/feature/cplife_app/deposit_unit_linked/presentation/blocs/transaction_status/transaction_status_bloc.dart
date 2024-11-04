
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/transaction_status_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_status_bloc.freezed.dart';
part 'transaction_status_event.dart';
part 'transaction_status_state.dart';

@lazySingleton
@injectable
class TransactionStatusBloc extends Bloc<TransactionStatusEvent, TransactionStatusState> {
  final TransactionStatusUseCase transactionStatusUseCase;
  TransactionStatusBloc({required this.transactionStatusUseCase}) : super(const TransactionStatusState.initial());

    @override
  Stream<TransactionStatusState> mapEventToState(
    TransactionStatusEvent event,
  ) async* {
    yield* event.map(transactionStatusEventCalled: (e) async* {
      try {
        yield const TransactionStatusState.loading();
        final failureOrSuccess = await transactionStatusUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => TransactionStatusState.loadFailure(failure),
          (success) => TransactionStatusState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield TransactionStatusState.loadFailure(error);
      }
    });
  }
}