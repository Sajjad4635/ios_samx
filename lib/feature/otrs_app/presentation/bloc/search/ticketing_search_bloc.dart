
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/dio_failure.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/search/ticketing_search_usecase.dart';

import '../../../../../core/errors/failures/failure.dart';  
import '../../../domain/entity/search/ticketing_search_response_entity.dart';
import '../../../domain/usecase/search/params/ticketing_search_params.dart';

part 'ticketing_search_bloc.freezed.dart';
part 'ticketing_search_event.dart';
part 'ticketing_search_state.dart';


@lazySingleton
@injectable 
class TicketingSearchBloc extends Bloc<TicketingSearchEvent, TicketingSearchState> {
  final TicketingSearchUsecase ticketingSearchUsecase ;

  TicketingSearchBloc({ required this.ticketingSearchUsecase}):super(const TicketingSearchState.initial());

  @override
  Stream<TicketingSearchState> mapEventToState(TicketingSearchEvent event, ) 
  async* {
    yield* event.map(ticketingSearchEventCalled: (event) async*{
      try{
        yield const TicketingSearchState.loading();
        final failureOrSuccess = await ticketingSearchUsecase.call(event.params);
         yield failureOrSuccess.fold(
          (failure) => TicketingSearchState.loadFailure(failure),
          (success) => TicketingSearchState.loadSuccess(success),
        );
      }on DioFailure catch(error){
          yield TicketingSearchState.loadFailure(error);
      }

    }

    );

  }
  
}
