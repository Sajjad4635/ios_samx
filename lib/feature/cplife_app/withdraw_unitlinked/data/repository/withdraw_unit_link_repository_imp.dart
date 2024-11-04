import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/data/data_source/withdraw_unit_link_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/entities/withdraw_unitlinked/withdraw_unitlinked_entities.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/repository/withdraw_unit_linked_repository.dart';
import 'package:ios_samx/feature/cplife_app/withdraw_unitlinked/domain/usecases/withdraw_unit_link_usecase/param/withdraw_unit_linked_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WithdrawUnitLinkedRepository)
class WithdrawUnitLinkedRepositoryImp extends WithdrawUnitLinkedRepository {
  final WithdrawUnitLinkedRemoteDataSource withdrawUnitLinkedRemoteDataSource;

  WithdrawUnitLinkedRepositoryImp(
      {required this.withdrawUnitLinkedRemoteDataSource});

  @override
  Future<Either<Failure, CreateWithdrawUnitLinkedEntities>>
      createWithdrawUnitlinked(
          {required CreateWithdrawUnitLinkedParam param}) async {
    try {
      final CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities =
          await withdrawUnitLinkedRemoteDataSource.createWithdrawUnitLinked(
              param: param);
      return Right(createWithdrawUnitLinkedEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
