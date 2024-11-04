import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateUserParam extends Equatable {
  final String memberCode;
  final String mobileNumber;
  final String nationalCode;

  const CreateUserParam({
    required this.memberCode,
    required this.mobileNumber,
    required this.nationalCode,
  });

  Map<String, dynamic> toJson() => _$CreateUserParamToJson(this);

  @override
  List<Object?> get props => [memberCode, nationalCode, mobileNumber];
}
