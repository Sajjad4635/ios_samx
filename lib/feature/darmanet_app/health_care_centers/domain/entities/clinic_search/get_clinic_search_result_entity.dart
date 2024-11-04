 import 'package:ios_samx/feature/darmanet_app/health_care_centers/domain/entities/clinic_search/response_data/records/clinic_search_result_records.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_clinic_search_result_entity.g.dart';

@JsonSerializable(createToJson: false)
class GetClinicSearchResultEntity extends Equatable {

  @JsonKey(name: 'Total')
  final int total ;

  @JsonKey(name: 'Records')
  final List<ClinicSearchResultRecord> records ;

  @JsonKey(name: 'Errors')
  final String? errors ;

  @JsonKey(name: 'SumResults')
  final List? sumResults;

  @JsonKey(name: 'succeed')
  final bool succeed ;

  factory GetClinicSearchResultEntity.fromJson(Map<String, dynamic> json) => _$GetClinicSearchResultEntityFromJson(json);

  const GetClinicSearchResultEntity(
      {
        required this.total,
        required this.records,
        required this.errors,
        required this.sumResults,
        required this.succeed
      });

  @override
  List<Object?> get props => [
    total,
    records,
    errors,
    sumResults,
    succeed,

  ];
}



