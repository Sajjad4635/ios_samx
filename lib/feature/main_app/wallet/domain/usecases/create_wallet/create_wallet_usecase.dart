import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateWalletUseCase implements UseCase<CreateWalletEntities, CreateWalletParam> {
  final WalletRepository walletRepository;
  const CreateWalletUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, CreateWalletEntities>> call(CreateWalletParam params) async {
    return await walletRepository.createWallet(param: params);
  }
}
