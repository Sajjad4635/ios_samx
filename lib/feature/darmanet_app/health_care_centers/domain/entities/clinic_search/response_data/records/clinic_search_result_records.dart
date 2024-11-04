import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clinic_search_result_records.g.dart';

@JsonSerializable(createToJson: false)
class ClinicSearchResultRecord extends Equatable {

  @JsonKey(name: 'Name')
  final String name ;

  @JsonKey(name: 'ClinicTypeName')
  final String clinicTypeName ;

  @JsonKey(name: 'Code')
  final double code;

  @JsonKey(name: 'ProvinceName')
  final String? provinceName;

  @JsonKey(name: 'CityName')
  final String  cityName;

  @JsonKey(name: 'Phone')
  final String phone;

  @JsonKey(name: 'Address')
  final String address;

  @JsonKey(name: 'NameWithCity')
  final String nameWithCity;

  @JsonKey(name: 'Id')
  final String id ;

  @JsonKey(name: 'ClinicIssueType')
  final int clinicIssueType;

  @JsonKey(name: 'ClinicFinancialType')
  final int clinicFinancialType;

  @JsonKey(name: 'Fax')
  final String fax;


  const ClinicSearchResultRecord({
    required this.name,
    required this.clinicTypeName,
    required this.code,
    required this.provinceName,
    required this.cityName,
    required this.phone,
    required this.address,
    required this.nameWithCity,
    required this.id,
    required this.clinicIssueType,
    required this.clinicFinancialType,
    required this.fax
  });

  factory  ClinicSearchResultRecord.fromJson(Map<String, dynamic> json) => _$ClinicSearchResultRecordFromJson(json) ;

  @override
  List<Object?> get props => [
    name,
    clinicTypeName,
    code,
    provinceName,
    cityName,
    phone,
    address,
    nameWithCity,
    id,
    clinicIssueType,
    clinicFinancialType,
    fax
  ];

}