import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_basic_expertise_response_data.g.dart';

@JsonSerializable(createToJson: false)
class CreateBasicExpertiseResponseData extends Equatable {
  final String? token;
  final String? stateId;
  final String? state;

  const CreateBasicExpertiseResponseData(
      {this.token, this.stateId, this.state});

  factory CreateBasicExpertiseResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$CreateBasicExpertiseResponseDataFromJson(json);

  @override
  List<Object?> get props => [token, stateId, state];
}
