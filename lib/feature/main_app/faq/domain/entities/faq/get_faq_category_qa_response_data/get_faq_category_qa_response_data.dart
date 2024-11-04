import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../category/get_category_response_data/get_category_response_data.dart';
part 'get_faq_category_qa_response_data.g.dart';

@JsonSerializable(createToJson: false)
class FaqResponseData extends Equatable{

  final int? id;
  final String  question;
  final String  answer;
  final String? link;
  final int? order;
  final int? faqCategoryId;
  final FaqCategoryResponseData? faqCategory;
  bool  isExpanded ;


  FaqResponseData(
      {
        required this.id,
        required this.question,
        required this.answer,
        required this.link,
        required this.order,
        required this.faqCategoryId,
        required this.faqCategory ,
        this.isExpanded = false
      });

  factory FaqResponseData.fromJson(Map<String , dynamic> json) => _$FaqResponseDataFromJson(json);

  @override
  List<Object?> get props => [
    id,
    question,
    answer,
    link,
    order,
    faqCategoryId,
    faqCategory,
    isExpanded
  ];

}

