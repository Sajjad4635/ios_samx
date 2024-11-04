import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/wallet_transaction_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/wallet_transaction_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';

part 'wallet_transaction_bloc.freezed.dart';

part 'wallet_transaction_event.dart';

part 'wallet_transaction_state.dart';

@lazySingleton
@injectable
class WalletTransactionBloc extends Bloc<WalletTransactionEvent, WalletTransactionState> {
  final WalletTransactionUseCase walletTransactionUseCase;

  WalletTransactionBloc({required this.walletTransactionUseCase})
      : super(const WalletTransactionState.initial());

  @override
  Stream<WalletTransactionState> mapEventToState(
    WalletTransactionEvent event,
  ) async* {
    yield* event.map(walletTransactionEventCalled: (e) async* {
      try {
        yield const WalletTransactionState.loading();
        final failureOrSuccess = await walletTransactionUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => WalletTransactionState.loadFailure(failure),
          (success) => WalletTransactionState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield WalletTransactionState.loadFailure(error);
      }
    });
  }
}
