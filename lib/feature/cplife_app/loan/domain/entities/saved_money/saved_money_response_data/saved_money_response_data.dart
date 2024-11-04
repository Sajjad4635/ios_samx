import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'saved_money_response_data.g.dart';

@JsonSerializable(createToJson: false)
class SavedMoneyResponseData extends Equatable {
  final double savedMoney;

  const SavedMoneyResponseData({required this.savedMoney});

  factory SavedMoneyResponseData.fromJson(Map<String, dynamic> json) => _$SavedMoneyResponseDataFromJson(json); 

  @override
  List<Object?> get props => [savedMoney];
}
