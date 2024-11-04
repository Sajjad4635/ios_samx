import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/submit_discontent.dart';
import '../../domain/usecase/params/submit_discontent_params.dart';
import '../../domain/usecase/submit_discontent_usecase.dart';

part 'submit_discontent_event.dart';
part 'submit_discontent_state.dart';
part 'submit_discontent_bloc.freezed.dart';

@lazySingleton
@injectable
class SubmitDiscontentBloc extends Bloc<SubmitDiscontentEvent, SubmitDiscontentState> {
  final SubmitDiscontentUseCase useCase ;

  SubmitDiscontentBloc({required this.useCase}) : super(const SubmitDiscontentState.initial());

  @override
  Stream<SubmitDiscontentState> mapEventToState(SubmitDiscontentEvent event) async*{

    yield* event.map(submitDiscontentEventCalled: (e) async*{
      try{
        yield const SubmitDiscontentState.loading();
        final failureOrSuccess = await useCase.call(e.params);
        yield failureOrSuccess.fold(
                (left) => SubmitDiscontentState.loadFailure(left),
                (right) => SubmitDiscontentState.loadSuccess(right)
        );

      }on DioFailure catch (error){
        yield SubmitDiscontentState.loadFailure(error);
      }
    });
  }
}
