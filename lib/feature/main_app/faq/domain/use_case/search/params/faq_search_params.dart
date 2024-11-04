
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_search_params.g.dart';

@JsonSerializable(createFactory: false)
class FaqSearchParams extends Equatable{

  final String queryParam ;

  const FaqSearchParams({required this.queryParam});

  Map<String, dynamic> toJson() => _$FaqSearchParamsToJson(this);

  @override
  List<Object?> get props =>  [queryParam];

}