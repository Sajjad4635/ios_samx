import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/tickets/tickets_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import '../../../domain/entities/tickets/tickets_response_entities.dart';

part 'tickets_bloc.freezed.dart';
part 'tickets_event.dart';
part 'tickets_state.dart';

@lazySingleton
@injectable
class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final TicketsUseCase ticketsUseCase;
  TicketsBloc({required this.ticketsUseCase}) : super(const TicketsState.initial());

  @override
  Stream<TicketsState> mapEventToState(TicketsEvent event) async* {
    yield* event.map(ticketsEventCalled: (e) async* {
      try {
        yield const TicketsState.loading();
        final failureOrSuccess = await ticketsUseCase.call(e.params);
        yield failureOrSuccess.fold(
          (failure) => TicketsState.loadFailure(failure),
          (success) => TicketsState.loadSuccess(success),
        );
      } on DioFailure catch (failure) {
        yield TicketsState.loadFailure(failure);
      }
    });
  }
}
