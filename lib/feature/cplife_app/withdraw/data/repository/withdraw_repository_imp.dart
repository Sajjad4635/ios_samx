import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/data/data_source/withdraw_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_cash_withdraw/create_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_settlement_withdraw/create_settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/validate_cash_withdraw/validate_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/repository/withdraw_repository.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/param/create_cash_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/params/create_settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/params/settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/params/validate_cash_withdraw_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WithdrawRepository)
class WithdrawRepositoryImpl extends WithdrawRepository {
  final WithdrawRemoteDataSource withdrawRemoteDataSource;

  WithdrawRepositoryImpl({required this.withdrawRemoteDataSource});

  @override
  Future<Either<Failure, ValidateCashWithdrawEntities>> validateCashWithdraw(
      {required ValidateCashWithdrawParam param}) async {
    try {
      final validateCashWithdrawEntities = await withdrawRemoteDataSource.validateCashWithdraw(param: param);
      return Right(validateCashWithdrawEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettlementWithdrawResponseEntities>> settlementWithdraw(
      {required SettlementWithdrawParam param}) async {
    try {
      final settlementWithdrawResponseEntities = await withdrawRemoteDataSource.settlementWithdraw(param: param);
      return Right(settlementWithdrawResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateSettlementWithdrawEntities>> createSettlementWithdraw(
      {required CreateSettlementWithdrawParam param}) async {
    try {
      final createSettlementWithdrawEntities =
          await withdrawRemoteDataSource.createSettlementWithdraw(param: param);
      return Right(createSettlementWithdrawEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateCashWithdrawEntities>> createCashWithdraw(
      {required CreateCashWithdrawParam param}) async {
    try {
      final createCashWithdrawEntities = await withdrawRemoteDataSource.createCashWithdraw(param: param);
      return Right(createCashWithdrawEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}