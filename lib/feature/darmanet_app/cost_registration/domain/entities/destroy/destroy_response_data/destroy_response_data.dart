import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'destroy_response_data.g.dart';

@JsonSerializable(createToJson: false)
class DestroyResponseData extends Equatable {
  final bool succeed;

  const DestroyResponseData({required this.succeed});

  factory DestroyResponseData.fromJson(Map<String, dynamic> json) =>
      _$DestroyResponseDataFromJson(json);

  @override
  List<Object?> get props => [succeed];
}
