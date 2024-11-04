import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relative_item_data.g.dart';

@JsonSerializable(createToJson: false)
class RelativeItemData extends Equatable {
  final String id;
  final String relativeTitle;
  final String relativeNationalCode;
  final String relativeFirstName;
  final String relativeLastName;
  final String relativeFatherName;
  final String genderKey;

  const RelativeItemData({
    required this.id,
    required this.relativeTitle,
    required this.relativeNationalCode,
    required this.relativeFirstName,
    required this.relativeLastName,
    required this.relativeFatherName,
    required this.genderKey,
  });

  factory RelativeItemData.fromJson(Map<String, dynamic> json) =>
      _$RelativeItemDataFromJson(json);

  @override
  List<Object?> get props => [
        id,
        relativeTitle,
        relativeNationalCode,
        relativeFirstName,
        relativeLastName,
        relativeFatherName,
        genderKey,
      ];
}
