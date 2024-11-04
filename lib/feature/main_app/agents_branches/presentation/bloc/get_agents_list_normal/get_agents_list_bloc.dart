import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_agents/get_agents_list_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/get_agents_list_usecase.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_agents_list/params/get_agents_list_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_agents_list_event.dart';

part 'get_agents_list_state.dart';

part 'get_agents_list_bloc.freezed.dart';

@lazySingleton
@injectable
class GetAgentsListBloc extends Bloc<GetAgentsListEvent, GetAgentsListState> {
  GetAgentsListUseCase useCase;

  GetAgentsListBloc({required this.useCase}) : super(const GetAgentsListState.initial());

  @override
  Stream<GetAgentsListState> mapEventToState(GetAgentsListEvent event) async* {
    yield* event.map(
      getAgentListEventCalled: (value) async* {
        try {
          yield const GetAgentsListState.loading();
          final successOrFailure = await useCase.call(event.params);
          yield successOrFailure.fold(
            (failure) => GetAgentsListState.loadFailure(failure),
            (agentList) => GetAgentsListState.loadSuccess(agentList),
          );
        } on DioFailure catch (ex) {
          yield GetAgentsListState.loadFailure(ex);
        }
      },
    );
  }
}
