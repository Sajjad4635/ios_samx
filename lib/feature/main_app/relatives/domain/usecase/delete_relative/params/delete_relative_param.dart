import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_relative_param.g.dart';

@JsonSerializable(createFactory: false)
class DeleteRelativeParam extends Equatable {
  final String relativeId;
  final String nationalCode;

  const DeleteRelativeParam(
      {required this.relativeId,
        required this.nationalCode});

  Map<String, dynamic> toJson() => _$DeleteRelativeParamToJson(this);

  @override
  List<Object?> get props => [relativeId, nationalCode];
}
