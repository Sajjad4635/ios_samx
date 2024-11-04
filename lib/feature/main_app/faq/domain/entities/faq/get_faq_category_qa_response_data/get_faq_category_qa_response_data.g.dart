// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_faq_category_qa_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqResponseData _$FaqResponseDataFromJson(Map<String, dynamic> json) =>
    FaqResponseData(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String,
      answer: json['answer'] as String,
      link: json['link'] as String?,
      order: (json['order'] as num?)?.toInt(),
      faqCategoryId: (json['faqCategoryId'] as num?)?.toInt(),
      faqCategory: json['faqCategory'] == null
          ? null
          : FaqCategoryResponseData.fromJson(
              json['faqCategory'] as Map<String, dynamic>),
      isExpanded: json['isExpanded'] as bool? ?? false,
    );
