import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

@injectable
class WalletWithdrawUseCase implements UseCase<WalletWithdrawEntities, WalletWithDrawParams>   {

 final WalletRepository walletRepository ;
  WalletWithdrawUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletWithdrawEntities>> call(WalletWithDrawParams params) async{
    return await walletRepository.withdraw(params: params);
  }

}