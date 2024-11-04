import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_all_clinic/get_all_clinic_response_data/get_all_clinic_response_data.dart';
import 'package:equatable/equatable.dart';

class GetAllClinicEntities extends Equatable {
  late final List data;
  final List<GetAllClinicCitiesResponseData> getAliiClinicResponseData = [];

  GetAllClinicEntities(this.data) {
    for (var element in data) {
      getAliiClinicResponseData.add(GetAllClinicCitiesResponseData.fromJson(element));
    }
  }
  @override
  List<Object?> get props => [data];
}
