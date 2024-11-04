import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/account_default/account_default_entities.dart';
import '../../../domain/usecase/account_default/account_default_usecase.dart';
import '../../../domain/usecase/account_default/params/account_default_param.dart';

part 'account_default_bloc.freezed.dart';
part 'account_default_event.dart';
part 'account_default_state.dart';

@lazySingleton
@injectable
class AccountDefaultBloc extends Bloc<AccountDefaultEvent, AccountDefaultState>{

  final AccountDefaultUseCase accountDefaultUseCase ;
  AccountDefaultBloc({required this.accountDefaultUseCase}) : super (const AccountDefaultState.initial());

  @override
  Stream<AccountDefaultState> mapEventToState(AccountDefaultEvent event) async* {
    yield* event.map(accountDefaultEventCalled: (e) async* {
      try {
        yield const AccountDefaultState.loading();
        final failureOrSuccess = await accountDefaultUseCase.call(e.accountDefaultParam);
        yield failureOrSuccess.fold(
              (failure) => AccountDefaultState.loadFailure(failure),
              (success) => AccountDefaultState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield AccountDefaultState.loadFailure(e);
      }
    });
  }
}