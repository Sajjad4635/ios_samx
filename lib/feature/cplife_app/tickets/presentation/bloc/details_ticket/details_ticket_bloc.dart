import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/details_ticket_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/details_ticket/details_ticket_entities.dart';
import '../../../domain/usecase/details_tickets/param/details_ticket_param.dart';

part 'details_ticket_bloc.freezed.dart';
part 'details_ticket_event.dart';
part 'details_ticket_state.dart';

@lazySingleton
@injectable
class DetailsTicketBloc extends Bloc<DetailsTicketEvent, DetailsTicketState> {
  final DetailsTicketUseCase detailsTicketUseCase;
  DetailsTicketBloc({required this.detailsTicketUseCase}) : super(const DetailsTicketState.initial());

  @override
  Stream<DetailsTicketState> mapEventToState(DetailsTicketEvent event) async* {
    yield* event.map(detailsTicketEventCalled: (e) async* {
      try {
        yield const DetailsTicketState.loading();
        final failureOrSuccess = await detailsTicketUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => DetailsTicketState.loadFailure(failure),
          (success) => DetailsTicketState.loadSuccess(success),
        );
      } on DioFailure catch (failure) {
        yield DetailsTicketState.loadFailure(failure);
      }
    });
  }
}
