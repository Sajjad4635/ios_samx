import 'package:ios_samx/core/dio/dio_response.dart';
import 'package:equatable/equatable.dart';

class VoucherReportEntities extends Equatable {
  final DioResponse dioResponse;
  final String contentDisposition;

  const VoucherReportEntities({required this.dioResponse, required  this.contentDisposition});

  @override
  List<Object?> get props => [dioResponse, contentDisposition];
}