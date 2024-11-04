import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

import 'insurances_list_response_data/insurances_list_response_data.dart';

class InsurancesListResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final InsurancesListResponseData insurancesListResponseData;

  InsurancesListResponseEntities(this.dioResponseCPLife) {
    insurancesListResponseData = InsurancesListResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [DioResponseCPLife, insurancesListResponseData];
}
