import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../../core/dio/dio_response_cp.dart';
import 'get_profile_response_data/get_profile_response_data.dart';

part 'get_profile_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetProfileEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  late final GetProfileResponseData getProfileResponseData;

  GetProfileEntities(this.dioResponseCPLife) {
    getProfileResponseData =  GetProfileResponseData.fromJson(dioResponseCPLife.data);

  }

  @override
  List<Object?> get props => [dioResponseCPLife, getProfileResponseData];
}
