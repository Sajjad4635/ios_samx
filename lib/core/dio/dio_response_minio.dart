import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dio_response_minio.g.dart';

@JsonSerializable(createToJson: false)
class DioResponseMinio extends Equatable {
  final int? code;
  final dynamic message;
  final dynamic data;
  final dynamic byte;

  const DioResponseMinio(  this.code, this.data, this.message  ,this.byte);

  factory DioResponseMinio.fromJson(Map<String, dynamic> json) =>
      _$DioResponseMinioFromJson(json);

  @override
  List<Object?> get props => [code, message, data , ];
}

