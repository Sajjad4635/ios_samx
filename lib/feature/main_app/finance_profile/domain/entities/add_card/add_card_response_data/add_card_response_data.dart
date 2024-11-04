import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_response_data.g.dart';

@JsonSerializable(createToJson: false)
class AddCardResponseData extends Equatable {
  final String title;
  final String pan;
  final String firstName;
  final String lastName;
  final String bankName;
  final String createDate;

  const AddCardResponseData(
      {required this.title,
      required this.pan,
      required this.firstName,
      required this.lastName,
      required this.bankName,
      required this.createDate});

  factory AddCardResponseData.fromJson(Map<String, dynamic> json) =>
      _$AddCardResponseDataFromJson(json);

  @override
  List<Object?> get props =>
      [title, pan, firstName, lastName, bankName, createDate];
}
