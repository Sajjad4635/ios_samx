import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/list/ticket_list_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_list_repository.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/list/params/ticketing_list_params.dart';

@injectable 
class TicketingListUsecase extends UseCase<TicketListResponseEntity, TicketingListParams>{

  final TicketingListRepository ticketinListRepository ;

  TicketingListUsecase(this.ticketinListRepository);

  @override
  Future<Either<Failure, TicketListResponseEntity>> call(TicketingListParams params) async {

    return await ticketinListRepository.ticketingList(params: params);

  }

  

}