import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../domain/entities/wallet_balance/wallet_balance_response_entity.dart';
import '../../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import '../../../domain/usecases/wallet_balance/wallet_balance_usecase.dart';


part 'wallet_balance_bloc.freezed.dart';

part 'wallet_balance_event.dart';

part 'wallet_balance_state.dart';

@lazySingleton
@injectable
class WalletBalanceBloc
    extends Bloc<WalletBalanceEvent, WalletBalanceState> {
  final WalletBalanceUseCase walletBalanceUseCase;

  WalletBalanceBloc({required this.walletBalanceUseCase})
      : super(const WalletBalanceState.initial());

  @override
  Stream<WalletBalanceState> mapEventToState(
    WalletBalanceEvent event,
  ) async* {
    yield* event.map(walletBalanceEventCalled: (e) async* {
      try {
        yield const WalletBalanceState.loading();
        final failureOrSuccess = await walletBalanceUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => WalletBalanceState.loadFailure(failure),
          (success) => WalletBalanceState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield WalletBalanceState.loadFailure(error);
      }
    });
  }
}
