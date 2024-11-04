
import 'package:ios_samx/feature/main_app/wallet/domain/entities/wallet_withdraw/wallet_withdraw_response_data/WalletWithdrawResponseData.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response.dart';

class WalletWithdrawEntities extends Equatable {
  final DioResponse dioResponse ;
  late final WalletWithdrawResponseData responseData ;


    WalletWithdrawEntities( this.dioResponse ) {
      responseData = WalletWithdrawResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [
    responseData
  ];




}