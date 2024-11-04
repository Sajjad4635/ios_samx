import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_params.g.dart';

@JsonSerializable(createFactory: false)
class SignUpParams extends Equatable {
  final String nationalCode;
  final String phoneNumber;

  const SignUpParams({required this.nationalCode, required this.phoneNumber});

  Map<String, dynamic> toJson() => _$SignUpParamsToJson(this);
  
  @override
  List<Object?> get props => [nationalCode, phoneNumber];
}
