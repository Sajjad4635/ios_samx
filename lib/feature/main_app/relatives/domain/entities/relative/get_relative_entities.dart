import 'package:ios_samx/core/dio/dio_response_cp.dart';
import 'package:ios_samx/feature/main_app/relatives/domain/entities/relative/relative_response_data/relative_item_data.dart';
import 'package:equatable/equatable.dart';

class GetRelativeEntities extends Equatable {
  final DioResponseCPLife dioResponseCPLife;
  late final List<RelativeItemData> relativeResponseData = [];

  GetRelativeEntities(this.dioResponseCPLife) {
    for (var element in dioResponseCPLife.data) {
      relativeResponseData.add(RelativeItemData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [dioResponseCPLife, relativeResponseData];
}
