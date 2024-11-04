
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_param.g.dart';

@JsonSerializable(createFactory: false)

class AuthenticateParam extends Equatable {
  final String username ;
  final String password ;

  const AuthenticateParam({required this.username, required this.password});

  Map<String, dynamic> toJson() => _$AuthenticateParamToJson(this);

  @override
  List<Object?> get props => [username,password];

}
