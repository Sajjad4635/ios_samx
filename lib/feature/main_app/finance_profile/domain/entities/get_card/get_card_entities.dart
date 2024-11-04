import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_response_data/get_card_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'get_card_entities.g.dart';


@JsonSerializable(createToJson: false)
class GetCardEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final GetCardResponseData getCardResponseData;

  GetCardEntities(this.dioResponseCPLife) {
    getCardResponseData = GetCardResponseData.fromJson(dioResponseCPLife.data!);
  }



  @override
  List<Object?> get props => [dioResponseCPLife, getCardResponseData];
}
