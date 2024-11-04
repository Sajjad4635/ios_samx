import 'package:ios_samx/feature/darmanet_app/cost_tracking/domain/entities/get_person_family_list/records/family_records.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'get_person_family_list_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetPersonFamilyListEntities extends Equatable {
  @JsonKey(name: "Total")
  final int total;
  @JsonKey(name: "Records")
  final List<FamilyRecords> familyRecords;
  @JsonKey(name: "Errors")
  final String? errors;
  @JsonKey(name: "SumResults")
  final List? sumResults;
  final bool succeed;

  const GetPersonFamilyListEntities({
    required this.errors,
    required this.familyRecords,
    required this.succeed,
    required this.sumResults,
    required this.total,
  });

  factory GetPersonFamilyListEntities.fromJson(Map<String, dynamic> json) =>
      _$GetPersonFamilyListEntitiesFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [errors, familyRecords, total, sumResults, succeed];
}
