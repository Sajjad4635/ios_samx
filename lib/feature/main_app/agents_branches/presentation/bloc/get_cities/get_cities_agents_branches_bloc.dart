import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/entities/get_cities_agents_branches/get_cities_agents_branches_entity.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_cities/get_cities_agents_branches_usecase.dart';
import 'package:ios_samx/feature/main_app/agents_branches/domain/use_cases/get_cities/params/get_cities_agents_branches_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_cities_agents_branches_event.dart';
part 'get_cities_agents_branches_state.dart';
part 'get_cities_agents_branches_bloc.freezed.dart';

@lazySingleton
@injectable
class GetCitiesAgentsBranchesBloc extends Bloc<GetCitiesAgentsBranchesEvent, GetCitiesAgentsBranchesState> {

  GetCitiesAgentsBranchesUseCase useCase ;

  GetCitiesAgentsBranchesBloc({required this.useCase}):super(const GetCitiesAgentsBranchesState.initial());

  @override
  Stream<GetCitiesAgentsBranchesState> mapEventToState(GetCitiesAgentsBranchesEvent event) async*{

   yield* event.map(getCitiesAgentsBranchesEventCalled: (event) async*{
      try{
        yield const GetCitiesAgentsBranchesState.loading() ;
        final failureOrSuccess = await useCase.call(event.params);
        yield failureOrSuccess.fold(
                (failure) => GetCitiesAgentsBranchesState.loadFailure(failure),
                (success) => GetCitiesAgentsBranchesState.loadSuccess(success)
        );

      } on DioFailure catch(ex){
        yield GetCitiesAgentsBranchesState.loadFailure(ex);
      }
    },
   );
  }
}
