import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/login/ticketing_login_response_entity.dart';

import '../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/login/params/ticketing_login_params.dart';
import '../../../domain/usecase/login/ticketing_login_usecase.dart'; 

part 'ticketing_login_event.dart';
part 'ticketing_login_state.dart';
part 'ticketing_login_bloc.freezed.dart';

@lazySingleton
@injectable
class TicketingLoginBloc extends Bloc<TicketingLoginEvent, TicketingLoginState> {
  TicketingLoginUsecase usecase;

  TicketingLoginBloc( { required this.usecase } ):super(   const TicketingLoginState.initial());

   @override
  Stream<TicketingLoginState> mapEventToState(TicketingLoginEvent event) async* {

     yield* event.map(ticketingLoginEventCalled: (e) async* {
      try {
        yield const TicketingLoginState.loading();
              final failureOrSuccess = await usecase.call(e.params);
              yield failureOrSuccess.fold(
                 (failure) => TicketingLoginState.loadFailure(failure),
          (success) => TicketingLoginState.loadSuccess(success),
           );
           } on DioFailure catch (e) {
        yield TicketingLoginState.loadFailure(e);
      }
        });
   }

}
