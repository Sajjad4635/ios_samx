import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class DepositResultUseCase
    implements UseCase<WalletDepositResultEntities, DepositResultParam> {
  final WalletRepository repository;

  DepositResultUseCase({required this.repository});

  @override
  Future<Either<Failure, WalletDepositResultEntities>> call(DepositResultParam params) async {
    return await repository.depositResult(param: params);
  }
}
