import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/get_all_family_by_main_national_code/response_data/get_family_by_main_national_code_response_data.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class GetAllFamilyByMainNationalCodeEntities extends Equatable {
  late List data;
  List<GetFamilyByMainNationalCodeResponseData> getFamilyByMainNationalCodeResponseData = [];

  GetAllFamilyByMainNationalCodeEntities(this.data) {
    for (var element in data) {
      getFamilyByMainNationalCodeResponseData.add(GetFamilyByMainNationalCodeResponseData.fromJson(element));
    }
  }
  
  @override
  List<Object?> get props => [data];
}
