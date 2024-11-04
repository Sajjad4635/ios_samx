import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_basic_expertise_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateBasicExpertiseParam extends Equatable {
  final String region;
  final String segment1;
  final String segment2;
  final String plateAlphabet;
  final String fullName;
  final String phoneNumber;
  final String channelId;

  const CreateBasicExpertiseParam(
      {required this.region,
      required this.segment1,
      required this.segment2,
      required this.plateAlphabet,
      required this.fullName,
      required this.phoneNumber,
      required this.channelId});

  Map<String, dynamic> toJson() => _$CreateBasicExpertiseParamToJson(this);

  @override
  List<Object?> get props => [
        region,
        segment1,
        segment2,
        plateAlphabet,
        fullName,
        phoneNumber,
        channelId
      ];
}
