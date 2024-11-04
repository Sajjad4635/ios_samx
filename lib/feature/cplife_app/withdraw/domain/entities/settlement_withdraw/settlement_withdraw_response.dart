import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/settlement_withdraw/settlement_withdraw_response_data/settlement_withdraw_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class SettlementWithdrawResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final List<SettlementWithdrawResponseData> settlementWithdrawResponseData;

  SettlementWithdrawResponseEntities(this.dioResponseCPLife) {
    settlementWithdrawResponseData = [];
    dioResponseCPLife.data!.forEach((v) {
      settlementWithdrawResponseData.add(SettlementWithdrawResponseData.fromJson(v));
    });
  }

  @override
  List<Object?> get props => [DioResponseCPLife, settlementWithdrawResponseData];
}
