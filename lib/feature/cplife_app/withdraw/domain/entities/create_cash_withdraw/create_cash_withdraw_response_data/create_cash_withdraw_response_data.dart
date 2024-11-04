import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cash_withdraw_response_data.g.dart';

@JsonSerializable()
class CreateCashWithdrawResponseData extends Equatable {
  final String message;

  const CreateCashWithdrawResponseData({required this.message});

  factory CreateCashWithdrawResponseData.fromJson(Map<String, dynamic> json) => _$CreateCashWithdrawResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [message];
}
