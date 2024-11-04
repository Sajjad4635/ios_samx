import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/create_deposit/create_deposit_response_entities.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/unit_price/unit_price_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/create_deposit/param/create_deposit_param.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:either_dart/either.dart';

abstract class DepositUnitLinkRepository {
  Future<Either<Failure, TransactionStatusResponseEntity>> getTransactionStatus(
      {required TransactionStatusParam param});

  Future<Either<Failure, UnitPriceResponseEntity>> getUnitPrice({required NoParams noParams});

  Future<Either<Failure, CreateDepositResponseEntities>> createDeposit({required CreateDepositParam param});
}
