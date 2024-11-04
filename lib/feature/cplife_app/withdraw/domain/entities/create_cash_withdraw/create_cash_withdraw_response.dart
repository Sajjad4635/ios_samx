import 'package:ios_samx/feature/cplife_app/withdraw/domain/entities/create_cash_withdraw/create_cash_withdraw_response_data/create_cash_withdraw_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class CreateCashWithdrawEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final CreateCashWithdrawResponseData createCashWithdrawResponseData;

  CreateCashWithdrawEntities(this.dioResponseCPLife) {
    createCashWithdrawResponseData = CreateCashWithdrawResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [DioResponseCPLife];
}
