import 'package:ios_samx/feature/main_app/finance_profile/domain/entities/get_card/get_card_response_data/user_card/user_card.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_card_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetCardResponseData extends Equatable {
  final List<UserCards> userCards;

  const GetCardResponseData({required this.userCards});

  factory GetCardResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetCardResponseDataFromJson(json);

  @override
  List<Object?> get props => [userCards];
}
