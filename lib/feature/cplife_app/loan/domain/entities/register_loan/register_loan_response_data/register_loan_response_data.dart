import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_loan_response_data.g.dart';
@JsonSerializable(createToJson: false)
class RegisterLoanResponseData extends Equatable {
  final String message;

  const RegisterLoanResponseData({required this.message});

  factory RegisterLoanResponseData.fromJson(Map<String, dynamic> json) => _$RegisterLoanResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [message];
}
