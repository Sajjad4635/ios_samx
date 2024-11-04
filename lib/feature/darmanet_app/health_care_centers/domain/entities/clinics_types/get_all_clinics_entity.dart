import 'package:equatable/equatable.dart';
import 'get_clinics_types_response_data/get_clinics_types_response_data.dart';

class GetClinicsTypesEntity extends Equatable{

  late final List data ;
  final List<GetClinicsTypesResponseData> clinicTypes = [];


  GetClinicsTypesEntity({required this.data}) {
    for (var element in data){
      clinicTypes.add(GetClinicsTypesResponseData.fromJson(element));
    }
  }

  @override
  List<Object?> get props => [clinicTypes] ;

}