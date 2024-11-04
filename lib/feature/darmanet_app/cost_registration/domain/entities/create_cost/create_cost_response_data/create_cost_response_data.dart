import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'cost_item/create_cost_item.dart';

part 'create_cost_response_data.g.dart';

@JsonSerializable(createToJson: false)
class CreateCostResponseData extends Equatable {
  final bool succeed;
  final CostItem costItem;
  final bool edit;
  final String message;
  @JsonKey(name: "TotalCost")
  final int totalCost;

  const CreateCostResponseData({
    required this.succeed,
    required this.costItem,
    required this.edit,
    required this.message,
    required this.totalCost,
  });


  factory CreateCostResponseData.fromJson(Map<String, dynamic> json) => _$CreateCostResponseDataFromJson(json);

  @override
  List<Object?> get props => throw UnimplementedError();
}
