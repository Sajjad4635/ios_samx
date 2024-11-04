import 'package:ios_samx/feature/main_app/relatives/domain/entities/relatives_list/relatives_list_response_data/relative/relative.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'relative_list_response_data.g.dart';

@JsonSerializable(createToJson: false)
class RelativeListResponseData extends Equatable {
  final int currentPage;
  final int pageSize;
  final int totalPages;
  final int totalCount;
  final List<Relative> items;

  const RelativeListResponseData({
    required this.currentPage,
    required this.pageSize,
    required this.totalPages,
    required this.totalCount,
    required this.items,
  });

  factory RelativeListResponseData.fromJson(Map<String, dynamic> json) => _$RelativeListResponseDataFromJson(json);

  @override
  List<Object?> get props => [
    currentPage,
    pageSize,
    totalPages,
    totalCount,
    items,
  ];
}
