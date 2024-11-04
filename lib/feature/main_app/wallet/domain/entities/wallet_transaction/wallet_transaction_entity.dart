import 'package:equatable/equatable.dart';

import 'entity/wallet_transaction_response_data.dart';

class WalletTransactionEntities extends Equatable {
  final List<WalletTransactionResponseData> walletTransactionResponseData = [];

  WalletTransactionEntities(List data) {
    for (var element in data) {
      walletTransactionResponseData
          .add(WalletTransactionResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [walletTransactionResponseData];
}
