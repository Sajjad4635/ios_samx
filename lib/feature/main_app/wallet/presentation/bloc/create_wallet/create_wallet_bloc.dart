import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/create_wallet_usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_wallet_bloc.freezed.dart';
part 'create_wallet_event.dart';
part 'create_wallet_state.dart';

@lazySingleton
@injectable
class CreateWalletBloc extends Bloc<CreateWalletEvent, CreateWalletState> {
  final CreateWalletUseCase createWalletUseCase;
  CreateWalletBloc({required this.createWalletUseCase}) : super(const CreateWalletState.initial());

    @override
  Stream<CreateWalletState> mapEventToState(
    CreateWalletEvent event,
  ) async* {
    yield* event.map(createWalletEventCalled: (e) async* {
      try {
        yield const CreateWalletState.loading();
        final failureOrSuccess = await createWalletUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateWalletState.loadFailure(failure),
          (success) => CreateWalletState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield CreateWalletState.loadFailure(error);
      }
    });
  }
}