import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_settlement_withdraw/create_settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/create_settlement_withdraw_usecase.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/params/create_settlement_withdraw_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';

part 'create_settlement_withdraw_bloc.freezed.dart';
part 'create_settlement_withdraw_event.dart';
part 'create_settlement_withdraw_state.dart';

@lazySingleton
@injectable
class CreateSettlementWithdrawBloc extends Bloc<CreateSettlementWithdrawEvent, CreateSettlementWithdrawState> {
  final CreateSettlementWithdrawUseCase createSettlementWithdrawUseCase;
  CreateSettlementWithdrawBloc({required this.createSettlementWithdrawUseCase})
      : super(const CreateSettlementWithdrawState.initial());

  @override
  Stream<CreateSettlementWithdrawState> mapEventToState(CreateSettlementWithdrawEvent event) async* {
    yield* event.map(createSettlementWithdrawEventCalled: (e) async* {
      try {
        yield const CreateSettlementWithdrawState.loading();
        final failureOrSuccess = await createSettlementWithdrawUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateSettlementWithdrawState.loadFailure(failure),
          (success) => CreateSettlementWithdrawState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CreateSettlementWithdrawState.loadFailure(e);
      } catch (e) {
        print(e);
        print(e.runtimeType);
      }
    });
  }
}
