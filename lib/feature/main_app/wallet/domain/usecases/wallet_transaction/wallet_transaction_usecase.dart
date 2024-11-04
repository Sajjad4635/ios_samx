import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/wallet_transaction/wallet_transaction_entity.dart';
import '../../repository/wallet_repository.dart';

@injectable
class WalletTransactionUseCase implements UseCase<WalletTransactionEntities , WalletTransactionParams> {
  final WalletRepository walletRepository;
  WalletTransactionUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletTransactionEntities>> call(WalletTransactionParams params) async{
    return await walletRepository.walletTransaction(params: params);
  }



}
