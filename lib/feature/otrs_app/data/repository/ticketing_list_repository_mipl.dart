import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions/server_exception.dart';
import '../../../../core/errors/failures/failure.dart';
import '../../../../core/errors/failures/server_failure.dart';
import '../../domain/entity/list/ticket_list_response_entity.dart'; 
import '../../domain/repository/ticketing_list_repository.dart';
import '../../domain/usecase/list/params/ticketing_list_params.dart';

import '../data_source/otrs_data_source.dart';

@LazySingleton(as: TicketingListRepository)
class TicketingListRepositoryImpl implements TicketingListRepository {

  OtrsRemoteDataSource remoteDataSource;
  TicketingListRepositoryImpl({required this.remoteDataSource});
  
  @override
  Future<Either<Failure, TicketListResponseEntity>> ticketingList({required TicketingListParams params}) async {
  try {
      final ticketListResponseEntity =
          await remoteDataSource.ticketingList(params: params);
      return Right(ticketListResponseEntity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
