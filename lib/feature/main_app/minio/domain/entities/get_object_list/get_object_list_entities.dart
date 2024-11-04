import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_samx.dart';
import 'get_object_list_response_data/get_object_list_response_data.dart';

class GetObjectListEntities extends Equatable {
  final DioResponseSamX dioResponseSamX ;

  late final List<GetObjectListResponseData> objects;

  GetObjectListEntities(this.dioResponseSamX) {
    objects = <GetObjectListResponseData>[];
    dioResponseSamX.data!.forEach((v) {
      objects.add(GetObjectListResponseData.fromJson(v));
    });
  }

  @override
  List<Object?> get props => [objects];
}
