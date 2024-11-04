import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../domain/usecases/wallet_to_wallet/wallet_to_wallet_usecase.dart';

part 'wallet_to_wallet_bloc.freezed.dart';

part 'wallet_to_wallet_event.dart';

part 'wallet_to_wallet_state.dart';

@lazySingleton
@injectable
class WalletToWalletBloc
    extends Bloc<WalletToWalletEvent, WalletToWalletState> {
  final WalletToWalletUseCase walletToWalletUseCase;

  WalletToWalletBloc({required this.walletToWalletUseCase})
      : super(const WalletToWalletState.initial());

  @override
  Stream<WalletToWalletState> mapEventToState(
      WalletToWalletEvent event) async* {
    yield* event.map(walletToWalletEventCalled: (e) async* {
      try {
        yield const WalletToWalletState.loading();
        final failureOrSuccess = await walletToWalletUseCase.call(e.params);
        yield failureOrSuccess.fold(
            (left) => WalletToWalletState.loadFailure(left),
            (right) => WalletToWalletState.loadSuccess(right));
      } on DioFailure catch (ex) {
        yield WalletToWalletState.loadFailure(ex);
      }
    });
  }
}
