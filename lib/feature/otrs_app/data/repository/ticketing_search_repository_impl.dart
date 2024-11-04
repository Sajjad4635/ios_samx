import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/otrs_app/domain/entity/search/ticketing_search_response_entity.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/search/params/ticketing_search_params.dart';

import '../../../../core/errors/exceptions/server_exception.dart';
import '../../../../core/errors/failures/server_failure.dart';
import '../../domain/repository/ticketing_search_repository.dart';
import '../data_source/otrs_data_source.dart';

@LazySingleton(as: TicketingSearchRepository)
class TicketingSearchRepositoryImpl implements TicketingSearchRepository {

  OtrsRemoteDataSource remoteDataSource;
  TicketingSearchRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, TicketingSearchResponseEntity>> ticketSearch(
      {required TicketingSearchParams params}) async {
    try {
      final ticketingSearchResponseEntity =
          await remoteDataSource.ticketingSearch(params: params);
      return Right(ticketingSearchResponseEntity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
