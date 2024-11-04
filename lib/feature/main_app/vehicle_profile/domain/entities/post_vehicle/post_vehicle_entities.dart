import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:ios_samx/feature/main_app/vehicle_profile/domain/entities/post_vehicle/post_vehicle_response_data/post_vehicle_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


@JsonSerializable(createToJson: false)
class PostVehicleEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final PostVehicleResponseData postVehicleResponseData;

  PostVehicleEntities(this.dioResponseSamX) {
    postVehicleResponseData =
        PostVehicleResponseData.fromJson(dioResponseSamX.data!);
  }

  @override
  List<Object?> get props => [dioResponseSamX , postVehicleResponseData];
}
