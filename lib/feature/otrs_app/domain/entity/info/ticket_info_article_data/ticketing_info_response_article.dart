import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticketing_info_response_article.g.dart';

@JsonSerializable()
class TicketingInfoResponseArticle extends Equatable {

  @JsonKey(name: 'Body')
  final String body;
  @JsonKey(name: 'From')
  final String from;
  @JsonKey(name: 'To')
  final String to;
  @JsonKey(name: 'Subject')
  final String subject;
  @JsonKey(name: 'CreateTime')
  final String createTime;

  const TicketingInfoResponseArticle(
      { required this.body,
        required this.from,
        required this.to,
        required this.subject,
        required this.createTime
      });


  factory TicketingInfoResponseArticle.fromJson(Map<String, dynamic> json) =>
      _$TicketingInfoResponseArticleFromJson(json);

  @override
  List<Object?> get props => [body, from, to, subject, createTime];
}
