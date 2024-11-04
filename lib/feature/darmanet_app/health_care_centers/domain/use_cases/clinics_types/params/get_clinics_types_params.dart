import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_clinics_types_params.g.dart';

@JsonSerializable(createFactory: false)
class GetClinicsTypesParams extends Equatable {
  @JsonKey(name: 'SearchType')
  final int searchType;

  @JsonKey(name: 'Offset')
  final int offset;

  @JsonKey(name: 'Limit')
  final int limit;

  const GetClinicsTypesParams(
      {required this.searchType, required this.offset, required this.limit});

  Map<String, dynamic> toJson() => _$GetClinicsTypesParamsToJson(this);

  @override
  List<Object?> get props => [searchType, offset, limit];
}
