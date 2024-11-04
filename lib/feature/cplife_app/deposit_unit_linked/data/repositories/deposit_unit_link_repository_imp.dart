import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/data/data_source/deposit_unit_link_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/repositories/deposit_unit_link_repository.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DepositUnitLinkRepository)
class DepositUnitLinkRepositoryImp extends DepositUnitLinkRepository {
  final DepositUnitLinkRemoteDataSource depositUnitLinkRemoteDataSource;

  DepositUnitLinkRepositoryImp({required this.depositUnitLinkRemoteDataSource});
  
  @override
  Future<Either<Failure, TransactionStatusResponseEntity>> getTransactionStatus({
    required TransactionStatusParam param,
  }) async {
    try {
      final transactionStatusResponseEntity = await depositUnitLinkRemoteDataSource.getTransactionStatus(param: param);
      return Right(transactionStatusResponseEntity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UnitPriceResponseEntity>> getUnitPrice({
    required NoParams noParams,
  }) async {
    try {
      final unitPriceResponseEntity = await depositUnitLinkRemoteDataSource.getUnitPrice(noParams: noParams);
      return Right(unitPriceResponseEntity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateDepositResponseEntities>> createDeposit({required CreateDepositParam param}) async {
    try {
      final CreateDepositResponseEntities createDepositResponseEntities =
          await depositUnitLinkRemoteDataSource.createDeposit(param: param);
      return Right(createDepositResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
