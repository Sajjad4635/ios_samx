import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_clinic_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetAllClinicCitiesResponseData extends Equatable {
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

  const GetAllClinicCitiesResponseData({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });

  factory GetAllClinicCitiesResponseData.fromJson(json) => _$GetAllClinicCitiesResponseDataFromJson(json);

  @override
  List<Object?> get props => [];
}
