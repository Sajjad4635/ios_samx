import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

part 'remove_card_entities.g.dart';

@JsonSerializable(createToJson: false)
class RemoveCardEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const RemoveCardEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [dioResponseCPLife];
}
