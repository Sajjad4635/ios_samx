import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_object_list_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetObjectListResponseData extends Equatable {
  final String? key;
  final String? lastModified;
  final String? eTag;
  final int? size;
  final bool? isDir;
  final dynamic versionId;
  final bool? isLatest;
  final String? lastModifiedDateTime;

  const GetObjectListResponseData(
      {this.key,
      this.lastModified,
      this.eTag,
      this.size,
      this.isDir,
      this.versionId,
      this.isLatest,
      this.lastModifiedDateTime});

  factory GetObjectListResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetObjectListResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        key,
        lastModified,
        eTag,
        size,
        isDir,
        versionId,
        isLatest,
        lastModifiedDateTime
      ];
}
