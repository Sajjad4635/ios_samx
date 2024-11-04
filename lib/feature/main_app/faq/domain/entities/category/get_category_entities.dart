import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'get_category_response_data/get_category_response_data.dart';

@JsonSerializable(createToJson: false)
class GetCategoryEntities extends Equatable {
  final DioResponseSamX dioResponse;
  late final List<FaqCategoryResponseData> getCategoryResponseData = [];

  GetCategoryEntities({required this.dioResponse}) {
 //   getCategoryResponseData = (GetCategoryResponseData.fromJson(dioResponse.data));
    for (var element in dioResponse.data) {
      getCategoryResponseData.add(FaqCategoryResponseData.fromJson(element));
    }


  }

  @override
  List<Object?> get props => [dioResponse, getCategoryResponseData];
}
