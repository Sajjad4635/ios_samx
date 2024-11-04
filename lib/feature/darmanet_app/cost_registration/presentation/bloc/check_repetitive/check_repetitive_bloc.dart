
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/check_repetitive/check_repetitive_entities.dart';
import '../../../domain/usecase/check_repetitive/check_repetitive_usecase.dart';
import '../../../domain/usecase/check_repetitive/param/check_repetitive_param.dart';

part 'check_repetitive_bloc.freezed.dart';
part 'check_repetitive_event.dart';
part 'check_repetitive_state.dart';

@lazySingleton
@injectable
class CheckRepetitiveBloc extends Bloc<CheckRepetitiveEvent, CheckRepetitiveState> {
  final CheckRepetitiveUseCase checkRepetitiveUseCase;
  CheckRepetitiveBloc({required this.checkRepetitiveUseCase}) : super(const CheckRepetitiveState.initial());

  @override
  Stream<CheckRepetitiveState> mapEventToState(CheckRepetitiveEvent event) async* {
    yield* event.map(checkRepetitiveEventCalled: (e) async* {
      try {
        yield const CheckRepetitiveState.loading();
        final failureOrSuccess = await checkRepetitiveUseCase.call(e.param);
        yield failureOrSuccess.fold(
          (failure) => CheckRepetitiveState.loadFailure(failure),
          (success) => CheckRepetitiveState.loadSuccess(success),
        );
      } on DioFailure catch (e) {
        yield CheckRepetitiveState.loadFailure(e);
      } 
    });
  }
}