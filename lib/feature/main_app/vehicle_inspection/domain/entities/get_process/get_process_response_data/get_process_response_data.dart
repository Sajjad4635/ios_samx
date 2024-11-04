import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_process_response_data.g.dart';

@JsonSerializable(createToJson: false)
class GetProcessResponseData extends Equatable {
  final int? id;
  final String? title;
  final dynamic parentId;
  final dynamic parentTitle;
  final int? orderNo;
  final dynamic required;

  const GetProcessResponseData(
      {this.id,
      this.title,
      this.parentId,
      this.parentTitle,
      this.orderNo,
      this.required});

  factory GetProcessResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetProcessResponseDataFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, parentId, parentTitle, orderNo, required];
}
