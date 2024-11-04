
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_card_param.g.dart';


@JsonSerializable(createFactory: false)
class RemoveCardParam extends Equatable {
  final String cardId;
  const RemoveCardParam({required this.cardId });

  Map<String, dynamic> toJson() => _$RemoveCardParamToJson(this);

  @override
  List<Object?> get props => [cardId];

}