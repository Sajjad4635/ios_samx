import 'package:ios_samx/feature/darmanet_app/introduction_tracking/domain/entities/person_voucher_request_list/records/person_voucher_request_list_records.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_voucher_request_list.g.dart';

@JsonSerializable(createToJson: false)
class PersonVoucherRequestListEntities extends Equatable {
  @JsonKey(name: "Total")
  final int total;
  @JsonKey(name: "Records")
  final List<PersonVoucherRequestListRecords> records;
  @JsonKey(name: "Errors")
  final String? errors;
  @JsonKey(name: "SumResults")
  final List sumResults;
  @JsonKey(name: "succeed")
  final bool succeed;

  const PersonVoucherRequestListEntities({
    required this.total,
    required this.records,
    required this.errors,
    required this.succeed,
    required this.sumResults,
  });

  factory PersonVoucherRequestListEntities.fromJson(Map<String, dynamic> json) => _$PersonVoucherRequestListEntitiesFromJson(json);

  @override
  List<Object?> get props => [total, records, errors, sumResults, succeed];
}
