import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_buy_back_response_data.g.dart';

@JsonSerializable(createToJson: false)
class RegisterBuyBackResponseData extends Equatable {
  final String message;

  const RegisterBuyBackResponseData({required this.message});

  factory RegisterBuyBackResponseData.fromJson(Map<String, dynamic> json) => _$RegisterBuyBackResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [message];
}
