import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.g.dart';

@JsonSerializable(createFactory: false)
class LoginParams extends Equatable {
  final String nationalCode;

  const LoginParams({required this.nationalCode});

  Map<String, dynamic> toJson() => _$LoginParamsToJson(this);

  @override
  List<Object?> get props => [nationalCode];
}
