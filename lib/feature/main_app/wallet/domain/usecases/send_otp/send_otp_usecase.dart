
import 'package:ios_samx/feature/main_app/wallet/domain/entities/send_otp/send_otp_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/usecases/usecase.dart';


@injectable
class SendOtpUseCase implements UseCase<SendOtpResponseEntities, SendOtpParams>{

  final WalletRepository walletRepository;
  SendOtpUseCase({required this.walletRepository});

  @override
  Future<Either<Failure, SendOtpResponseEntities>> call(SendOtpParams params) async {
    return await walletRepository.sendOtp(params: params);
  }


}