import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';


class ObjectDownloadEntities extends Equatable {
  final DioResponseSamX dioResponseSamX ;
  final String contentDisposition;

  const ObjectDownloadEntities(
      {required this.dioResponseSamX, required this.contentDisposition});

  @override
  List<Object?> get props => [dioResponseSamX, contentDisposition];
}
