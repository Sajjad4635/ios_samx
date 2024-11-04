import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_lenz.dart';
import 'expertise_status_response_data/expertise_status_response_data.dart';

@JsonSerializable(createToJson: false)
class ExpertiseStatusEntities extends Equatable {
  final DioResponseLenz dioResponseLenz;
  late final ExpertiseStatusResponseData expertiseStatusResponseData;

  ExpertiseStatusEntities(this.dioResponseLenz) {
    expertiseStatusResponseData =
        ExpertiseStatusResponseData.fromJson(dioResponseLenz.data);
  }

  @override
  List<Object?> get props => [dioResponseLenz, expertiseStatusResponseData];
}
