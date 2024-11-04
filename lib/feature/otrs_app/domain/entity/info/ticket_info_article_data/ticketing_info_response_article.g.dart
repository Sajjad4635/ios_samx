// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticketing_info_response_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketingInfoResponseArticle _$TicketingInfoResponseArticleFromJson(
        Map<String, dynamic> json) =>
    TicketingInfoResponseArticle(
      body: json['Body'] as String,
      from: json['From'] as String,
      to: json['To'] as String,
      subject: json['Subject'] as String,
      createTime: json['CreateTime'] as String,
    );

Map<String, dynamic> _$TicketingInfoResponseArticleToJson(
        TicketingInfoResponseArticle instance) =>
    <String, dynamic>{
      'Body': instance.body,
      'From': instance.from,
      'To': instance.to,
      'Subject': instance.subject,
      'CreateTime': instance.createTime,
    };
