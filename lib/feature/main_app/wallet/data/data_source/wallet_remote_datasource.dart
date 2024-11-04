import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/payment_token_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';

import '../../domain/entities/payment_verify/payment_verify_response_entity.dart';
import '../../domain/entities/send_otp/send_otp_response_entity.dart';
import '../../domain/entities/wallet_balance/wallet_balance_response_entity.dart';
import '../../domain/entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import '../../domain/entities/wallet_transaction/wallet_transaction_entity.dart';
import '../../domain/usecases/payment_verify/params/payment_verify_params.dart';
import '../../domain/usecases/send_otp/params/send_otp_params.dart';
import '../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';

abstract class WalletRemoteDataSource {
  Future<WalletPaymentResponseEntities> walletPayment({required WalletPaymentParams params});
  Future<PaymentVerifyResponseEntities> paymentVerify({required PaymentVerifyParams params});
  Future<WalletToWalletResponseEntities> walletToWallet({required WalletToWalletParams params});
  Future<WalletBalanceResponseEntities> walletBalance({required WalletBalanceParams params});
  Future<WalletTransactionEntities> walletTransaction({required WalletTransactionParams params});
  Future<CreateUserEntities> createUser({required CreateUserParam params});
  Future<CreateWalletEntities> createWallet({required CreateWalletParam param});
  Future<WalletDepositResultEntities> depositResult({required DepositResultParam param});
  Future<WalletCodeEntities> walletCode({required WalletCodeParams params});
  Future<WalletWithdrawEntities> withdraw({required WalletWithDrawParams params});
  Future<SendOtpResponseEntities> sendOtp({required SendOtpParams params});
}
