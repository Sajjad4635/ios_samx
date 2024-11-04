import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_response_unitlinked.g.dart';

@JsonSerializable(createToJson: false)
class DioResponseUnitLinked extends Equatable {
  final String? code;
  final List<dynamic> messages;
  final dynamic data;

  const DioResponseUnitLinked(
    this.code,
    this.messages,
    this.data,
  );

  factory DioResponseUnitLinked.fromJson(Map<String, dynamic> json) => _$DioResponseUnitLinkedFromJson(json);

  @override
  List<Object?> get props => [
        code,
        messages,
        data,
      ];
}

Map<String, dynamic> _dataFromDynamic(dynamic data) => (data is Map<String, dynamic>) ? data : {};
