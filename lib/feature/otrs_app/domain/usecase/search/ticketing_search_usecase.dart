import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_search_repository.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/search/params/ticketing_search_params.dart';

import '../../entity/search/ticketing_search_response_entity.dart';
 
 

@injectable
class TicketingSearchUsecase implements UseCase<TicketingSearchResponseEntity, TicketingSearchParams>{

  TicketingSearchRepository  ticketingSearchRepository;

  TicketingSearchUsecase( this.ticketingSearchRepository );

  @override
  Future<Either<Failure,TicketingSearchResponseEntity >> call(TicketingSearchParams params) async {

    return await ticketingSearchRepository.ticketSearch(params: params);
  }


  


}