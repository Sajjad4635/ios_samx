
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/list/ticket_list_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/list/ticketing_list_usecase.dart';

import '../../../../../core/errors/failures/dio_failure.dart';
import '../../../../../core/errors/failures/failure.dart';
import '../../../domain/usecase/list/params/ticketing_list_params.dart';

part 'ticketing_list_bloc.freezed.dart';
part 'ticketing_list_event.dart';
part 'ticketing_list_state.dart';

@lazySingleton
@injectable 
class TicketingListBloc extends Bloc<TicketingListEvent, TicketingListState>{

    final TicketingListUsecase ticketingListUsecase;

  TicketingListBloc({required this.ticketingListUsecase}) : super(const TicketingListState.initial());

  @override
  Stream<TicketingListState> mapEventToState(
    TicketingListEvent event,
  ) async* {
    yield* event.map(ticketingListEventCalled: (e) async* {
      try {
        yield const TicketingListState.loading();
        final failureOrSuccess = await ticketingListUsecase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => TicketingListState.loadFailure(failure),
          (success) => TicketingListState.loadSuccess(success),
        );
      } on DioFailure catch (error) {
        yield TicketingListState.loadFailure(error);
      }
    });
  }

}