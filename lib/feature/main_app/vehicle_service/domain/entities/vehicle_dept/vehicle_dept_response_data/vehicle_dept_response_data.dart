import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_dept_response_data.g.dart';

@JsonSerializable(createToJson: false)
class VehicleDeptResponseData extends Equatable {

  @JsonKey(name : "totalAmount")
  final int? totalAmount;

  @JsonKey(name : "operationTime")
  final DateTime? operationTime;

  const VehicleDeptResponseData({this.totalAmount,this.operationTime});

  factory VehicleDeptResponseData.fromJson(Map<String, dynamic> json) => _$VehicleDeptResponseDataFromJson(json);

  @override
  List<Object?> get props => [totalAmount,operationTime];



}

