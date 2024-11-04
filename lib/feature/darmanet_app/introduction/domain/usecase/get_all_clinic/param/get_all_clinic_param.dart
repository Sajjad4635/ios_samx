import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_clinic_param.g.dart';

@JsonSerializable(createFactory: false)
class GetAllClinicParam extends Equatable {
  @JsonKey(name: "Deactive")
  final int deactive;
  @JsonKey(name: "CheckContractDate")
  final bool checkContractDate;
  @JsonKey(name: "ExcludeSnapp")
  final bool excludeSnapp;
  @JsonKey(name: "Offset")
  final int offset;
  @JsonKey(name: "Limit")
  final int limit;
  @JsonKey(name: "VoucherType")
  final int voucherType;
  @JsonKey(name: "CityId")
  final String cityId;

  const GetAllClinicParam({
    required this.deactive,
    required this.checkContractDate,
    required this.excludeSnapp,
    required this.limit,
    required this.offset,
    required this.cityId,
    required this.voucherType,
  });

  Map<String, dynamic> toJson() => _$GetAllClinicParamToJson(this);

  @override
  List<Object?> get props => [
        deactive,
        checkContractDate,
        excludeSnapp,
        offset,
        limit,
        cityId,
        voucherType,
      ];
}
