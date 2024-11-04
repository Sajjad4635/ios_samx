import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_dept_param.g.dart';

@JsonSerializable(createFactory: false)
class VehicleDeptParam extends Equatable {

  final int region;
  final String letter;
  final int segment1;
  final int segment2;

  const VehicleDeptParam({required this.region, required this.letter, required this.segment1, required this.segment2});
  Map<String, dynamic> toJson() => _$VehicleDeptParamToJson(this);

  @override

  List<Object?> get props => [region,letter,segment1,segment2];

}