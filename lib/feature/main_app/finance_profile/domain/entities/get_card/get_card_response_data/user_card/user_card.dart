import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_card.g.dart';

@JsonSerializable(createToJson: false)
class UserCards extends Equatable {
  final String id;
  final String title;
  final String bankName;
  final String pan;
  final bool isDefault;


  const UserCards(
      {
        required this.id,
        required this.title,
        required this.bankName,
        required this.pan,
        required this.isDefault,
      });

  factory UserCards.fromJson(Map<String, dynamic> json) =>
      _$UserCardsFromJson(json);

  @override
  List<Object?> get props => [id, title , bankName , pan , isDefault];
}
