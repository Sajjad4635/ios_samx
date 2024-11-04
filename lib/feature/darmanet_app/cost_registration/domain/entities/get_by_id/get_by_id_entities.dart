import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_by_id_entities.g.dart';

@JsonSerializable(createToJson: false)
class GetByIdEntities extends Equatable {
  @JsonKey(name: "Type")
  final int type;
  @JsonKey(name: "ParentId")
  final String? parentId;
  @JsonKey(name: "ParentType")
  final int parentType;
  @JsonKey(name: "Value")
  final String? value;
  @JsonKey(name: "Code")
  final int code;
  @JsonKey(name: "Description")
  final String? description;
  @JsonKey(name: "TypeDesc")
  final String? typeDesc;
  @JsonKey(name: "DateInserted")
  final String? dateInserted;
  @JsonKey(name: "CreatorId")
  final String? creatorId;
  @JsonKey(name: "DateModified")
  final String? dateModified;
  @JsonKey(name: "UpdaterId")
  final String? updaterId;
  @JsonKey(name: "IsDeleted")
  final bool isDeleted;
  @JsonKey(name: "DeleteUserID")
  final String? deleteUserID;
  @JsonKey(name: "Id")
  final String? id;


  const GetByIdEntities({
    required this.type,
    required this.parentId,
    required this.parentType,
    required this.value,
    required this.code,
    required this.description,
    required this.typeDesc,
    required this.dateInserted,
    required this.creatorId,
    required this.dateModified,
    required this.updaterId,
    required this.isDeleted,
    required this.deleteUserID,
    required this.id,
  });

  factory GetByIdEntities.fromJson(Map<String, dynamic> json) =>
      _$GetByIdEntitiesFromJson(json);

  @override
  List<Object?> get props => [
    type,
    parentId,
    parentType,
    value,
    code,
    description,
    typeDesc,
    dateInserted,
    creatorId,
    dateModified,
    updaterId,
    isDeleted,
    deleteUserID,
    id,
  ];
}
