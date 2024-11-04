import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/send_otp/send_otp_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/payment_token_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/wallet_transaction_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/repository/wallet_repository.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:ios_samx/core/errors/exceptions/server_exception.dart';
import 'package:ios_samx/core/errors/failures/failure.dart';
import 'package:ios_samx/core/errors/failures/server_failure.dart';

import '../../domain/entities/payment_verify/payment_verify_response_entity.dart';
import '../../domain/entities/wallet_balance/wallet_balance_response_entity.dart';
import '../../domain/usecases/payment_verify/params/payment_verify_params.dart';
import '../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';
import '../data_source/wallet_remote_datasource.dart';

@LazySingleton(as: WalletRepository)
class WalletRepositoryImp extends WalletRepository {
  final WalletRemoteDataSource walletRemoteDataSource;

  WalletRepositoryImp({required this.walletRemoteDataSource});

  @override
  Future<Either<Failure, WalletPaymentResponseEntities>> walletPayment({required WalletPaymentParams params}) async {
    try {
      final WalletPaymentResponseEntities walletPaymentResponseEntities =
          await walletRemoteDataSource.walletPayment(params: params);
      return Right(walletPaymentResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PaymentVerifyResponseEntities>> paymentVerify({required PaymentVerifyParams params}) async {
    try {
      final PaymentVerifyResponseEntities paymentVerifyResponseEntities =
          await walletRemoteDataSource.paymentVerify(params: params);
      return Right(paymentVerifyResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletToWalletResponseEntities>> walletToWallet({required WalletToWalletParams params}) async {
    try {
      final WalletToWalletResponseEntities walletResponseEntities =
          await walletRemoteDataSource.walletToWallet(params: params);
      return Right(walletResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletBalanceResponseEntities>> walletBalance({required WalletBalanceParams params}) async {
    try {
      final WalletBalanceResponseEntities walletBalanceTypeResponseEntities =
          await walletRemoteDataSource.walletBalance(params: params);
      return Right(walletBalanceTypeResponseEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletTransactionEntities>> walletTransaction(
      {required WalletTransactionParams params}) async {
    try {
      final WalletTransactionEntities walletTransactionEntities =
          await walletRemoteDataSource.walletTransaction(params: params);
      return Right(walletTransactionEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateWalletEntities>> createWallet({required CreateWalletParam param}) async {
    try {
      final CreateWalletEntities createWalletEntities = await walletRemoteDataSource.createWallet(param: param);
      return Right(createWalletEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateUserEntities>> createUser({required CreateUserParam param}) async {
    try {
      final CreateUserEntities createUserEntities = await walletRemoteDataSource.createUser(params: param);
      return Right(createUserEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletDepositResultEntities>> depositResult({required DepositResultParam param}) async {
    try {
      final WalletDepositResultEntities depositResultEntities =
          await walletRemoteDataSource.depositResult(param: param);
      return Right(depositResultEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletCodeEntities>> walletCode({required WalletCodeParams param}) async {
    try {
      final WalletCodeEntities walletCodeEntities = await walletRemoteDataSource.walletCode(params: param);
      return Right(walletCodeEntities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WalletWithdrawEntities>> withdraw({required WalletWithDrawParams params}) async{
    try{
      final WalletWithdrawEntities walletWithdrawEntity = await walletRemoteDataSource.withdraw(params: params);
      return Right(walletWithdrawEntity);

    }on ServerException{
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, SendOtpResponseEntities>> sendOtp({required SendOtpParams params}) async {
    try{
      final SendOtpResponseEntities sendOtpResponseEntities = await walletRemoteDataSource.sendOtp(params: params);
      return Right(sendOtpResponseEntities);

    }on ServerException{
      return Left(ServerFailure());
    }

  }
}
