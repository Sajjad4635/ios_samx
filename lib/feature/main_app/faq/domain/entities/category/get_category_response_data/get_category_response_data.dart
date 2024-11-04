import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_category_response_data.g.dart';

@JsonSerializable(createToJson: false)
class FaqCategoryResponseData extends Equatable {
  final int  id;
  final String  name;
  final String  nameFa;
  final bool  isActive;
  final int  order;
  final String? icon;

  const FaqCategoryResponseData(
      {required this.id, required  this.name, required  this.nameFa, required this.isActive, required this.order, this.icon});

  factory FaqCategoryResponseData.fromJson(Map<String, dynamic> json) => _$FaqCategoryResponseDataFromJson(json);

  @override
  List<Object?> get props => [id, name, nameFa, isActive, order, icon];
}
