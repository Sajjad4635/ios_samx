import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submit_discontent_attachment.g.dart';

@JsonSerializable(createFactory: false)
class  Attachment extends Equatable {

  @JsonKey(name: 'Content')
  final String content ;
  @JsonKey(name: 'ContentType')
  final String contentType ;
  @JsonKey(name: 'Filename')
  final String fileName ;

  const Attachment({required this.content , required this.contentType, required this.fileName } );

  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  @override
  List<Object?> get props => [content, contentType, fileName];



}