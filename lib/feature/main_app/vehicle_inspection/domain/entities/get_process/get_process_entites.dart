import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_lenz.dart';
import 'get_process_response_data/get_process_response_data.dart';

@JsonSerializable(createToJson: false)
class GetProcessEntities extends Equatable {
  final DioResponseLenz dioResponseLenz;
  late final List<GetProcessResponseData> getProcessResponseData = [];

  GetProcessEntities(this.dioResponseLenz) {
    for (var element in dioResponseLenz.data) {
      getProcessResponseData.add(GetProcessResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [dioResponseLenz, getProcessResponseData];
}
