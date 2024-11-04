import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/remove_ticket/remove_ticket_entities.dart';
import '../../../domain/usecase/remove_ticket/param/remove_ticket_param.dart';
import '../../../domain/usecase/remove_ticket/remove_ticket_usecase.dart';

part 'remove_ticket_bloc.freezed.dart';
part 'remove_ticket_event.dart';
part 'remove_ticket_state.dart';

@lazySingleton
@injectable
class RemoveTicketBloc extends Bloc<RemoveTicketEvent, RemoveTicketState> {
  final RemoveTicketUseCase removeTicketUseCase;
  RemoveTicketBloc({required this.removeTicketUseCase}) : super(const RemoveTicketState.initial());

  @override
  Stream<RemoveTicketState> mapEventToState(RemoveTicketEvent event) async* {
    yield* event.map(removeTicketEventCalled: (e) async* {
      try {
        yield const RemoveTicketState.loading();
        final failureOrSuccess = await removeTicketUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => RemoveTicketState.loadFailure(failure),
          (success) => RemoveTicketState.loadSuccess(success),
        );
      } on DioFailure catch (failure) {
        yield RemoveTicketState.loadFailure(failure);
      }
    });
  }
}