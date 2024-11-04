
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_card_title_param.g.dart';


@JsonSerializable(createFactory: false)
class UpdateCardTitleParam extends Equatable {
  final String cardId;
  final String title;
  const UpdateCardTitleParam({required this.cardId , required this.title});

  Map<String, dynamic> toJson() => _$UpdateCardTitleParamToJson(this);

  @override
  List<Object?> get props => [cardId , title];

}