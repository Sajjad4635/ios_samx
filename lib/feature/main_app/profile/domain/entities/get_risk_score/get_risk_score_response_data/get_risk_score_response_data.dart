import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_risk_score_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetRiskScoreResponseData extends Equatable {
  @JsonKey(name: 'safetyScore')
  final double? safetyScore;

  @JsonKey(name: 'lastInquiryDate')
  final String? lastInquiryDate;

  @JsonKey(name: 'trackingCode')
  final int? trackingCode;

  const GetRiskScoreResponseData(
      this.trackingCode, this.safetyScore, this.lastInquiryDate);

  factory GetRiskScoreResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetRiskScoreResponseDataFromJson(json);

  @override
  List<Object?> get props => [safetyScore, lastInquiryDate, lastInquiryDate];
}
