import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_cp.dart';


class ZipcodeUpdateEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  // late final ZipCodeUpdateResponseData zipCodeUpdateResponseData ;

  const ZipcodeUpdateEntities({required this.dioResponseCPLife});


  // ZipcodeUpdateEntities(this.dioResponseSamX) {
  //   zipCodeUpdateResponseData =
  //       ZipCodeUpdateResponseData.fromJson(dioResponseSamX.data);
  // }


  @override
  List<Object?> get props => [dioResponseCPLife];

}