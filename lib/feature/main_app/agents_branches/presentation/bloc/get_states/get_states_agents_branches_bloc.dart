import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_states_agents_branches/get_states_agents_branches.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_cases/get_states/get_states_agents_branches_usecase.dart';
import '../../../domain/use_cases/get_states/params/get_states_agents_branches_params.dart';

part 'get_states_agents_branches_event.dart';
part 'get_states_agents_branches_state.dart';
part 'get_states_agents_branches_bloc.freezed.dart';

@lazySingleton
@injectable
class GetStatesAgentsBranchesBloc extends Bloc<GetStatesAgentsBranchesEvent, GetStatesAgentsBranchesState> {
  GetStatesAgentsBranchesUseCase useCase;

  GetStatesAgentsBranchesBloc({required this.useCase}) : super(const GetStatesAgentsBranchesState.initial());

  @override
  Stream<GetStatesAgentsBranchesState> mapEventToState(GetStatesAgentsBranchesEvent event) async* {
    yield* event.map(
      getStatesAgentsBranchesEventCalled: (value) async* {
        try {
          yield const GetStatesAgentsBranchesState.loading();
          final failureOrSuccess = await useCase.call(event.params);
          yield failureOrSuccess.fold((failure) => GetStatesAgentsBranchesState.loadFailure(failure),
              (success) => GetStatesAgentsBranchesState.loadSuccess(success));
        } on DioFailure catch (ex) {
          yield GetStatesAgentsBranchesState.loadFailure(ex);
        }
      },
    );
  }
}
