import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'destroy_response_data/destroy_response_data.dart';

part 'destroy_entities.g.dart';

@JsonSerializable(createToJson: false)
class DestroyEntities extends Equatable {
  final DestroyResponseData destroyResponseData;

  const DestroyEntities({required this.destroyResponseData});

  @override
  List<Object?> get props => [destroyResponseData];
}
