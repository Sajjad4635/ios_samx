import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_score_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetScoreResponseData extends Equatable{

  @JsonKey(name: 'tatalScore')
  final double totalScore ;

  @JsonKey(name: 'loyaltyScore')
  final double loyaltyScore  ;

  const GetScoreResponseData({
    required this.totalScore,
    required this.loyaltyScore
  });

  factory GetScoreResponseData.fromJson(Map<String, dynamic> json)=>
      _$GetScoreResponseDataFromJson(json);

  @override
  List<Object?> get props =>  [
    totalScore,
    loyaltyScore
  ];

}