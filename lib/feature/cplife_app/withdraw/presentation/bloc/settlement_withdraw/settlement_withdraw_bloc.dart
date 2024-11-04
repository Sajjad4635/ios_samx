import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/params/settlement_withdraw_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/settlement_withdraw_usecase.dart';


part 'settlement_withdraw_bloc.freezed.dart';
part 'settlement_withdraw_event.dart';
part 'settlement_withdraw_state.dart';

@lazySingleton
@injectable
class SettlementWithdrawBloc extends Bloc<SettlementWithdrawEvent, SettlementWithdrawState> {
  final SettlementWithdrawUseCase settlementWithdrawUseCase;
  SettlementWithdrawBloc({required this.settlementWithdrawUseCase}) : super(const SettlementWithdrawState.initial());

  @override
  Stream<SettlementWithdrawState> mapEventToState(SettlementWithdrawEvent event) async* {
    yield* event.map(settlementWithdrawEventCalled: (e) async* {
      try {
        yield const SettlementWithdrawState.loading();
        final failureOrSuccess = await settlementWithdrawUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SettlementWithdrawState.loadFailure(failure),
          (success) => SettlementWithdrawState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield SettlementWithdrawState.loadFailure(e);
      }
    });
  }
}
