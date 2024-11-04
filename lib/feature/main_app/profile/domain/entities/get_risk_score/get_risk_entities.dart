import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_samx.dart';
import 'get_risk_score_response_data/get_risk_score_response_data.dart';

part 'get_risk_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetRiskScoreEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final GetRiskScoreResponseData getRiskScoreResponseData;

  GetRiskScoreEntities(this.dioResponseSamX) {
    getRiskScoreResponseData =
        GetRiskScoreResponseData.fromJson(dioResponseSamX.data);
  }

  @override
  List<Object?> get props => [dioResponseSamX];
}
