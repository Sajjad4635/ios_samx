import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';

@JsonSerializable(createToJson: false)
class DeleteRelativeEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const DeleteRelativeEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [
    dioResponseCPLife,
  ];
}
