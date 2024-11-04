import 'package:either_dart/either.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';

import '../entity/search/ticketing_search_response_entity.dart'; 
import '../usecase/search/params/ticketing_search_params.dart';

abstract class TicketingSearchRepository {

  Future<Either<Failure , TicketingSearchResponseEntity >> 
  ticketSearch({required TicketingSearchParams params}) ;

}