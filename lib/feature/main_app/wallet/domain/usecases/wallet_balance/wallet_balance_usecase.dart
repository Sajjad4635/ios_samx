import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/usecases/usecase.dart';
import '../../entities/wallet_balance/wallet_balance_response_entity.dart';
import '../../repository/wallet_repository.dart';

@injectable
class WalletBalanceUseCase implements UseCase<WalletBalanceResponseEntities, WalletBalanceParams> {
  final WalletRepository walletRepository;
  WalletBalanceUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletBalanceResponseEntities>> call(WalletBalanceParams params) async {
    return await walletRepository.walletBalance(params: params);
  }
}
