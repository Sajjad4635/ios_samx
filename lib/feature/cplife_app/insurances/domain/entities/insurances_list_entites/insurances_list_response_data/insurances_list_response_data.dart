import 'package:ios_samx/feature/cplife_app/insurances/domain/entities/insurances_list_entites/insurances_list_response_data/items/items.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insurances_list_response_data.g.dart';

@JsonSerializable(createToJson: false)
class InsurancesListResponseData extends Equatable {
  final int currentPage;
  final int pageSize;
  final int totalPages;
  final int totalCount;
  final List<InsurancesListResponseDataItems> items;

  const InsurancesListResponseData({
    required this.currentPage,
    required this.pageSize,
    required this.totalPages,
    required this.totalCount,
    required this.items,
  });

  factory InsurancesListResponseData.fromJson(Map<String, dynamic> json) => _$InsurancesListResponseDataFromJson(json);

  @override
  List<Object?> get props => [
        currentPage,
        pageSize,
        totalPages,
        totalCount,
        items,
      ];
}
