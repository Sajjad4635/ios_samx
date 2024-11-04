import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_response_samx.g.dart';

@JsonSerializable(createToJson: false)
class DioResponseSamX extends Equatable {
  final String code;
  final String message;
  final dynamic data;
  final dynamic details;
  final String? displayMode;
  final dynamic trackingNumber;
  final dynamic traceIdentifier;


  const DioResponseSamX(
      this.code,
      this.message,
      this.data,
      this.details,
      this.displayMode,
      this.trackingNumber,
      this.traceIdentifier,
      );

  factory DioResponseSamX.fromJson(Map<String, dynamic> json) => _$DioResponseSamXFromJson(json);

  @override
  List<Object?> get props => [
    code,
    message,
    data,
    details,
    displayMode,
    trackingNumber,
    traceIdentifier
  ];
}

Map<String, dynamic> _dataFromDynamic(dynamic data) => (data is Map<String, dynamic>) ? data : {};
