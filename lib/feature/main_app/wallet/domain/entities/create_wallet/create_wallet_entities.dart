import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:ios_samx/feature/main_app/wallet/domain/entities/create_wallet/create_wallet_response_date/create_wallet_response_data.dart';
import 'package:equatable/equatable.dart';

class CreateWalletEntities extends Equatable {
  final DioResponse dioResponse;
  late final CreateWalletResponseData createWalletResponseData;

  CreateWalletEntities(this.dioResponse) {
    createWalletResponseData = CreateWalletResponseData.fromJson(dioResponse.data);
  }

  @override
  List<Object?> get props => [];
}
