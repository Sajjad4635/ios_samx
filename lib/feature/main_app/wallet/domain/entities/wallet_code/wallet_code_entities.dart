import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_code/wallet_code_response_data/wallet_code_response_data.dart';
import 'package:equatable/equatable.dart';

class WalletCodeEntities extends Equatable {
  final DioResponse dioResponse;
  late final WalletCodeResponseData walletCodeResponseData;

  WalletCodeEntities(this.dioResponse) {
    walletCodeResponseData = WalletCodeResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [dioResponse, walletCodeResponseData];
}
