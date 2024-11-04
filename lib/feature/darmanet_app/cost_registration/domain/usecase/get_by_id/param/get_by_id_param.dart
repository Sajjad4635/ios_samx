import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_by_id_param.g.dart';

@JsonSerializable()
class GetByIdParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;

  const GetByIdParam({
    required this.id,
  });

  Map<String, dynamic> toJson() => _$GetByIdParamToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
