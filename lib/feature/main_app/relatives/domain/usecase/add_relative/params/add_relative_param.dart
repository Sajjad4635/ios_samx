import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_relative_param.g.dart';

@JsonSerializable(createFactory: false)
class AddRelativeParam extends Equatable {
  final String relativeId;
  final String relativeNationalCode;
  final String nationalCode;

  const AddRelativeParam(
      {required this.relativeId,
      required this.relativeNationalCode,
      required this.nationalCode});

  Map<String, dynamic> toJson() => _$AddRelativeParamToJson(this);

  @override
  List<Object?> get props => [relativeId, relativeNationalCode, nationalCode];
}
