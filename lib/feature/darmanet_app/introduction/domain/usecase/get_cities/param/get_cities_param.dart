import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cities_param.g.dart';

@JsonSerializable(createFactory: false)
class GetCitiesParam extends Equatable {
  @JsonKey(name: "Offset")
  final int offset;
  @JsonKey(name: "Limit")
  final int limit;

  const GetCitiesParam({
    required this.limit,
    required this.offset,
  });

  Map<String, dynamic> toJson() => _$GetCitiesParamToJson(this);
  
  @override
  List<Object?> get props => [offset, limit];
}
