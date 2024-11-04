import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'card_default_entities.g.dart';

@JsonSerializable(createToJson: false)
class CardDefaultEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const CardDefaultEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];
}
