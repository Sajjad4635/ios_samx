import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_inspection_param.g.dart';

@JsonSerializable(createFactory: false)
class VehicleInspectionParam extends Equatable {
  @JsonKey(name: "Phonenumber")
  final String phoneNumber;

  @JsonKey(name: "Token")
  final String token;

  const VehicleInspectionParam(
      {required this.phoneNumber, required this.token});

  Map<String, dynamic> toJson() => _$VehicleInspectionParamToJson(this);

  @override
  List<Object?> get props => [phoneNumber, token];
}
