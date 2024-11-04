
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/payment_verify/params/payment_verify_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';

import '../../entities/payment_verify/payment_verify_response_entity.dart';
import '../../repository/wallet_repository.dart';

@injectable
class PaymentVerifyUseCase implements UseCase<PaymentVerifyResponseEntities, PaymentVerifyParams>{

  final WalletRepository walletRepository;
  PaymentVerifyUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, PaymentVerifyResponseEntities>> call(PaymentVerifyParams params) async {
    return await walletRepository.paymentVerify(params: params);
  }


}