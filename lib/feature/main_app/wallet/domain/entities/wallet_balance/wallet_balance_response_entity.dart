import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:equatable/equatable.dart';

import 'entity/wallet_balance_response_data.dart';

class WalletBalanceResponseEntities extends Equatable {
  final DioResponse dioResponse;
  late final WalletBalanceResponseData walletBalanceResponseData;

  WalletBalanceResponseEntities({required this.dioResponse}) {
    walletBalanceResponseData =
        (WalletBalanceResponseData.fromJson(dioResponse.data));
  }

  @override
  List<Object?> get props => [
    walletBalanceResponseData
  ];
}
