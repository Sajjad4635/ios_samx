import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative_list_response_data.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../core/dio/dio_response_cp.dart';



class RelativeListEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final RelativeListResponseData relativeListResponseData;

  RelativeListEntities(this.dioResponseCPLife) {
    relativeListResponseData = RelativeListResponseData.fromJson(dioResponseCPLife.data);
  }

  @override
  List<Object?> get props => [dioResponseCPLife, relativeListResponseData];
}
