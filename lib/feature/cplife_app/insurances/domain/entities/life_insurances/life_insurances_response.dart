import 'package:equatable/equatable.dart';
import 'package:ios_samx/core/dio/dio_response_cp.dart';

import 'life_insurances_response_data/life_insurances_response_data.dart';

class LifeInsurancesResponseEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final List<LifeInsurancesResponseData> lifeInsurancesResponseData;

  LifeInsurancesResponseEntities(this.dioResponseCPLife) {
    lifeInsurancesResponseData = <LifeInsurancesResponseData>[];
    dioResponseCPLife.data!.forEach((v) {
      lifeInsurancesResponseData.add(LifeInsurancesResponseData.fromJson(v));
    });
  }

  @override
  List<Object?> get props => [DioResponseCPLife, lifeInsurancesResponseData];
}
