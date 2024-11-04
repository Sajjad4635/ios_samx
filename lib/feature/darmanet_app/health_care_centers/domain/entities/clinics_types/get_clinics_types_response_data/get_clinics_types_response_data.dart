import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_clinics_types_response_data.g.dart' ;

@JsonSerializable(createToJson: false)
class GetClinicsTypesResponseData extends Equatable {

  @JsonKey(name: "Disabled")
  final bool disable;

  @JsonKey(name: 'Group')
  final String? group;

  @JsonKey(name: 'Selected')
  final bool selected;

  @JsonKey(name: 'Text')
  final String text;

  @JsonKey(name: 'Value')
  final String value;

  const GetClinicsTypesResponseData(
      {required this.disable,
      required this.group,
      required this.selected,
      required this.text,
      required this.value});

/*  factory GetClinicsTypesResponseData.fromJson(Map<String, dynamic> json) {
    return GetClinicsTypesResponseData(
        value: json['value'],
        text: json['text'],
        disable: json['disable'],
        group: json['group'],
        selected: json['selected']);
  }*/

  //  factory GetClinicsTypeResponseData.fromJson(Map<String, dynamic> json)  = _$GetClinicsTypeResponseDataFromJson(json) ;

  factory GetClinicsTypesResponseData.fromJson(Map<String, dynamic> json) => _$GetClinicsTypesResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        disable,
        group,
        selected,
        text,
        value,
      ];
}


