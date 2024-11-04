import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_confirm_repository.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/ticketing_confirm_ticket_params.dart';

import '../../../../core/errors/exceptions/server_exception.dart';
import '../../../../core/errors/failures/failure.dart';
import '../../../../core/errors/failures/server_failure.dart';
import '../../domain/entity/confirm/ticketing_confirm_response_entity.dart';
import '../data_source/otrs_data_source.dart';


@LazySingleton(as: TicketingConfirmRepository)
@injectable
class TicketingConfirmRepositoryImpl implements TicketingConfirmRepository {

  OtrsRemoteDataSource remoteDataSource ;
  TicketingConfirmRepositoryImpl({required this.remoteDataSource});
 
  @override
  Future<Either<Failure, TicketingConfirmResponseEntity>> confirmTicket(
    {required TicketingConfirmParams params}) async{

        try{
          final ticketConfirmResponseEntity  = await remoteDataSource.sendNewTicket(params: params);
          return Right(ticketConfirmResponseEntity);

        }on ServerException {
          return Left(ServerFailure());
        }


  } 
}