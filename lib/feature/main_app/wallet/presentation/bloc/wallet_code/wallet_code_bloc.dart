import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/wallet_code_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_code_bloc.freezed.dart';

part 'wallet_code_event.dart';

part 'wallet_code_state.dart';

@lazySingleton
@injectable
class WalletCodeBloc extends Bloc<WalletCodeEvent, WalletCodeState> {
  final WalletCodeUseCase walletCodeUseCase;

  WalletCodeBloc({required this.walletCodeUseCase}) : super(const WalletCodeState.initial());

  @override
  Stream<WalletCodeState> mapEventToState(
    WalletCodeEvent event,
  ) async* {
    yield* event.map(walletCodeEventCalled: (e) async* {
      try {
        yield const WalletCodeState.loading();
        final failureOrSuccess = await walletCodeUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => WalletCodeState.loadFailure(failure),
          (success) => WalletCodeState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield WalletCodeState.loadFailure(error);
      }
    });
  }
}
