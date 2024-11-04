
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/confirm/ticketing_confirm_response_entity.dart';

import '../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';
import '../../../domain/usecase/confirm/ticketing_confirm_usecase.dart';

part  'ticketing_confirm_state.dart';
part  'ticketing_confirm_event.dart';
part  'ticketing_confirm_bloc.freezed.dart';

@lazySingleton
@injectable
class TicketingConfirmBloc extends Bloc<TicketingConfirmEvent, TicketingConfirmState>{

  TicketingConfirmUsecase usecase;

  TicketingConfirmBloc({required this.usecase}):super(const TicketingConfirmState.initial());

  @override
  Stream<TicketingConfirmState> mapEventToState (TicketingConfirmEvent event) async* {

    yield* event.map(ticketingConfirmEventCalled: (e) async*{

      try{
        yield const TicketingConfirmState.loading();
        final failureOrSuccess = await usecase.call(e.params);
        yield failureOrSuccess.fold(
          (left) => TicketingConfirmState.loadFailure(left),
          (right) => TicketingConfirmState.loadSuccess(right)
         );

      }on DioFailure catch (error){
        yield TicketingConfirmState.loadFailure(error);
      }
    }
     );

  }






















  
  


}