import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_clinic_search_result_params.g.dart';

@JsonSerializable(createFactory: false)
class GetClinicSearchResultParams extends Equatable {

  @JsonKey(name: 'Name')
  final String name ;

  @JsonKey(name: 'ClinicTypeId')
  final String clinicTypeId;

  @JsonKey(name: 'CityId')
  final String cityId;

  @JsonKey(name: 'Deactive')
  final bool deactive ;


  @JsonKey(name: 'Offset')
  final int offset;

  @JsonKey(name: 'Limit')
  final int limit ;

  @JsonKey(name: 'SumFieldName')
  final String sumFieldName;

  @JsonKey(name: 'SortField')
  final String sortField ;

  @JsonKey(name: 'SortDir')
  final String sortDir;


  const GetClinicSearchResultParams({
      required this.name,
      required this.clinicTypeId,
      required this.cityId,
      required this.deactive,
      required this.offset,
      required this.limit,
      required this.sumFieldName,
      required this.sortField,
      required this.sortDir
});

   Map<String, dynamic> toJson() => _$GetClinicSearchResultParamsToJson(this);

  @override
  List<Object?> get props =>  [
    name,
    clinicTypeId,
    cityId,
    deactive,
    offset,
    limit,
    sumFieldName,
    sortField,
    sortDir
  ];
}
