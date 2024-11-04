import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_samx.dart';


class ObjectUploadEntities extends Equatable {
  final DioResponseSamX dioResponseSamX ;

  const ObjectUploadEntities({required this.dioResponseSamX});

  @override
  List<Object?> get props => [dioResponseSamX];
}
