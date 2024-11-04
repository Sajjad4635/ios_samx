import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'update_card_title_entities.g.dart';

@JsonSerializable(createToJson: false)
class UpdateCardTitleEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const UpdateCardTitleEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];
}
