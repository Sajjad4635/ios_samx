import 'package:ios_samx/feature/cplife_app/tickets/domain/entities/details_ticket/details_ticket_entities.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/repository/tickets_repository.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/details_tickets/param/details_ticket_param.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

@injectable
class DetailsTicketUseCase extends UseCase<DetailsTicketEntities, DetailsTicketParam> {
  final TicketsRepository ticketsRepository;
  DetailsTicketUseCase(this.ticketsRepository);

  @override
  Future<Either<Failure, DetailsTicketEntities>> call(DetailsTicketParam params) async {
    return await ticketsRepository.detailsTicket(param: params);
  }
}
