import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/register_buy_back/register_buy_back_response_data/register_buy_back_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class RegisterBuyBackResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final RegisterBuyBackResponseData registerBuyBackResponseData;

  RegisterBuyBackResponseEntities(this.dioResponseCPLife) {
    registerBuyBackResponseData = RegisterBuyBackResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife];
}
