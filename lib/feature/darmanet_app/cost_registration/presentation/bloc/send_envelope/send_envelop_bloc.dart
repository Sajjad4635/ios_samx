
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/send_envelope/send_envelope_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/param/send_envelope_param.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/send_envelope/send_envelope_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_envelop_bloc.freezed.dart';
part 'send_envelop_event.dart';
part 'send_envelop_state.dart';

@lazySingleton
@injectable
class SendEnvelopBloc extends Bloc<SendEnvelopeEvent, SendEnvelopeState> {
  final SendEnvelopeUseCase sendEnvelopeUseCase;
  SendEnvelopBloc({required this.sendEnvelopeUseCase}) : super(const SendEnvelopeState.initial());

  @override
  Stream<SendEnvelopeState> mapEventToState(SendEnvelopeEvent event) async* {
    yield* event.map(sendEnvelopeEventCalled: (e) async* {
      try {
        yield const SendEnvelopeState.loading();
        final failureOrSuccess = await sendEnvelopeUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SendEnvelopeState.loadFailure(failure),
          (success) => SendEnvelopeState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield SendEnvelopeState.loadFailure(e);
      }
    });
  }
}