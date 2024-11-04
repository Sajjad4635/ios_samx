import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_cash_withdraw/create_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/create_cash_withdraw_usecase.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/param/create_cash_withdraw_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';


part 'create_cash_withdraw_bloc.freezed.dart';
part 'create_cash_withdraw_event.dart';
part 'create_cash_withdraw_state.dart';

@lazySingleton
@injectable
class CreateCashWithdrawBloc extends Bloc<CreateCashWithdrawEvent, CreateCashWithdrawState> {
  final CreateCashWithdrawUseCase createCashWithdrawUseCase;
  CreateCashWithdrawBloc({required this.createCashWithdrawUseCase}) : super(const CreateCashWithdrawState.initial());

  @override
  Stream<CreateCashWithdrawState> mapEventToState(CreateCashWithdrawEvent event) async* {
    yield* event.map(createCashWithdrawEventCalled: (e) async* {
      try {
        yield const CreateCashWithdrawState.loading();
        final failureOrSuccess = await createCashWithdrawUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CreateCashWithdrawState.loadFailure(failure),
          (success) => CreateCashWithdrawState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CreateCashWithdrawState.loadFailure(e);
      } catch (e) {
        print(e.runtimeType);
      }
    });
  }
}
