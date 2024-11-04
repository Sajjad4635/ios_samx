import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'unit_price_data.g.dart';

@JsonSerializable(createToJson: false)
class UnitPriceData extends Equatable {
  final String id;
  final double amount;
  final String date;
  final String submittedDate;
  final String submittedUser;

  const UnitPriceData({
    required this.id,
    required this.amount,
    required this.date,
    required this.submittedDate,
    required this.submittedUser,
  });

  factory UnitPriceData.fromJson(Map<String, dynamic> json) => _$UnitPriceDataFromJson(json); 

  @override
  List<Object?> get props => [
        id,
        amount,
        date,
        submittedDate,
        submittedUser,
      ];
}
