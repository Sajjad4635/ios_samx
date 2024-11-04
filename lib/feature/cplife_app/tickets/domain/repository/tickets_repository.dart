import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/details_ticket/details_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/remove_ticket/remove_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/tickets/tickets_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/param/details_ticket_param.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/remove_ticket/param/remove_ticket_param.dart';
import 'package:either_dart/either.dart';

abstract class TicketsRepository {
  Future<Either<Failure, TicketsResponseEntities>> tickets({required NoParams params});
  Future<Either<Failure, DetailsTicketEntities>> detailsTicket({required DetailsTicketParam param});
  Future<Either<Failure, RemoveTicketEntities>> removeTicket({required RemoveTicketParam param});
}
