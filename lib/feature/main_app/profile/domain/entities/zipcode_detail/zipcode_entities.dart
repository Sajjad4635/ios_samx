import 'package:ios_samx/feature/main_app/profile/domain/entities/zipcode_detail/zipcode_response_data/zipcode_response_data.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_samx.dart';

part 'zipcode_entities.g.dart';

@JsonSerializable(createToJson: false)
class ZipcodeEntities extends Equatable {
  final DioResponseSamX dioResponseSamX;
  late final ZipcodeResponseData zipcodeResponseData ;


  ZipcodeEntities(this.dioResponseSamX) {
    zipcodeResponseData =
        ZipcodeResponseData.fromJson(dioResponseSamX.data);
  }
  @override
  List<Object?> get props => [dioResponseSamX] ;
}
