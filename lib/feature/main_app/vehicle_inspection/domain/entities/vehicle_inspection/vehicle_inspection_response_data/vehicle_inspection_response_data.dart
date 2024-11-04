import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_inspection_response_data.g.dart';


@JsonSerializable(createToJson: false)
class VehicleInspectionResponseData extends Equatable {
  final DateTime createdDatetime;
  final String? fullName;
  final String plateAlphabet;
  final int segment1;
  final int segment2;
  final int region;
  final String? lastStateTitle;
  final String token;
  final String description;

  const VehicleInspectionResponseData({
    required this.createdDatetime,
    required this.fullName,
    required this.plateAlphabet,
    required this.segment1,
    required this.segment2,
    required this.region,
    required this.lastStateTitle,
    required this.token,
    required this.description,
  });

  factory VehicleInspectionResponseData.fromJson(Map<String, dynamic> json) =>
      _$VehicleInspectionResponseDataFromJson(json);

  @override
  List<Object?> get props => [createdDatetime,fullName,plateAlphabet,segment1,segment2,region ,lastStateTitle ,token ,description];


}
