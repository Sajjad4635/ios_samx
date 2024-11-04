import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_samx.dart';

@JsonSerializable(createToJson: false)


class UpdatePassportEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;

  const UpdatePassportEntities({required this.dioResponseSamX});

  @override

  List<Object?> get props => throw UnimplementedError();

}