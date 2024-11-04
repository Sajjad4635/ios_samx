import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class WalletCodeUseCase implements UseCase<WalletCodeEntities, WalletCodeParams> {
  final WalletRepository walletRepository;

  WalletCodeUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletCodeEntities>> call(WalletCodeParams param) async {
    return await walletRepository.walletCode(param: param);
  }
}
