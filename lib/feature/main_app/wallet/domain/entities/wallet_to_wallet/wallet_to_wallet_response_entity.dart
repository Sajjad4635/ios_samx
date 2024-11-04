import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:equatable/equatable.dart';

import 'entity/wallet_to_wallet_response_data.dart';

class WalletToWalletResponseEntities extends Equatable {
  final DioResponse dioResponse;
  late final WalletToWalletResponseData walletToWalletResponseData;

  WalletToWalletResponseEntities({required this.dioResponse}) {
    if (dioResponse.data != null) {
      walletToWalletResponseData = WalletToWalletResponseData.fromJson(dioResponse.data);
    }
  }

  @override
  List<Object?> get props => [walletToWalletResponseData];
}
