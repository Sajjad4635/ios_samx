
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/account_enable/account_enable_entities.dart';
import '../../../domain/usecase/account_enable/account_enable_usecase.dart';
import '../../../domain/usecase/account_enable/params/account_enable_param.dart';


part 'account_enable_bloc.freezed.dart';
part 'account_enable_event.dart';
part 'account_enable_state.dart';

@lazySingleton
@injectable

class AccountEnableBloc extends Bloc<AccountEnableEvent, AccountEnableState>{

  final AccountEnableUseCase accountEnableUseCase ;
  AccountEnableBloc({required this.accountEnableUseCase}) : super (const AccountEnableState.initial());

  @override
  Stream<AccountEnableState> mapEventToState(AccountEnableEvent event) async* {
    yield* event.map(accountEnableEventCalled: (e) async* {
      try {
        yield const AccountEnableState.loading();
        final failureOrSuccess = await accountEnableUseCase.call(e.accountEnableParam);
        yield failureOrSuccess.fold(
              (failure) => AccountEnableState.loadFailure(failure),
              (success) => AccountEnableState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield AccountEnableState.loadFailure(e);
      }
    });
  }


}