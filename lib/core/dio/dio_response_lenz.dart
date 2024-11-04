import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_response_lenz.g.dart';

@JsonSerializable(createToJson: false)
class DioResponseLenz extends Equatable {
  final int? code;
  final String message;
  final dynamic data;
  final int totalRecord;
  final int type;

  const DioResponseLenz(
    this.code,
    this.message,
    this.data,
    this.totalRecord,
    this.type,
  );

  factory DioResponseLenz.fromJson(Map<String, dynamic> json) =>
      _$DioResponseLenzFromJson(json);

  @override
  List<Object?> get props => [code, message, data, totalRecord, type];
}
Map<String, dynamic> _dataFromDynamic(dynamic data) => (data is Map<String, dynamic>) ? data : {};


