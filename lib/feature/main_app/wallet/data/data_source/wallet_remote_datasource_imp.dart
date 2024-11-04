import 'package:ios_samx/core/dio/dio_error.dart';
import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/main_app/wallet/data/data_source/wallet_remote_datasource.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_user/create_user_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/send_otp/send_otp_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_deposit_result/wallet_deposit_result_entities.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/payment_token_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_to_wallet/wallet_to_wallet_response_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_transaction/wallet_transaction_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_entity.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_user/params/create_user_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/create_wallet/param/create_wallet_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/deposit_result/params/deposit_result_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/send_otp/params/send_otp_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_code/params/wallet_code_param.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_payment/params/wallet_payment_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_to_wallet/params/wallet_to_wallet_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_transaction/params/wallet_transaction_params.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/usecases/wallet_withdraw/params/wallet_withdraw_params.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/payment_verify/payment_verify_response_entity.dart';
import '../../domain/entities/wallet_balance/wallet_balance_response_entity.dart';
import '../../domain/usecases/payment_verify/params/payment_verify_params.dart';
import '../../domain/usecases/wallet_balance/params/wallet_balance_params.dart';

@LazySingleton(as: WalletRemoteDataSource)
@injectable
class WalletRemoteDataSourceImp implements WalletRemoteDataSource {
  final Dio dio;

  final String baseUrl = FlavorConfig.instance.variables["walletUrl"];

  WalletRemoteDataSourceImp({required this.dio});

  @override
  Future<WalletPaymentResponseEntities> walletPayment(
      {required WalletPaymentParams params}) async {
    String url = "/Payment";
    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponseCPLife dioResponse =
          DioResponseCPLife.fromJson(response.data);
      final WalletPaymentResponseEntities walletPaymentResponseEntities =
          WalletPaymentResponseEntities(dioResponse);
      return walletPaymentResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<PaymentVerifyResponseEntities> paymentVerify(
      {required PaymentVerifyParams params}) async {
    String url = "/Verify";
    try {
      final Response response = await dio.post(url,
          options: Options(
            headers: {
              'apiKey': 'EXk9tLiBKQRyHeVDv3Cc ',
              'mobile': '09907715207',
              'Content-Type': 'application/json'
            },
          ));
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final PaymentVerifyResponseEntities entities =
          PaymentVerifyResponseEntities(dioResponse: dioResponse);
      return entities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<WalletBalanceResponseEntities> walletBalance(
      {required WalletBalanceParams params}) async {
    String url = "$baseUrl/Wallets/Balance";

    try {
      final Response response = await dio.post(
        url,
        data: params.toJson(),
      );

      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final WalletBalanceResponseEntities entities =
          WalletBalanceResponseEntities(dioResponse: dioResponse);
      return entities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<CreateUserEntities> createUser(
      {required CreateUserParam params}) async {
    try {
      final Response response = await dio.post(
        "$baseUrl/Users/Create",
        data: params.toJson(),
      );
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final CreateUserEntities entities =
          CreateUserEntities(dioResponse: dioResponse);
      return entities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<WalletToWalletResponseEntities> walletToWallet(
      {required WalletToWalletParams params}) async {
    String url = "$baseUrl/Wallets/Transfer/WalletToWallet";
    try {
      final Response response = await dio.post(url, data: params.toJson());
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final WalletToWalletResponseEntities entities =
          WalletToWalletResponseEntities(dioResponse: dioResponse);
      return entities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<CreateWalletEntities> createWallet(
      {required CreateWalletParam param}) async {
    try {
      final Response response = await dio.post(
        "$baseUrl/Wallets/Create",
        data: param.toJson(),
      );
      final DioResponse dioResponse = DioResponse.fromJson(response.data);
      final CreateWalletEntities entities = CreateWalletEntities(dioResponse);
      return entities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<WalletTransactionEntities> walletTransaction(
      {required WalletTransactionParams params}) async {
    String url = "$baseUrl/Transactions/GetAllByNationalCode";
    try {
      final response = await dio.get("$url/${params.nationalCode}");
      final WalletTransactionEntities walletTransactionEntities =
          WalletTransactionEntities(response.data);
      return walletTransactionEntities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<WalletDepositResultEntities> depositResult(
      {required DepositResultParam param}) async {
    String url = "/Payment/${param.transactionId}";
    try {
      final response = await dio.get(url);
      final WalletDepositResultEntities depositResultEntities =
          WalletDepositResultEntities(
              DioResponseCPLife.fromJson(response.data));
      return depositResultEntities;
    } on DioError catch (ex) {
      throw handleDioErrorCP(ex);
    }
  }

  @override
  Future<WalletCodeEntities> walletCode(
      {required WalletCodeParams params}) async {
    String url = "$baseUrl/Wallets/WalletCode";
    try {
      final response = await dio.get("$url/${params.nationalID}");
      final WalletCodeEntities walletCodeEntities =
          WalletCodeEntities(DioResponse.fromJson(response.data));
      return walletCodeEntities;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<WalletWithdrawEntities> withdraw(
      {required WalletWithDrawParams params}) async {
    String url = "$baseUrl/Wallets/Transfer/WalletToDeposit";

    try {
      final response = await dio.post(url, data: params.toJson());
      final WalletWithdrawEntities entity =
          WalletWithdrawEntities(DioResponse.fromJson(response.data));
      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }

  @override
  Future<SendOtpResponseEntities> sendOtp(
      {required SendOtpParams params}) async {
    String url = "$baseUrl/Otp/GenerateOtp";
    final SendOtpResponseEntities entity;

    try {
      final response = await dio.post(url, data: params.toJson());
      // final SendOtpResponseEntities entity = SendOtpResponseEntities(dioResponse: DioResponse.fromJson(response.data));
      if (response.statusCode == 200) {
        entity = SendOtpResponseEntities(
            dioResponse: DioResponse(200, const [], response.data));
      } else {
        entity = SendOtpResponseEntities(
            dioResponse:
                DioResponse(response.statusCode ?? 400, const [], response.data));
      }
      return entity;
    } on DioError catch (ex) {
      throw handleDioError(ex);
    }
  }
}
