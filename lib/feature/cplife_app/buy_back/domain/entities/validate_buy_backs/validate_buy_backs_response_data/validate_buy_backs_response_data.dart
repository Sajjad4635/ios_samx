import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'validate_buy_backs_response_data.g.dart';

@JsonSerializable(createToJson: false)
class ValidateBuyBacksResponseData extends Equatable {
  final int lastLoanDebt;

  const ValidateBuyBacksResponseData({required this.lastLoanDebt});

  factory ValidateBuyBacksResponseData.fromJson(Map<String, dynamic> json) => _$ValidateBuyBacksResponseDataFromJson(json);
  
  @override
  List<Object?> get props => [lastLoanDebt];
}
