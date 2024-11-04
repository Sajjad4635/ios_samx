
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions/server_exception.dart';
import '../../../../core/errors/failures/failure.dart';
import '../../../../core/errors/failures/server_failure.dart';
import '../../domain/entity/info/ticket_info_response_entity.dart';
import '../../domain/repository/ticketing_info_repository.dart';
import '../../domain/usecase/info/params/ticketing_info_params.dart';

import '../data_source/otrs_data_source.dart';

@LazySingleton(as: TicketingInfoRepository)
class TicketingInfoRepositoryImpl implements TicketingInfoRepository {

  OtrsRemoteDataSource remoteDataSource ;
  TicketingInfoRepositoryImpl({required this.remoteDataSource});
 
   @override  
  Future<Either<Failure, TicketingInfoResponseEntity>> getInfoTicket(
      {required TicketingInfoParams params}) async {
        try{
          final ticketInfoResponseEntity  = await remoteDataSource.getInfoTicket(params: params);
          return Right(ticketInfoResponseEntity);

        }on ServerException {
          return Left(ServerFailure());
        }
  }

}
