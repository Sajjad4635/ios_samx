import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/payment_token_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

@injectable
class WalletPaymentUseCase implements UseCase<WalletPaymentResponseEntities, WalletPaymentParams> {
  final WalletRepository walletRepository;

  WalletPaymentUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, WalletPaymentResponseEntities>> call(WalletPaymentParams params) async {
    return await walletRepository.walletPayment(params: params);
  }
}
