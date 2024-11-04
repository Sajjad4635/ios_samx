import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/entities/transaction_status/transaction_status_response_entity.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/repositories/deposit_unit_link_repository.dart';
import 'package:ios_samx/feature/cplife_app/deposit_unit_linked/domain/usecases/transaction_status/param/transaction_status_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionStatusUseCase
    implements UseCase<TransactionStatusResponseEntity, TransactionStatusParam> {
  final DepositUnitLinkRepository repository;

  const TransactionStatusUseCase(this.repository);

  @override
  Future<Either<Failure, TransactionStatusResponseEntity>> call(
      TransactionStatusParam param) async {
    return await repository.getTransactionStatus(param: param);
  }
}