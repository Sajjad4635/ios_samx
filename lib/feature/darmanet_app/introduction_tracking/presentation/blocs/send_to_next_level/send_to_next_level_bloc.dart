import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/errors/failures/failure.dart';
import '../../../domain/entities/send_to_next_level/send_to_next_level_entities.dart';
import '../../../domain/usecases/send_to_next_level/param/send_to_next_level_param.dart';
import '../../../domain/usecases/send_to_next_level/send_to_next_level_usecase.dart';

part 'send_to_next_level_bloc.freezed.dart';
part 'send_to_next_level_event.dart';
part 'send_to_next_level_state.dart';

@lazySingleton
@injectable
@lazySingleton
@injectable
class SendToNextLevelBloc extends Bloc<SendToNextLevelEvent, SendToNextLevelState> {
  final SendToNextLevelUseCase sendToNextLevelUseCase;
  SendToNextLevelBloc({required this.sendToNextLevelUseCase}) : super(const SendToNextLevelState.initial());

  @override
  Stream<SendToNextLevelState> mapEventToState(SendToNextLevelEvent event) async* {
    yield* event.map(sendToNextLevelEvent: (e) async* {
      try {
        yield const SendToNextLevelState.loading();
        final failureOrSuccess = await sendToNextLevelUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => SendToNextLevelState.loadFailure(failure),
          (success) => SendToNextLevelState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield SendToNextLevelState.loadFailure(e);
      } 
    });
  }
}
