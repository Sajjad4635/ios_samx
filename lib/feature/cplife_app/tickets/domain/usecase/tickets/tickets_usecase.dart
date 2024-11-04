import 'package:ios_samx/feature/cplife_app/tickets/domain/repository/tickets_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

import '../../entities/tickets/tickets_response_entities.dart';

@injectable
class TicketsUseCase extends UseCase<TicketsResponseEntities, NoParams> {
  final TicketsRepository ticketsRepository;
  TicketsUseCase(this.ticketsRepository);

  @override
  Future<Either<Failure, TicketsResponseEntities>> call(NoParams params) async {
    return await ticketsRepository.tickets(params: params);
  }
}
