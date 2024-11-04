import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expertise_status_param.g.dart';

@JsonSerializable(createFactory: false)
class ExpertiseStatusParam extends Equatable {
  @JsonKey(name: "ChannelId")
  final String channelId;

  @JsonKey(name: "Token")
  final String token;

  const ExpertiseStatusParam({required this.channelId, required this.token});

  Map<String, dynamic> toJson() => _$ExpertiseStatusParamToJson(this);

  @override
  List<Object?> get props => [channelId, token];
}
