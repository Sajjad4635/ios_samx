import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_data.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponseData extends Equatable {
  final String phoneNumber;

  const LoginResponseData({required this.phoneNumber});

  factory LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [phoneNumber];
}
