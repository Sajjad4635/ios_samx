
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_default_param.g.dart';


@JsonSerializable(createFactory: false)
class CardDefaultParam extends Equatable {
  final String cardId;
  const CardDefaultParam({required this.cardId ,});

  Map<String, dynamic> toJson() => _$CardDefaultParamToJson(this);

  @override
  List<Object?> get props => [cardId];

}