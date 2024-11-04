import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/dio/dio_response_lenz.dart';
import 'create_basic_expertise_response_data/create_basic_expertise_response_data.dart';

@JsonSerializable(createToJson: false)
class CreateBasicExpertiseEntities extends Equatable {
  final DioResponseLenz dioResponseLenz;
  late final CreateBasicExpertiseResponseData createBasicExpertiseResponseData;

  CreateBasicExpertiseEntities(this.dioResponseLenz) {
    createBasicExpertiseResponseData =
        CreateBasicExpertiseResponseData.fromJson(dioResponseLenz.data);
  }

  @override
  List<Object?> get props => [dioResponseLenz, createBasicExpertiseResponseData];
}
