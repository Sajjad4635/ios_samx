import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/send_otp/send_otp_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/payment_token_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:either_dart/either.dart';
import '../entities/payment_verify/payment_verify_response_entity.dart';
import '../entities/wallet_balance/wallet_balance_response_entity.dart';
import '../entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import '../entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import '../entities/wallet_transaction/wallet_transaction_entity.dart';
import '../usecases/deposit_result/params/deposit_result_params.dart';
import '../usecases/payment_verify/params/payment_verify_params.dart';
import '../usecases/wallet_balance/params/wallet_balance_params.dart';
import '../usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import '../usecases/wallet_transaction/params/wallet_transaction_params.dart';

abstract class WalletRepository {
  Future<Either<Failure, WalletPaymentResponseEntities>> walletPayment({required WalletPaymentParams params});
  Future<Either<Failure, PaymentVerifyResponseEntities>> paymentVerify({required PaymentVerifyParams params});
  Future<Either<Failure, WalletToWalletResponseEntities>> walletToWallet({required WalletToWalletParams params});
  Future<Either<Failure, WalletBalanceResponseEntities>> walletBalance({required WalletBalanceParams params});
  Future<Either<Failure, WalletTransactionEntities>> walletTransaction({required WalletTransactionParams params});
  Future<Either<Failure, CreateUserEntities>> createUser({required CreateUserParam param});
  Future<Either<Failure, CreateWalletEntities>> createWallet({required CreateWalletParam param});
  Future<Either<Failure, WalletDepositResultEntities>> depositResult({required DepositResultParam param});
  Future<Either<Failure, WalletCodeEntities>> walletCode({required WalletCodeParams param});
  Future<Either<Failure, WalletWithdrawEntities>> withdraw({required WalletWithDrawParams params});
  Future<Either<Failure, SendOtpResponseEntities>> sendOtp({required SendOtpParams params});
}


