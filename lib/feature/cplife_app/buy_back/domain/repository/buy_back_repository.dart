import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/register_buy_back/register_buy_back_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/register_buy_back/params/register_buy_back_params.dart';
import 'package:ios_samx/feature/cplife_app/buy_back/domain/usecase/validate_buy_back/params/validate_buy_back_params.dart';
import 'package:either_dart/either.dart';

abstract class BuyBackRepository {
  Future<Either<Failure, RegisterBuyBackResponseEntities>> registerBuyBack({required RegisterBuyBackParams param});
  Future<Either<Failure, ValidateBuyBacksResponseEntities>> validateBuyBack({required ValidateBuyBackParams param});
}