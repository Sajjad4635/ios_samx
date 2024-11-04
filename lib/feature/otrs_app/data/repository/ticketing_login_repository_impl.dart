import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';

import '../data_source/otrs_data_source.dart';
import 'package:ios_samx/feature/otrs_app/domain/repository/ticketing_login_repository.dart';

import '../../domain/entity/login/ticketing_login_response_entity.dart';
import '../../domain/usecase/login/params/ticketing_login_params.dart';

@LazySingleton(as: TicketingLoginRepository)
class TicketingLoginRepositoryImpl implements TicketingLoginRepository{

  OtrsRemoteDataSource remoteDataSource ;
  TicketingLoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, TicketingLoginResponseEntity>> ticketingLogin({required TicketingLoginParams params}) async {
    try{

      final ticketingLoginResponceEntity = await remoteDataSource.ticketingLogin(params: params) ;
      return Right(ticketingLoginResponceEntity) ;

    }on ServerException {
      return Left(ServerFailure());
    }
 
  }
  

}