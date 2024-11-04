import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'get_score_response_data/get_score_response_data.dart';

part 'get_score_entity.g.dart';

@JsonSerializable(createToJson: false)
class GetScoreEntity extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final GetScoreResponseData responseData;

  GetScoreEntity(this.dioResponseCPLife) {
    responseData = GetScoreResponseData.fromJson(dioResponseCPLife.data!);
  }

  @override
  List<Object?> get props => [responseData, dioResponseCPLife];
}
