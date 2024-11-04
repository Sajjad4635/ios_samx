import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_samx.dart';

@JsonSerializable(createToJson: false)
class GetPassportEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;

  const GetPassportEntities({required this.dioResponseSamX});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();



}