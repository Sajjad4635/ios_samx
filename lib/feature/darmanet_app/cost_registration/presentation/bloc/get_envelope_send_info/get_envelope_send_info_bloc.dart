import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_envelope_send_info/get_envelope_send_info_entities.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/get_envelope_send_info_usecase.dart';
import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/usecase/get_envelope_send_info/param/get_envelope_send_info_param.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_envelope_send_info_bloc.freezed.dart';
part 'get_envelope_send_info_event.dart';
part 'get_envelope_send_info_state.dart';

@lazySingleton
@injectable
class GetEnvelopeSendInfoBloc extends Bloc<GetEnvelopeSendInfoEvent, GetEnvelopeSendInfoState> {
  final GetEnvelopeSendInfoUseCase getEnvelopeSendInfoUseCase;
  GetEnvelopeSendInfoBloc({required this.getEnvelopeSendInfoUseCase}) : super(const GetEnvelopeSendInfoState.initial());

  @override
  Stream<GetEnvelopeSendInfoState> mapEventToState(GetEnvelopeSendInfoEvent event) async* {
    yield* event.map(getEnvelopeSendInfoEventCalled: (e) async* {
      try {
        yield const GetEnvelopeSendInfoState.loading();
        final failureOrSuccess = await getEnvelopeSendInfoUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => GetEnvelopeSendInfoState.loadFailure(failure),
          (success) => GetEnvelopeSendInfoState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield GetEnvelopeSendInfoState.loadFailure(e);
      }
    });
  }
}