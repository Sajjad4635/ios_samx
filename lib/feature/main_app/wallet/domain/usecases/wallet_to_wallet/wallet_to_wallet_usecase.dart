import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import '../../repository/wallet_repository.dart';

@injectable
class WalletToWalletUseCase
    implements UseCase<WalletToWalletResponseEntities, WalletToWalletParams> {
  final WalletRepository walletRepository;

  WalletToWalletUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletToWalletResponseEntities>> call(
      WalletToWalletParams params) async {
    return await walletRepository.walletToWallet(params: params);
  }
}
