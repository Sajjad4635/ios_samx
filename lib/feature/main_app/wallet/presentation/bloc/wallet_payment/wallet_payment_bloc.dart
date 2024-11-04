import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/wallet_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/wallet_payment/payment_token_response.dart';
import '../../../domain/usecases/wallet_payment/params/wallet_payment_params.dart';

part 'wallet_payment_bloc.freezed.dart';

part 'wallet_payment_event.dart';

part 'wallet_payment_state.dart';

@lazySingleton
@injectable
class WalletPaymentBloc extends Bloc<WalletPaymentEvent, WalletPaymentState> {
  final WalletPaymentUseCase walletPaymentUseCase;

  WalletPaymentBloc({required this.walletPaymentUseCase}) : super(const WalletPaymentState.initial());

  @override
  Stream<WalletPaymentState> mapEventToState(
      WalletPaymentEvent event,
      ) async* {
    yield* event.map(walletPaymentEventCalled: (e) async* {
      try {
        yield const WalletPaymentState.loading();
        final failureOrSuccess = await walletPaymentUseCase.call(e.param);
        yield failureOrSuccess.fold(
              (failure) => WalletPaymentState.loadFailure(failure),
              (success) => WalletPaymentState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield WalletPaymentState.loadFailure(error);
      }
    });
  }
}

