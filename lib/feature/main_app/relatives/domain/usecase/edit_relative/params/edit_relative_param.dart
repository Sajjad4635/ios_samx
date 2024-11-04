import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_relative_param.g.dart';

@JsonSerializable(createFactory: false)
class EditRelativeParam extends Equatable {
  final String id;
  final String relationId;
  final String nationalCode;

  const EditRelativeParam(
      {required this.id,
        required this.relationId,
        required this.nationalCode});

  Map<String, dynamic> toJson() => _$EditRelativeParamToJson(this);

  @override
  List<Object?> get props => [id, relationId ,nationalCode];
}
