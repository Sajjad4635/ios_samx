import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:equatable/equatable.dart';

import 'wallet_deposit_result_response_data/wallet_deposit_result_response_data.dart';

class WalletDepositResultEntities extends Equatable{

  final DioResponseCPLife dioResponse ;
  late final WalletDepositResultResponseData  responseData;

  WalletDepositResultEntities(this.dioResponse) {
     responseData = WalletDepositResultResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [
    dioResponse ,
    responseData
  ];

}