import 'package:equatable/equatable.dart';

import 'get_all_family_for_all_contract_response_data/get_all_family_for_all_contract_response_data.dart';

// ignore: must_be_immutable
class GetAllFamilyForAllContractEntities extends Equatable {

  late List data;
  List<GetAllFamilyForAllContractResponseData> getAllFamilyForAllContractResponseData = [];

  GetAllFamilyForAllContractEntities(this.data) {
    for (var element in data) {
      getAllFamilyForAllContractResponseData.add(GetAllFamilyForAllContractResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [data];
}
