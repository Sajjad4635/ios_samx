import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../domain/usecases/wallet_withdraw/wallet_withdraw_usecase.dart';

part 'wallet_withdraw_event.dart';
part 'wallet_withdraw_state.dart';
part 'wallet_withdraw_bloc.freezed.dart';

@lazySingleton
@injectable
class WalletWithdrawBloc extends Bloc<WalletWithdrawEvent, WalletWithdrawState> {

  final WalletWithdrawUseCase useCase ;
  WalletWithdrawBloc({required this.useCase}):super(const WalletWithdrawState.initial());

  @override
  Stream<WalletWithdrawState> mapEventToState(WalletWithdrawEvent event) async*{
    try{
      yield const WalletWithdrawState.loading() ;
      final failureOrSuccess = await useCase.call(event.params);
      yield failureOrSuccess.fold(
              (failure) => WalletWithdrawState.loadFailure(failure),
              (withdrawEntities) => WalletWithdrawState.loadSuccess(withdrawEntities)
      );
    }on DioFailure catch (failure){
      yield WalletWithdrawState.loadFailure(failure) ;
    }

  }
}
