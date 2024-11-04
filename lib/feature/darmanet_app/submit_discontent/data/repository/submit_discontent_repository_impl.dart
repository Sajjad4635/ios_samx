import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entity/submit_discontent.dart';
import '../../domain/repository/submit_discontent_repository.dart';
import '../../domain/usecase/params/submit_discontent_params.dart';
import '../data_source/submit_discontent_remote_data_source.dart';

@LazySingleton(as: SubmitDiscontentRepository)
@injectable
class SubmitDiscontentRepositoryImpl implements SubmitDiscontentRepository{

  SubmitDiscontentRemoteDataSource remoteDataSource ;


  SubmitDiscontentRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SubmitDiscontentEntity>> submitDiscontent({required SubmitDiscontentParams params}) async{

    try{
     final submitDiscontentEntity = await remoteDataSource.submitDiscontent(params: params);
     return Right(submitDiscontentEntity );

    }on ServerException {
      return Left(ServerFailure());
    }


  }

}