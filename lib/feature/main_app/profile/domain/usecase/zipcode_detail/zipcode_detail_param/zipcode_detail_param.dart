import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcode_detail_param.g.dart';

@JsonSerializable(createFactory: false)
class ZipcodeDetailParam extends Equatable {
  @JsonKey(name: "zipCode")
  final String zipCode;

  const ZipcodeDetailParam({required this.zipCode});

  Map<String, dynamic> toJson() => _$ZipcodeDetailParamToJson(this);

  @override
  List<Object?> get props => [zipCode];
}
