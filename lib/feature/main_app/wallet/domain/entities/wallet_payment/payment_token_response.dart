import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_payment/wallet_payment_response_data/wallet_payment_response_data.dart';
import 'package:equatable/equatable.dart';

class WalletPaymentResponseEntities extends Equatable {
  final DioResponseCPLife dioResponse;
  late final WalletPaymentResponseData walletPaymentResponseData;

  WalletPaymentResponseEntities(this.dioResponse) {
    walletPaymentResponseData = WalletPaymentResponseData.fromJson(dioResponse.data!);
  }

  @override
  List<Object?> get props => [];
}
