import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/details_ticket/details_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/remove_ticket/remove_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/param/details_ticket_param.dart';

import '../../domain/entities/tickets/tickets_response_entities.dart';
import '../../domain/usecase/remove_ticket/param/remove_ticket_param.dart';

abstract class TicketsRemoteDataSource {
  Future<TicketsResponseEntities> tickets({required NoParams params});
  Future<DetailsTicketEntities> detailsTicket(
      {required DetailsTicketParam param});
  Future<RemoveTicketEntities> removeTicket({required RemoveTicketParam param});
}
