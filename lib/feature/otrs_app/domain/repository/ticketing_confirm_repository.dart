import 'package:either_dart/either.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/confirm/ticketing_confirm_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';

import '../../../../core/errors/failures/failure.dart';

abstract class TicketingConfirmRepository {
  Future<Either<Failure, TicketingConfirmResponseEntity>> confirmTicket({required TicketingConfirmParams params});
}