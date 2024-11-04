import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_risk_score_param.g.dart';

@JsonSerializable(createFactory: false)
class GetRiskScoreParam extends Equatable {

  @JsonKey(name: "NationalCode")
  final String nationalCode;
  @JsonKey(name: "BirthDate")
  final String birthDate;

  const GetRiskScoreParam(
      {required this.nationalCode,
      required this.birthDate,
      });

  Map<String, dynamic> toJson() => _$GetRiskScoreParamToJson(this);

  @override
  List<Object?> get props => [nationalCode, birthDate, ];
}
