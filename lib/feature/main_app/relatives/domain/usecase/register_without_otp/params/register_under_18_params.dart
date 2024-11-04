import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_under_18_params.g.dart';

@JsonSerializable(createFactory: false)
class RegisterUnder18Params extends Equatable {
  final String nationalCode;
  final String birthDate;

  const RegisterUnder18Params(
      {
        required this.nationalCode,
        required this.birthDate

      });

  Map<String, dynamic> toJson() => _$RegisterUnder18ParamsToJson(this);

  @override
  List<Object?> get props => [ nationalCode , birthDate];
}
