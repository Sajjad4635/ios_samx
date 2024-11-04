
import 'package:ios_samx/core/dio/dio_error_cp.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_cash_withdraw/create_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_settlement_withdraw/create_settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/validate_cash_withdraw/validate_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/param/create_cash_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/params/create_settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/params/settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/params/validate_cash_withdraw_param.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'withdraw_remote_data_source.dart';

@LazySingleton(as: WithdrawRemoteDataSource)
@injectable
class WithdrawDataSourceImp implements WithdrawRemoteDataSource {
  final Dio dio;
  WithdrawDataSourceImp({required this.dio});


  @override
  Future<ValidateCashWithdrawEntities> validateCashWithdraw({required ValidateCashWithdrawParam param}) async {
    String url = "CashWithdraws/validate";
    try {
      final response = await dio.get(
        "$url?policyId=${param.policyId}",
      );
      final ValidateCashWithdrawEntities validateCashWithdrawEntities = ValidateCashWithdrawEntities(
        dioResponseCPLife: DioResponseCPLife.fromJson(response.data),
      );
      return validateCashWithdrawEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<SettlementWithdrawResponseEntities> settlementWithdraw({required SettlementWithdrawParam param}) async {
    String url = "SettlementWithdraws/duePayments";
    try {
      final response = await dio.get(
        "$url/${param.policyId}",
      );
      final SettlementWithdrawResponseEntities settlementWithdrawResponseEntities =
          SettlementWithdrawResponseEntities(DioResponseCPLife.fromJson(response.data!));
      return settlementWithdrawResponseEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<CreateSettlementWithdrawEntities> createSettlementWithdraw(
      {required CreateSettlementWithdrawParam param}) async {
    String url = "SettlementWithdraws";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final CreateSettlementWithdrawEntities createSettlementWithdrawEntities = CreateSettlementWithdrawEntities(
        DioResponseCPLife.fromJson(response.data!),
      );
      return createSettlementWithdrawEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }

  @override
  Future<CreateCashWithdrawEntities> createCashWithdraw({required CreateCashWithdrawParam param}) async {
    String url = "CashWithdraws";
    try {
      final response = await dio.post(
        url,
        data: param.toJson(),
      );
      final CreateCashWithdrawEntities cashWithdrawEntities = CreateCashWithdrawEntities(
        DioResponseCPLife.fromJson(response.data),
      );
      return cashWithdrawEntities;
    } on DioError catch (e) {
      throw handleDioErrorCP(e);
    }
  }
}
