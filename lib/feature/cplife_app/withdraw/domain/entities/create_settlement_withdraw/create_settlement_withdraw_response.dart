import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

import 'create_settlement_withdraw_response_data/create_settlement_withdraw_response_data.dart';

class CreateSettlementWithdrawEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final CreateSettlementWithdrawResponseData createSettlementWithdrawResponseData;

  CreateSettlementWithdrawEntities(this.dioResponseCPLife) {
    createSettlementWithdrawResponseData = CreateSettlementWithdrawResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife];
}
