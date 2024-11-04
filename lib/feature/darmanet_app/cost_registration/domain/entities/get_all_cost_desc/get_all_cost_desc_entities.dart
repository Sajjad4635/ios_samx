import 'package:ios_samx/feature/darmanet_app/cost_registration/domain/entities/get_all_cost_desc/get_all_cost_desc_response_data/get_all_cost_desc_response_data.dart';
import 'package:equatable/equatable.dart';


// ignore: must_be_immutable
class GetAllCostDescEntities extends Equatable {
  late List data;
  final List<GetAllCostDescResponseData> getAllCostDescResponseData = [];

  GetAllCostDescEntities(this.data) {
    for (var element in data) {
      getAllCostDescResponseData.add(GetAllCostDescResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [data];
}
