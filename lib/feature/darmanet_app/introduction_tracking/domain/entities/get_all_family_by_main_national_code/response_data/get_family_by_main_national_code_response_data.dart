import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_family_by_main_national_code_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetFamilyByMainNationalCodeResponseData extends Equatable {
  @JsonKey(name: "Disabled")
  final bool disabled;
  @JsonKey(name: "Group")
  final String? group;
  @JsonKey(name: "Selected")
  final bool selected;
  @JsonKey(name: "Text")
  final String text;
  @JsonKey(name: "Value")
  final String value;

  const GetFamilyByMainNationalCodeResponseData({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });

  factory GetFamilyByMainNationalCodeResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetFamilyByMainNationalCodeResponseDataFromJson(json);

  @override
  List<Object?> get props => [disabled, group, selected, text, value];
}
