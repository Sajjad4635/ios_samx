import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'destroy_param.g.dart';

@JsonSerializable(createFactory: false)
class DestroyParam extends Equatable {
  @JsonKey(name: "Ids")
  final List<String> ids;

  const DestroyParam({required this.ids});

  Map<String, dynamic> toJson() => _$DestroyParamToJson(this);

  @override
  List<Object?> get props => [ids];
}
