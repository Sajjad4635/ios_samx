import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/article/submit_discontent_article.dart';
import 'package:ios_samx/feature/darmanet_app/submit_discontent/domain/usecase/params/ticket/submit_discontent_ticket.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'submit_discontent_params.g.dart';

@JsonSerializable(createFactory: false)
class SubmitDiscontentParams extends Equatable {

  @JsonKey(name: 'SessionID')
  final String sessionId;

  @JsonKey(name: 'Ticket')
  final Ticket ticket;

  @JsonKey(name: 'Article')
  final Article article;

  const SubmitDiscontentParams(
      {required this.sessionId, required this.ticket, required this.article});

  Map<String, dynamic> toJson(){
    return _$SubmitDiscontentParamsToJson(this);
  }

  @override
  List<Object?> get props => [sessionId, ticket, article];
}
