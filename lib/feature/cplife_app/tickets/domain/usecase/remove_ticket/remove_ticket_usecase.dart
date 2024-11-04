import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/tickets/domain/usecase/remove_ticket/param/remove_ticket_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import '../../entities/remove_ticket/remove_ticket_entities.dart';
import '../../repository/tickets_repository.dart';

@injectable
class RemoveTicketUseCase extends UseCase<RemoveTicketEntities, RemoveTicketParam> {
  final TicketsRepository ticketsRepository;
  RemoveTicketUseCase(this.ticketsRepository);

  @override
  Future<Either<Failure, RemoveTicketEntities>> call(RemoveTicketParam params) async {
    return await ticketsRepository.removeTicket(param: params);
  }
}
