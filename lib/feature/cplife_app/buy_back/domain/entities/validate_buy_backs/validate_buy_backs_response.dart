import 'package:ios_samx/feature/cplife_app/buy_back/domain/entities/validate_buy_backs/validate_buy_backs_response_data/validate_buy_backs_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

class ValidateBuyBacksResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final ValidateBuyBacksResponseData validateBuyBackResponseData;

  ValidateBuyBacksResponseEntities(this.dioResponseCPLife) {
    validateBuyBackResponseData = ValidateBuyBacksResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [DioResponseCPLife, validateBuyBackResponseData];
}
