import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_list_param.g.dart';

@JsonSerializable(createFactory: false)
class FileListParam extends Equatable {
  @JsonKey(name: "CostItemId")
  final String costItemId;
  @JsonKey(name: "Offset")
  final int offset;
  @JsonKey(name: "Limit")
  final int limit;
  @JsonKey(name: "SumFieldName")
  final String sumFieldName;
  @JsonKey(name: "SortField")
  final String? sortField;
  @JsonKey(name: "SortDir")
  final String sortDir;

  const FileListParam({
    required this.costItemId,
    required this.limit,
    required this.offset,
    required this.sortDir,
    required this.sortField,
    required this.sumFieldName,
  });

  Map<String, dynamic> toJson() => _$FileListParamToJson(this);

  @override
  List<Object?> get props => [costItemId, limit, offset, sortDir, sortField, sumFieldName];
}
