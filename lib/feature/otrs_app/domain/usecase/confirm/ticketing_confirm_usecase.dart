import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/confirm/ticketing_confirm_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_confirm_repository.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';

@injectable
class TicketingConfirmUsecase extends UseCase<TicketingConfirmResponseEntity, TicketingConfirmParams>{
  
  TicketingConfirmRepository repository ;
  TicketingConfirmUsecase(this.repository);

  @override
  Future<Either<Failure, TicketingConfirmResponseEntity>> call(TicketingConfirmParams params) async {

    return await repository.confirmTicket(params: params)   ;

  }

  


}