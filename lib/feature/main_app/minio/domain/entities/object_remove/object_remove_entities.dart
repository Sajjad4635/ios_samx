import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_samx.dart';

class ObjectRemoveEntities extends Equatable {
  final DioResponseSamX dioResponseSamX ;

  const ObjectRemoveEntities({required this.dioResponseSamX});


  @override
  List<Object?> get props => [dioResponseSamX];


}