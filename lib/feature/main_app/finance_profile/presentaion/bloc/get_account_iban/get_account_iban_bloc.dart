import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/get_account_iban/get_account_iban_entites.dart';
import '../../../domain/usecase/get_account_iban/get_account_iban_usecase.dart';
import '../../../domain/usecase/get_account_iban/params/get_account_iban_param.dart';

part 'get_account_iban_bloc.freezed.dart';

part 'get_account_iban_event.dart';

part 'get_account_iban_state.dart';

@lazySingleton
@injectable
class GetAccountIbanBloc
    extends Bloc<GetAccountIbanEvent, GetAccountIbanState> {
  final GetAccountIbanUseCase getAccountIbanUseCase;

  GetAccountIbanBloc({required this.getAccountIbanUseCase})
      : super(const GetAccountIbanState.initial());



  @override
  Stream<GetAccountIbanState> mapEventToState(
      GetAccountIbanEvent event) async* {

    yield* event.map(getAccountIbanEventCalled: (e) async* {
      try {
        yield const GetAccountIbanState.loading();
        final failureOrSuccess =
            await getAccountIbanUseCase.call(e.getAccountIbanParam);
        yield failureOrSuccess.fold(
          (failure) => GetAccountIbanState.loadFailure(failure),
          (success) => GetAccountIbanState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAccountIbanState.loadFailure(e);
      }
    });
  }
}
