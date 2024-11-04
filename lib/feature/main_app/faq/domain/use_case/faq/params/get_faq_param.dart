import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_faq_param.g.dart';

@JsonSerializable(createFactory: false)
class FaqParam extends Equatable{

  final int categoryId ;

  const FaqParam({required this.categoryId});

  Map<String, dynamic> toJson() => _$FaqParamToJson(this);

  @override
  List<Object?> get props =>
  [
    categoryId
  ];

}