import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../core/dio/dio_response_cp.dart';


part 'get_staff_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetStaffEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;

  const GetStaffEntities({required this.dioResponseCPLife});

  @override
  List<Object?> get props => [DioResponseCPLife];
}
