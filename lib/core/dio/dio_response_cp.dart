import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dio_response_cp.g.dart';

@JsonSerializable(createToJson: false)
class DioResponseCPLife extends Equatable {
  final int? code;
  final String errorMessage;
  final dynamic data;

  const DioResponseCPLife(
    this.code,
    this.errorMessage,
    this.data,
  );

  factory DioResponseCPLife.fromJson(Map<String, dynamic> json) => _$DioResponseCPLifeFromJson(json);

  @override
  List<Object?> get props => [
        code,
        errorMessage,
        data,
      ];
}

Map<String, dynamic> _dataFromDynamic(dynamic data) => (data is Map<String, dynamic>) ? data : {};
