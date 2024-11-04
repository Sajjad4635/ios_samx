import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_envelope_send_info_param.g.dart';

@JsonSerializable(createFactory: false)
class GetEnvelopeSendInfoParam extends Equatable {
  final String id;

  const GetEnvelopeSendInfoParam({
    required this.id
  });

  Map<String, dynamic> toJson() => _$GetEnvelopeSendInfoParamToJson(this);

  @override
  List<Object?> get props => [
        id
      ];
}
