import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_process_param.g.dart';

@JsonSerializable(createFactory: false)
class GetProcessParam extends Equatable {
  @JsonKey(name: "ChannelId")
  final String channelId;

  const GetProcessParam({required this.channelId});

  Map<String, dynamic> toJson() => _$GetProcessParamToJson(this);

  @override
  List<Object?> get props => [channelId];
}
