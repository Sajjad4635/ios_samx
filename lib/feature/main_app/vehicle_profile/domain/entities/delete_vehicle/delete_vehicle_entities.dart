import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


@JsonSerializable(createToJson: false)
class DeleteVehicleEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;

  const DeleteVehicleEntities({required this.dioResponseSamX});

  @override
  List<Object?> get props => [
        dioResponseSamX,
      ];
}
