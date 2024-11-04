import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/errors/failures/dio_failure.dart';
import '../../../domain/entities/get_account/get_account_entities.dart';
import '../../../domain/usecase/get_account/get_account_usecase.dart';

part 'get_account_bloc.freezed.dart';

part 'get_account_event.dart';

part 'get_account_state.dart';

@lazySingleton
@injectable
class GetAccountBloc extends Bloc<GetAccountEvent, GetAccountState> {
  final GetAccountUseCase getAccountUseCase;

  GetAccountBloc({required this.getAccountUseCase})
      : super(const GetAccountState.initial());



  @override
  Stream<GetAccountState> mapEventToState(GetAccountEvent event) async* {
    yield* event.map(getAccountEventCalled: (e) async* {
      try {
        yield const GetAccountState.loading();
        final failureOrSuccess = await getAccountUseCase.call(e.noParams);
        yield failureOrSuccess.fold(
              (failure) => GetAccountState.loadFailure(failure),
              (success) => GetAccountState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetAccountState.loadFailure(e);
      }
    });
  }


}
