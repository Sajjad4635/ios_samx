import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_profile_activation_param.g.dart';

@JsonSerializable(createFactory: false)
class GetProfileActivationParam extends Equatable {
  final String birthDate;

  const GetProfileActivationParam({required this.birthDate});

  Map<String, dynamic> toJson() => _$GetProfileActivationParamToJson(this);

  @override
  List<Object?> get props => [birthDate];
}
