import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/login/ticketing_login_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_login_repository.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/login/params/ticketing_login_params.dart';

@injectable
class TicketingLoginUsecase implements UseCase<TicketingLoginResponseEntity, TicketingLoginParams> {
  TicketingLoginRepository ticketingLoginRepository;

  TicketingLoginUsecase(this.ticketingLoginRepository);

  @override
  Future<Either<Failure, TicketingLoginResponseEntity>> call(
      TicketingLoginParams params) async {
    return await ticketingLoginRepository.ticketingLogin(params: params);
  }
}
