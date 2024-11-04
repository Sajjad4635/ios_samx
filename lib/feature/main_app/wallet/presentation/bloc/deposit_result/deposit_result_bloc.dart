import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/deposit_result_usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'deposit_result_event.dart';
part 'deposit_result_state.dart';
part 'deposit_result_bloc.freezed.dart';

@lazySingleton
@injectable
class DepositResultBloc extends Bloc<DepositResultEvent, DepositResultState> {

  final DepositResultUseCase useCase ;

  DepositResultBloc({required this.useCase}) : super(const DepositResultState.initial());

  @override
  Stream<DepositResultState> mapEventToState(DepositResultEvent event) async*{

    yield* event.map(depositResultEventCalled: (event) async*{
      try{
        yield const DepositResultStateLoading() ;
        final failureOrSuccess = await useCase.call(event.param);
        yield failureOrSuccess.fold(
                (left) => DepositResultState.loadFailure(left),
                (right) => DepositResultState.loadSuccess(right)
        );
      }on DioFailure catch (ex){
        yield DepositResultState.loadFailure(ex);
      }
    },) ;

  }
}
