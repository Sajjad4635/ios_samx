
import 'package:ios_samx/core/dio/dio_response_samx.dart';
import 'package:equatable/equatable.dart';
import 'get_faq_category_qa_response_data/get_faq_category_qa_response_data.dart';

class FaqEntity extends Equatable {

  final DioResponseSamX dioResponseSamX;
  late final List<FaqResponseData> getFAQResponseData = [];

  FaqEntity({required this.dioResponseSamX}) {
    for(var element in dioResponseSamX.data){
      getFAQResponseData.add(FaqResponseData.fromJson(element));
    }
   // getFAQResponseData = GetFAQResponseData.fromJson(dioResponse.data!);
  }

  @override
  List<Object?> get props => [getFAQResponseData];
}
