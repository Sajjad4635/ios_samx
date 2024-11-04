
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_samx/feature/otrs_app/domain/usecase/confirm/params/article/attachment/ticketing_confirm_attachment.dart';

part 'ticketing_confirm_article.g.dart';

@JsonSerializable(createFactory: false)
class Article  extends Equatable {
  
  @JsonKey(name: 'ArticleTypeID')
  final int articleTypeID ;

  @JsonKey(name: 'Subject')
  final String subject ;

  @JsonKey(name: 'SenderTypeID')
  final int senderTypeID ;

  @JsonKey(name: 'Body')
  final String body ;

  @JsonKey(name: 'ContentType')
  final String contentType ;

  @JsonKey(name: 'Charset')
  final String charset ;

  @JsonKey(name: 'MimeType')
  final String mimeType ;

  @JsonKey(name: 'From')
  final String from ;

  @JsonKey(name: 'Attachment')
  final Attachment attachment ;

  const Article({

    required this.articleTypeID,
    required this.subject,
    required this.senderTypeID,
    required this.body,
    required this.contentType,
    required this.charset,
    required this.mimeType,
    required this.from,
    required this.attachment

  });

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
  @override
  // TODO: implement props
  List<Object?> get props =>  [
    articleTypeID,
    subject,
    senderTypeID,
    body,
    contentType,
    charset,
    mimeType,
    from,
    attachment];



}