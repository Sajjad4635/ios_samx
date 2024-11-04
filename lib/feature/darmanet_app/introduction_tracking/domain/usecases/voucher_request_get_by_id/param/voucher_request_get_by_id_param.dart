import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'voucher_request_get_by_id_param.g.dart';

@JsonSerializable(createFactory: false)
class VoucherRequestGetByIdParam extends Equatable {
  @JsonKey(name: "Id")
  final String id;

  const VoucherRequestGetByIdParam({required this.id});

  Map<String, dynamic> toJson() => _$VoucherRequestGetByIdParamToJson(this);
  
  @override
  List<Object?> get props => [id];
}
