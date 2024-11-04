import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_upper_18_params.g.dart';

@JsonSerializable(createFactory: false)

class RegisterUpper18Params extends Equatable {
  final String PhoneNumber;
  final String NationalCode;
  final String BirthDate;

  const RegisterUpper18Params(
      {required this.PhoneNumber,
        required this.NationalCode,
        required this.BirthDate

      });

  Map<String, dynamic> toJson() => _$RegisterUpper18ParamsToJson(this);

  @override
  List<Object?> get props => [PhoneNumber, NationalCode ,BirthDate ];
}
