import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_family_by_main_national_code_param.g.dart';

@JsonSerializable(createFactory: false)
class GetAllFamilyByMainNationalCodeParam extends Equatable {
  @JsonKey(name: "MainNationalCode")
  final String mainNationalCode;
  @JsonKey(name: "Offset")
  final int offset;
  @JsonKey(name: "Limit")
  final int limit;

  const GetAllFamilyByMainNationalCodeParam(
      {required this.mainNationalCode, required this.offset, required this.limit});

  Map<String, dynamic> toJson() => _$GetAllFamilyByMainNationalCodeParamToJson(this);
  
  @override
  List<Object?> get props => [mainNationalCode, offset, limit];
}
