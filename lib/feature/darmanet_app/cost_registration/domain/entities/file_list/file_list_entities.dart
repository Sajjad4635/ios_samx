import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_list_entities.g.dart';

@JsonSerializable(createToJson: false)
class FileListEntities extends Equatable {
  @JsonKey(name: "Total")
  final int total;
  @JsonKey(name: "Records")
  final List<Records> records;
  @JsonKey(name: "Errors")
  final String? errors;
  @JsonKey(name: "SumResults")
  final List sumResults;
  final bool succeed;

  const FileListEntities({
    required this.total,
    required this.records,
    required this.errors,
    required this.sumResults,
    required this.succeed,
  });

  factory FileListEntities.fromJson(Map<String, dynamic> json) => _$FileListEntitiesFromJson(json);

  @override
  List<Object?> get props => [
        total,
        records,
        errors,
        sumResults,
        succeed,
      ];
}

@JsonSerializable()
class Records extends Equatable {
  @JsonKey(name: "ImageUrl")
  final String imageUrl;
  @JsonKey(name: "Id")
  final String id;
  @JsonKey(name: "NewName")
  final String newName;

  const Records({required this.imageUrl, required this.id, required this.newName,});

  factory Records.fromJson(Map<String, dynamic> json) => _$RecordsFromJson(json);

  @override
  List<Object?> get props => [imageUrl, id, newName,];
}
