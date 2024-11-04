import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/add_card/add_card_response_data/add_card_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'add_card_entities.g.dart';

@JsonSerializable(createToJson: false)
class AddCardEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final AddCardResponseData addCardResponseData;

  AddCardEntities(this.dioResponseCPLife) {
    addCardResponseData = AddCardResponseData.fromJson(dioResponseCPLife.data!);
  }


  @override
  List<Object?> get props => [dioResponseCPLife];
}
