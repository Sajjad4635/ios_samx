import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_vehicle_inspection_param.g.dart';

@JsonSerializable(createFactory: false)
class OtherVehicleInspectionParam extends Equatable {
  @JsonKey(name: "Region")
  final String region;

  @JsonKey(name: "segment1")
  final String segment1;

  @JsonKey(name: "segment2")
  final String segment2;

  @JsonKey(name: "fullname")
  final String fullName;

  @JsonKey(name: "phonenumber")
  final String phonenumber;

  @JsonKey(name: "token")
  final String token;

  @JsonKey(name: "platealphabet")
  final String platealphabet;

  final String currentDate ;

  const OtherVehicleInspectionParam({
    required this.currentDate ,
    required this.fullName,
    required this.phonenumber,
    required this.token,
    required this.region,
    required this.segment1,
    required this.segment2,
    required this.platealphabet,
  });

  Map<String, dynamic> toJson() => _$OtherVehicleInspectionParamToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}
