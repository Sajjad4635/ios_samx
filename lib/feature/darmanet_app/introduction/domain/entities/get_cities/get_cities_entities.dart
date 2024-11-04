import 'package:ios_samx/feature/darmanet_app/introduction/domain/entities/get_cities/get_citites_response_data/get_cities_response_data.dart';
import 'package:equatable/equatable.dart';

class GetCitiesEntities extends Equatable {
  late final List data;
  final List<GetCitiesResponseData> getCitiesResponseData = [];

  GetCitiesEntities(this.data) {
    for (var element in data) {
      getCitiesResponseData.add(GetCitiesResponseData.fromJson(element));
    }
  }
  
  @override
  List<Object?> get props => [getCitiesResponseData];
}
