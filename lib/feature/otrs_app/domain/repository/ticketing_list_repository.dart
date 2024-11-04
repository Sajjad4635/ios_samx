import 'package:either_dart/either.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/list/ticket_list_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/list/params/ticketing_list_params.dart';

abstract class TicketingListRepository {
  Future<Either<Failure, TicketListResponseEntity>> ticketingList(
      {required TicketingListParams params});

/*    Future<Either<Failure, PersonalStaticLoginResponseEntities>> personalStaticLogin(
      {required PersonalStaticLoginParams params});
       */
}
