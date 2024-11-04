import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_data.g.dart';

@JsonSerializable(createToJson: false)
class SignUpResponseData extends Equatable {
  final String nationalCode;

  const SignUpResponseData({required this.nationalCode});

  factory SignUpResponseData.fromJson(Map<String, dynamic> json) => _$SignUpResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [nationalCode];
}
