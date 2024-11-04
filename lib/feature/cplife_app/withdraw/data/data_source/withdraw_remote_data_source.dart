
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_cash_withdraw/create_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_settlement_withdraw/create_settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/validate_cash_withdraw/validate_cash_withdraw_response.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_cash_withdraw/param/create_cash_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/create_settlement_withdraw/params/create_settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/settlement_withdraw/params/settlement_withdraw_param.dart';
import 'package:ios_samx/feature/cplife_app/withdraw/domain/usecase/validate_cash_withdraw/params/validate_cash_withdraw_param.dart';

abstract class WithdrawRemoteDataSource {
  Future<ValidateCashWithdrawEntities> validateCashWithdraw({required ValidateCashWithdrawParam param});
  Future<SettlementWithdrawResponseEntities> settlementWithdraw({required SettlementWithdrawParam param});
  Future<CreateSettlementWithdrawEntities> createSettlementWithdraw({required CreateSettlementWithdrawParam param});
  Future<CreateCashWithdrawEntities> createCashWithdraw({required CreateCashWithdrawParam param});
}