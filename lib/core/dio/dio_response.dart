import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_response.g.dart';


@JsonSerializable(createToJson: false)
class DioResponse extends Equatable {
  final int code;
  final List<dynamic> message;
  final dynamic data;

  const DioResponse(
    this.code,
    this.message,
    this.data,
  );

  factory DioResponse.fromJson(Map<String, dynamic> json) => _$DioResponseFromJson(json);

  @override
  List<Object?> get props => [
        code,
        message,
        data,
      ];
}

Map<String, dynamic> _dataFromDynamic(dynamic data) => (data is Map<String, dynamic>) ? data : {};
