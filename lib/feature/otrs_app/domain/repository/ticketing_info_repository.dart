
import 'package:either_dart/either.dart';

import '../../../../core/errors/failures/failure.dart';
import '../entity/info/ticket_info_response_entity.dart';
import '../usecase/info/params/ticketing_info_params.dart';

abstract class TicketingInfoRepository {
  Future<Either<Failure, TicketingInfoResponseEntity>> getInfoTicket({required TicketingInfoParams params});
}

