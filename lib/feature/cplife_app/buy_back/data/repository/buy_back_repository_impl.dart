import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/data/data_source/buy_back_remote_data_source.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/register_buy_back/register_buy_back_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/repository/buy_back_repository.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/params/register_buy_back_params.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/params/validate_buy_back_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BuyBackRepository)
class BuyBackRepositoryImpl extends BuyBackRepository {
  final BuyBackRemoteDataSource buyBackRemoteDataSource;

  BuyBackRepositoryImpl({required this.buyBackRemoteDataSource});



  @override
  Future<Either<Failure, RegisterBuyBackResponseEntities>> registerBuyBack(
      {required RegisterBuyBackParams param}) async {
    try {
      final registerBuyBackResponseEntities = await buyBackRemoteDataSource.registerBuyBack(param: param);
      return Right(registerBuyBackResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ValidateBuyBacksResponseEntities>> validateBuyBack(
      {required ValidateBuyBackParams param}) async {
    try {
      final validateBuyBacksResponseEntities = await buyBackRemoteDataSource.validateBuyBack(param: param);
      return Right(validateBuyBacksResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}