import 'package:either_dart/either.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/login/ticketing_login_response_entity.dart';
import '../usecase/login/params/ticketing_login_params.dart';

abstract class TicketingLoginRepository {
  Future<Either<Failure, TicketingLoginResponseEntity>> ticketingLogin(
      {required TicketingLoginParams params});
}
