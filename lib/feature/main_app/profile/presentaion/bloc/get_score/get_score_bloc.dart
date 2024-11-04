import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/get_score/get_score_entity.dart';
import '../../../domain/usecase/get_score/get_score_usecase.dart';

part 'get_score_event.dart';
part 'get_score_state.dart';
part 'get_score_bloc.freezed.dart';

@injectable
@lazySingleton
class GetScoreBloc extends Bloc<GetScoreEvent, GetScoreState> {
  final GetScoreUseCase useCase;
  GetScoreBloc({required this.useCase}):super(const GetScoreState.initial());

  @override
  Stream<GetScoreState> mapEventToState(GetScoreEvent event) async*{

    yield* event.map(getScoreEventCalled:(value) async*{
      try{

        yield const GetScoreState.loading();
        final failureOrSuccess = await useCase.call(event.noParam);
        yield failureOrSuccess.fold(
                (failure) => GetScoreState.loadFailure(failure),
                (getScoreEntity) => GetScoreState.loadSuccess(getScoreEntity)
        );

      }on DioFailure catch (ex){
        yield GetScoreState.loadFailure(ex);
      }
    }, );

  }
}
